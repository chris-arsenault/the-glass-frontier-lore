#!/usr/bin/env python3
"""Lore wiki linter. Enforces structural cohesion across entries and indexes."""

import re
import sys
from pathlib import Path

ROOT = Path(__file__).parent

# Files that are meta/infrastructure, not lore entries
META_FILES = {
    "CLAUDE.md", "index.md", "tags.md", "timeline.md", "lint.py", "Makefile",
}

# Map type field values to expected directory prefixes
TYPE_DIR_MAP = {
    "location": "locations",
    "faction": "npcs",
    "npc": "npcs",
    "artifact": "artifacts",
    "creature": "creatures",
    "ship": "ships",
    "event": "history",
    "era": "history",
    "concept": ("concepts", "cosmology"),
}


def parse_frontmatter(path: Path) -> dict | None:
    """Extract YAML frontmatter as a dict. Returns None if no frontmatter."""
    text = path.read_text()
    m = re.match(r"^---\n(.*?\n)---", text, re.DOTALL)
    if not m:
        return None
    fm = {}
    for line in m.group(1).splitlines():
        # Handle simple key: value and key: [list, items]
        kv = re.match(r"^(\w[\w-]*):\s*(.*)", line)
        if kv:
            key, val = kv.group(1), kv.group(2).strip()
            # Parse YAML lists: [a, b, c]
            list_match = re.match(r"^\[(.*)\]$", val)
            if list_match:
                items = [x.strip().strip("'\"") for x in list_match.group(1).split(",") if x.strip()]
                fm[key] = items
            else:
                fm[key] = val.strip("'\"")
    return fm


def parse_taxonomy(tags_path: Path) -> set[str]:
    """Extract all defined tags from tags.md table rows."""
    tags = set()
    text = tags_path.read_text()
    for line in text.splitlines():
        m = re.match(r"^\|\s*`([^`]+)`\s*\|", line)
        if m:
            tags.add(m.group(1))
    return tags


def parse_index_entries(index_path: Path) -> list[dict]:
    """Extract table rows from a type index.md file."""
    entries = []
    text = index_path.read_text()
    for line in text.splitlines():
        # Match table rows: | Entry | Path | Status | Tags | Notes |
        # Skip header and separator rows
        if line.startswith("|") and not re.match(r"^\|[\s-]+\|", line) and "Entry" not in line:
            cols = [c.strip() for c in line.strip("|").split("|")]
            if len(cols) >= 4:
                entry_name = cols[0].strip()
                path_cell = cols[1].strip()
                status = cols[2].strip()
                tags_cell = cols[3].strip()

                # Extract path from markdown link or "—"
                link_match = re.search(r"\[.*?\]\((.*?)\)", path_cell)
                path = link_match.group(1) if link_match else None

                entries.append({
                    "name": entry_name,
                    "path": path,
                    "status": status,
                    "tags": [t.strip() for t in tags_cell.split(",") if t.strip()],
                    "source": index_path,
                })
    return entries


def collect_content_files() -> list[Path]:
    """Find all .md files that are lore entries (not meta files)."""
    files = []
    for p in ROOT.rglob("*.md"):
        rel = p.relative_to(ROOT)
        if rel.name in META_FILES:
            continue
        if rel.name == "index.md":
            continue
        if str(rel).startswith("."):
            continue
        files.append(p)
    return files


def collect_all_known_slugs(index_entries: list[dict], content_files: list[Path]) -> set[str]:
    """Build set of all known entity slugs (from files and shell entries)."""
    slugs = set()
    for f in content_files:
        slugs.add(f.stem)
    for e in index_entries:
        # Slugify the entry name for shell entries
        slug = re.sub(r"[^a-z0-9]+", "-", e["name"].lower()).strip("-")
        # Also try extracting from path
        if e["path"]:
            slugs.add(Path(e["path"]).stem)
        slugs.add(slug)
    return slugs


def collect_markdown_links(path: Path) -> list[tuple[str, str]]:
    """Extract (link_text, link_target) from markdown links in a file."""
    text = path.read_text()
    # Skip frontmatter
    text = re.sub(r"^---\n.*?\n---\n?", "", text, flags=re.DOTALL)
    # Strip fenced code blocks (examples in CLAUDE.md etc.)
    text = re.sub(r"```.*?```", "", text, flags=re.DOTALL)
    return re.findall(r"\[([^\]]*)\]\(([^)]+)\)", text)


def main():
    errors = []
    warnings = []

    def error(msg: str):
        errors.append(f"ERROR: {msg}")

    def warn(msg: str):
        warnings.append(f"WARN:  {msg}")

    # --- Load taxonomy ---
    tags_path = ROOT / "tags.md"
    if not tags_path.exists():
        error("tags.md not found")
        return 1
    valid_tags = parse_taxonomy(tags_path)

    # --- Collect content files ---
    content_files = collect_content_files()

    # --- Collect all index entries ---
    all_index_entries = []
    index_files = list(ROOT.rglob("**/index.md"))
    index_files = [f for f in index_files if f.relative_to(ROOT).name == "index.md"
                   and f != ROOT / "index.md"]
    for idx in index_files:
        all_index_entries.extend(parse_index_entries(idx))

    # --- Build slug registry ---
    known_slugs = collect_all_known_slugs(all_index_entries, content_files)

    # --- Check each content file ---
    for path in content_files:
        rel = path.relative_to(ROOT)
        fm = parse_frontmatter(path)

        # 1. Required frontmatter
        if fm is None:
            error(f"{rel}: missing frontmatter")
            continue
        if "title" not in fm:
            error(f"{rel}: missing required field 'title'")
        if "type" not in fm:
            error(f"{rel}: missing required field 'type'")

        # 2. Tag validation
        tags = fm.get("tags", [])
        if isinstance(tags, str):
            tags = [tags]
        for tag in tags:
            if tag not in valid_tags:
                error(f"{rel}: tag '{tag}' not in tags.md taxonomy — add it there first or use an existing tag")

        # 3. Relationship validation
        related = fm.get("related", [])
        if isinstance(related, str):
            related = [related]
        for slug in related:
            if slug not in known_slugs:
                warn(f"{rel}: related slug '{slug}' does not match any known entity (file or shell)")

        # 4. Type-directory alignment
        entry_type = fm.get("type", "")
        expected_dirs = TYPE_DIR_MAP.get(entry_type)
        if expected_dirs:
            if isinstance(expected_dirs, str):
                expected_dirs = (expected_dirs,)
            rel_parts = rel.parts
            if rel_parts[0] not in expected_dirs:
                error(f"{rel}: type '{entry_type}' should be in {'/'.join(expected_dirs)}/ but is in '{rel_parts[0]}/'")
        elif entry_type and entry_type not in TYPE_DIR_MAP:
            warn(f"{rel}: type '{entry_type}' has no expected directory mapping")

    # --- 5. Index coverage: every content file should appear in its type index ---
    indexed_paths = set()
    for e in all_index_entries:
        if e["path"]:
            # Resolve relative to the index file's parent
            resolved = (e["source"].parent / e["path"]).resolve()
            indexed_paths.add(resolved)

    for path in content_files:
        if path.resolve() not in indexed_paths:
            # Check if it's a cosmology file (those are in the top-level index, not a type index)
            rel = path.relative_to(ROOT)
            if rel.parts[0] == "cosmology":
                continue
            warn(f"{rel}: not listed in any type index")

    # --- 6. Shell consistency: shells shouldn't have files ---
    for e in all_index_entries:
        if e["status"] == "shell" and e["path"]:
            warn(f"index entry '{e['name']}' is marked shell but has a file path: {e['path']}")
        if e["status"] in ("complete", "draft") and not e["path"]:
            error(f"index entry '{e['name']}' is marked {e['status']} but has no file path")

    # --- 7. Tag validation in index shell entries ---
    for e in all_index_entries:
        for tag in e["tags"]:
            if tag not in valid_tags:
                error(f"index '{e['source'].relative_to(ROOT)}' entry '{e['name']}': tag '{tag}' not in tags.md taxonomy")

    # --- 8. Dead links ---
    all_md_files = list(ROOT.rglob("*.md"))
    for path in all_md_files:
        rel = path.relative_to(ROOT)
        if str(rel).startswith("."):
            continue
        for link_text, link_target in collect_markdown_links(path):
            # Skip external links
            if link_target.startswith(("http://", "https://", "#")):
                continue
            # Resolve relative to the file's directory
            target_path = (path.parent / link_target).resolve()
            if not target_path.exists():
                error(f"{rel}: dead link [{link_text}]({link_target})")

    # --- 9. Index tags column: check for entity references that should be relationships ---
    # Heuristic: if a tag matches a known entity slug, it's probably a relationship, not a tag
    for e in all_index_entries:
        for tag in e["tags"]:
            if tag in known_slugs and tag not in valid_tags:
                warn(f"index entry '{e['name']}': tag '{tag}' looks like an entity reference, not a topic tag")

    # --- 10. Future markers: [future:Name] in prose ---
    future_markers = []
    for path in all_md_files:
        rel = path.relative_to(ROOT)
        if str(rel).startswith("."):
            continue
        text = path.read_text()
        # Strip fenced code blocks
        text_no_code = re.sub(r"```.*?```", "", text, flags=re.DOTALL)
        for m in re.finditer(r"\[future:([^\]]+)\]", text_no_code):
            future_markers.append((rel, m.group(1).strip()))
            warn(f"{rel}: future reference '{m.group(1).strip()}' — no entry yet")

    # --- Report ---
    for w in sorted(warnings):
        print(w)
    for e in sorted(errors):
        print(e)

    total = len(errors) + len(warnings)
    print(f"\n{'─' * 40}")
    print(f"  {len(errors)} error(s), {len(warnings)} warning(s)")
    if errors:
        print(f"  Lint FAILED")
    else:
        print(f"  Lint passed{' (with warnings)' if warnings else ''}")
    print(f"{'─' * 40}")

    return 1 if errors else 0


if __name__ == "__main__":
    sys.exit(main())
