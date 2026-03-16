#!/usr/bin/env python3
"""Lore wiki linter. Enforces structural cohesion across entries and indexes."""

import re
import sys
from pathlib import Path

ROOT = Path(__file__).parent
PLAYER_DIR = ROOT / "player"

# Files that are meta/infrastructure, not lore entries
META_FILES = {
    "CLAUDE.md", "index.md", "tags.md", "timeline.md", "causality.md",
    "lint.py", "wiki_gen.py", "Makefile",
    "README.md", "LICENSE.md",
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
    "dm": "dm",
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
    """Extract table rows from a type index.md file.

    Detects column layout from header rows. Supports multiple table sections
    per file (e.g. Factions, Heroes, Monsters each with their own headers).
    """
    entries = []
    text = index_path.read_text()
    lines = text.splitlines()

    col_map: dict[str, int] = {}

    for line in lines:
        if not line.startswith("|"):
            continue
        # Separator row
        if re.match(r"^\|[\s-]+\|", line):
            continue
        # Header row — update column mapping
        if "Entry" in line:
            headers = [h.strip().lower() for h in line.strip("|").split("|")]
            col_map = {h: idx for idx, h in enumerate(headers)}
            continue
        # Data row — use current column mapping
        if not col_map:
            continue

        cols = [c.strip() for c in line.strip("|").split("|")]

        entry_col = col_map.get("entry", 0)
        path_col = col_map.get("path")
        status_col = col_map.get("status")
        tags_col = col_map.get("tags")

        entry_name = cols[entry_col].strip() if entry_col < len(cols) else ""
        path_cell = cols[path_col].strip() if path_col is not None and path_col < len(cols) else "—"
        status = cols[status_col].strip() if status_col is not None and status_col < len(cols) else ""
        tags_cell = cols[tags_col].strip() if tags_col is not None and tags_col < len(cols) else ""

        if not entry_name:
            continue

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


SKIP_DIRS = {"wiki_out", ".git", ".github", "review-guidance", "work-tracking"}
# DM files are linted for structure but exempt from prominence cross-ref checks
DM_DIR = "dm"

# Content directories inside player/ that contain lore entries
LORE_DIRS = {"concepts", "cosmology", "locations", "npcs", "history", "artifacts", "creatures", "ships"}


def collect_content_files() -> list[Path]:
    """Find all .md files that are lore entries (not meta files).

    Lore entries live under player/ and dm/.
    """
    files = []
    # Scan player/ subtree for lore entries
    for p in PLAYER_DIR.rglob("*.md"):
        rel = p.relative_to(ROOT)
        if rel.name in META_FILES:
            continue
        if rel.name == "index.md":
            continue
        files.append(p)
    # Scan dm/ subtree for DM entries
    dm_dir = ROOT / DM_DIR
    if dm_dir.is_dir():
        for p in dm_dir.rglob("*.md"):
            if p.name in META_FILES:
                continue
            if p.name == "index.md":
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
    futures = []

    def error(msg: str):
        errors.append(f"ERROR:  {msg}")

    def warn(msg: str):
        warnings.append(f"WARN:   {msg}")

    def future(msg: str):
        futures.append(f"FUTURE: {msg}")

    # --- Load taxonomy ---
    tags_path = PLAYER_DIR / "tags.md"
    if not tags_path.exists():
        error("tags.md not found")
        return 1
    valid_tags = parse_taxonomy(tags_path)

    # --- Collect content files ---
    content_files = collect_content_files()

    # --- Collect all index entries ---
    all_index_entries = []
    index_files = list(PLAYER_DIR.rglob("**/index.md"))
    # Exclude the top-level player/index.md — only per-type indexes
    index_files = [f for f in index_files if f != PLAYER_DIR / "index.md"]
    # Also include dm/index.md if it exists
    dm_index = ROOT / DM_DIR / "index.md"
    if dm_index.exists():
        index_files.append(dm_index)
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
                future(f"{rel}: related slug '{slug}' — no matching entity")

        # 4. Type-directory alignment
        entry_type = fm.get("type", "")
        expected_dirs = TYPE_DIR_MAP.get(entry_type)
        if expected_dirs:
            if isinstance(expected_dirs, str):
                expected_dirs = (expected_dirs,)
            rel_parts = rel.parts
            # Lore files live under player/<type_dir>/..., dm files under dm/...
            if rel_parts[0] == "player" and len(rel_parts) > 1:
                actual_dir = rel_parts[1]
            else:
                actual_dir = rel_parts[0]
            if actual_dir not in expected_dirs:
                error(f"{rel}: type '{entry_type}' should be in {'/'.join(expected_dirs)}/ but is in '{actual_dir}/'")
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
            rel = path.relative_to(ROOT)
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
    all_md_files = [p for p in ROOT.rglob("*.md")
                    if p.relative_to(ROOT).parts[0] not in SKIP_DIRS]
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

    # --- 10. DM leakage in player entries ---
    DM_LEAKAGE_PHRASES = [
        "technically true", "in truth", "what they don't know",
        "the real reason", "the truth is", "in reality",
        "what really happened", "secretly", "unbeknownst",
    ]
    for path in content_files:
        rel = path.relative_to(ROOT)
        if rel.parts[0] != "player":
            continue
        text = path.read_text().lower()
        text = re.sub(r"```.*?```", "", text, flags=re.DOTALL)
        for phrase in DM_LEAKAGE_PHRASES:
            if phrase in text:
                error(f"{rel}: possible DM leakage — contains phrase '{phrase}'")

    # --- 11. Future markers: [future:Name] in prose ---
    future_markers = []
    for path in all_md_files:
        rel = path.relative_to(ROOT)
        if str(rel).startswith("."):
            continue
        if rel.name in META_FILES:
            continue
        text = path.read_text()
        # Strip fenced code blocks
        text_no_code = re.sub(r"```.*?```", "", text, flags=re.DOTALL)
        for m in re.finditer(r"\[future:([^\]]+)\]", text_no_code):
            future_markers.append((rel, m.group(1).strip()))
            future(f"{rel}: '{m.group(1).strip()}' — no entry yet")

    # --- 11. Prominence cross-reference check ---
    # High-prominence files (mythic/renowned) should not reference low-prominence entities
    PROMINENCE_RANK = {"forgotten": 0, "marginal": 1, "recognized": 2, "renowned": 3, "mythic": 4}
    HIGH_THRESHOLD = PROMINENCE_RANK["renowned"]  # renowned and above are "high"

    # Build path -> prominence map from content files
    path_to_prominence: dict[str, str] = {}
    for path in content_files:
        rel_str = str(path.relative_to(ROOT))
        fm = parse_frontmatter(path)
        if fm and "prominence" in fm:
            path_to_prominence[rel_str] = fm["prominence"]

    # Also map resolved paths for link targets
    resolved_to_prominence: dict[str, str] = {}
    for path in content_files:
        fm = parse_frontmatter(path)
        if fm and "prominence" in fm:
            resolved_to_prominence[str(path.resolve())] = fm["prominence"]

    for path in content_files:
        rel = path.relative_to(ROOT)
        fm = parse_frontmatter(path)
        if not fm:
            continue
        # Registry docs (species list, cultures list) catalogue all entities — skip prominence check
        if fm.get("registry") == "true":
            continue
        source_prom = fm.get("prominence", "")
        if source_prom not in PROMINENCE_RANK:
            continue
        if PROMINENCE_RANK[source_prom] < HIGH_THRESHOLD:
            continue  # Only check high-prominence sources

        for link_text, link_target in collect_markdown_links(path):
            if link_target.startswith(("http://", "https://", "#")):
                continue
            target_resolved = str((path.parent / link_target).resolve())
            target_prom = resolved_to_prominence.get(target_resolved)
            if target_prom and PROMINENCE_RANK.get(target_prom, 5) < HIGH_THRESHOLD:
                warn(f"{rel}: {source_prom}-prominence entry links to "
                     f"'{link_text}' which is {target_prom}-prominence")

    # --- Report ---
    for f in sorted(futures):
        print(f)
    for w in sorted(warnings):
        print(w)
    for e in sorted(errors):
        print(e)

    print(f"\n{'─' * 40}")
    print(f"  {len(errors)} error(s), {len(warnings)} warning(s), {len(futures)} future(s)")
    if errors:
        print(f"  Lint FAILED")
    elif warnings:
        print(f"  Lint passed (with warnings)")
    else:
        print(f"  Lint passed")
    print(f"{'─' * 40}")

    return 1 if errors else 0


if __name__ == "__main__":
    sys.exit(main())
