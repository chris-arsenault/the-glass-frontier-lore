#!/usr/bin/env python3
"""Generate GitHub wiki-compatible pages from the lore repository.

Reads markdown files with YAML frontmatter, flattens them into wiki page names
derived from titles, converts internal links to [[wiki links]], and produces
special pages (Home, Sidebar, Timeline, Tags, per-type indexes).

Usage:
    python wiki_gen.py [OUTPUT_DIR]

OUTPUT_DIR defaults to ./wiki_out
"""

import argparse
import os
import re
import shutil
import sys
from pathlib import Path

ROOT = Path(__file__).parent

# Files to skip entirely during wiki generation
SKIP_FILES = {"CLAUDE.md", "README.md", "LICENSE.md", "lint.py", "Makefile"}

# Section names used for index pages and sidebar organisation
SECTION_NAMES = {
    "concepts": "Concepts",
    "cosmology": "Cosmology",
    "locations": "Locations",
    "npcs": "NPCs",
    "history": "History",
    "artifacts": "Artifacts",
    "creatures": "Creatures",
    "ships": "Ships",
}


# ---------------------------------------------------------------------------
# Frontmatter parsing (stdlib-only, no yaml dependency)
# ---------------------------------------------------------------------------

def parse_frontmatter(text: str) -> tuple[dict, str]:
    """Extract YAML frontmatter and return (metadata_dict, body_text).

    Returns an empty dict if no frontmatter is present.
    """
    m = re.match(r"^---\n(.*?\n)---\n?", text, re.DOTALL)
    if not m:
        return {}, text
    fm: dict = {}
    for line in m.group(1).splitlines():
        kv = re.match(r"^(\w[\w-]*):\s*(.*)", line)
        if kv:
            key, val = kv.group(1), kv.group(2).strip()
            list_match = re.match(r"^\[(.*)\]$", val)
            if list_match:
                items = [x.strip().strip("'\"") for x in list_match.group(1).split(",") if x.strip()]
                fm[key] = items
            else:
                fm[key] = val.strip("'\"")
    body = text[m.end():]
    return fm, body


def title_to_wiki_filename(title: str) -> str:
    """Convert a page title to a wiki-compatible filename.

    "Fermata Station" -> "Fermata-Station.md"
    """
    return title.replace(" ", "-") + ".md"


def title_from_filename(path: Path) -> str:
    """Derive a human title from a filename stem when frontmatter has no title."""
    return path.stem.replace("-", " ").title()


# ---------------------------------------------------------------------------
# Scanning phase — build the mapping tables
# ---------------------------------------------------------------------------

class RepoScanner:
    """Scans the repo to build lookup tables used during conversion."""

    def __init__(self, root: Path):
        self.root = root
        # Maps repo-relative path (str) -> wiki page title
        self.path_to_title: dict[str, str] = {}
        # Maps wiki page title -> wiki filename (without directory)
        self.title_to_filename: dict[str, str] = {}
        # Maps repo-relative path (str) -> frontmatter dict
        self.path_to_fm: dict[str, dict] = {}
        # Ordered list of (section_key, wiki_title) for content pages
        self.section_pages: dict[str, list[str]] = {k: [] for k in SECTION_NAMES}

    # Special pages with fixed wiki filenames that override their frontmatter title.
    # Maps repo-relative path -> wiki page name (used as title for link resolution).
    SPECIAL_PAGE_TITLES = {
        "index.md": "Home",
        "tags.md": "Tags",
        "timeline.md": "Timeline",
    }

    def scan(self):
        """Walk the repo and populate all mappings."""
        for md_path in sorted(self.root.rglob("*.md")):
            rel = md_path.relative_to(self.root)
            rel_str = str(rel)

            # Skip hidden dirs and output dir
            if any(part.startswith(".") for part in rel.parts):
                continue
            if rel.parts[0] in ("wiki_out",):
                continue
            # Skip meta files
            if rel.name in SKIP_FILES:
                continue

            text = md_path.read_text()
            fm, _ = parse_frontmatter(text)
            title = fm.get("title") or title_from_filename(md_path)

            self.path_to_title[rel_str] = title
            self.path_to_fm[rel_str] = fm
            self.title_to_filename[title] = title_to_wiki_filename(title)

            # Classify into sections for sidebar
            section_key = rel.parts[0] if len(rel.parts) > 1 else None
            if section_key and section_key in SECTION_NAMES:
                # Index files get a special name later; content pages go in the list
                if rel.name == "index.md":
                    pass  # handled separately
                else:
                    self.section_pages[section_key].append(title)

        # Override titles for special pages so wiki links resolve to correct names.
        for rel_str, wiki_name in self.SPECIAL_PAGE_TITLES.items():
            if rel_str in self.path_to_title:
                old_title = self.path_to_title[rel_str]
                self.path_to_title[rel_str] = wiki_name
                self.title_to_filename[wiki_name] = wiki_name + ".md"
                # Remove the old title mapping if it differs
                if old_title != wiki_name and old_title in self.title_to_filename:
                    del self.title_to_filename[old_title]

        # Override per-type index pages so links resolve to "Section Index" names.
        for section_key, section_label in SECTION_NAMES.items():
            index_rel = f"{section_key}/index.md"
            if index_rel in self.path_to_title:
                old_title = self.path_to_title[index_rel]
                wiki_name = f"{section_label} Index"
                self.path_to_title[index_rel] = wiki_name
                self.title_to_filename[wiki_name] = title_to_wiki_filename(wiki_name)
                if old_title != wiki_name and old_title in self.title_to_filename:
                    del self.title_to_filename[old_title]

    def resolve_link_target(self, source_rel: str, target_href: str) -> str | None:
        """Resolve a relative link target to a repo-relative path string.

        Returns None if the target cannot be resolved to a known file.
        """
        # Strip any anchor fragment before resolving
        href_path = target_href.split("#")[0] if "#" in target_href else target_href
        if not href_path:
            return None
        source_dir = str(Path(source_rel).parent)
        resolved = os.path.normpath(os.path.join(source_dir, href_path))
        # Normalise to forward slashes
        resolved = resolved.replace("\\", "/")
        if resolved in self.path_to_title:
            return resolved
        return None

    def is_skipped_file(self, source_rel: str, target_href: str) -> bool:
        """Check if a link target points to a skipped meta file."""
        href_path = target_href.split("#")[0] if "#" in target_href else target_href
        if not href_path:
            return False
        source_dir = str(Path(source_rel).parent)
        resolved = os.path.normpath(os.path.join(source_dir, href_path))
        resolved = resolved.replace("\\", "/")
        basename = Path(resolved).name
        return basename in SKIP_FILES


# ---------------------------------------------------------------------------
# Link conversion
# ---------------------------------------------------------------------------

def convert_links(body: str, source_rel: str, scanner: RepoScanner) -> str:
    """Convert internal markdown links to wiki links; handle future markers."""

    def replace_md_link(m: re.Match) -> str:
        link_text = m.group(1)
        href = m.group(2)

        # Leave external links unchanged
        if href.startswith(("http://", "https://", "#")):
            return m.group(0)

        # Resolve internal link
        resolved = scanner.resolve_link_target(source_rel, href)
        if resolved is not None:
            wiki_title = scanner.path_to_title[resolved]
            # If link text is a filename/path, just use the page title
            if link_text.endswith(".md") or "/" in link_text:
                return f"[[{wiki_title}]]"
            # Preserve original link text when it differs from the page title
            if link_text and link_text != wiki_title:
                return f"[[{wiki_title}|{link_text}]]"
            return f"[[{wiki_title}]]"

        # Links to skipped meta files — just use the plain text
        if scanner.is_skipped_file(source_rel, href):
            return link_text

        # Could not resolve — keep as-is but make it a wiki link using the link text
        return f"[[{link_text}]]"

    # Replace markdown links: [text](target)
    body = re.sub(r"\[([^\]]*)\]\(([^)]+)\)", replace_md_link, body)

    # Replace future markers: [future:Entity Name] -> *Entity Name* *(stub)*
    body = re.sub(r"\[future:([^\]]+)\]", r"*\1* *(stub)*", body)

    return body


# ---------------------------------------------------------------------------
# Metadata box
# ---------------------------------------------------------------------------

def build_metadata_box(fm: dict, scanner: RepoScanner) -> str:
    """Build a blockquote metadata line from frontmatter fields."""
    parts: list[str] = []

    if "type" in fm:
        parts.append(f"**Type:** {fm['type']}")

    tags = fm.get("tags", [])
    if isinstance(tags, str):
        tags = [tags]
    if tags:
        parts.append(f"**Tags:** {', '.join(tags)}")

    if "region" in fm:
        parts.append(f"**Region:** {fm['region']}")

    if "alias" in fm:
        alias = fm["alias"]
        if isinstance(alias, list):
            alias = ", ".join(alias)
        parts.append(f"**Alias:** {alias}")

    if "date" in fm:
        parts.append(f"**Date:** {fm['date']}")

    if not parts:
        return ""

    line = "> " + " | ".join(parts)

    # Related entries as wiki links
    related = fm.get("related", [])
    if isinstance(related, str):
        related = [related]
    if related:
        related_links = []
        for slug in related:
            # Try to find the title for this slug
            found_title = None
            for path_str, title in scanner.path_to_title.items():
                if Path(path_str).stem == slug:
                    found_title = title
                    break
            if found_title:
                related_links.append(f"[[{found_title}]]")
            else:
                # Titlecase the slug as a fallback
                related_links.append(f"[[{slug.replace('-', ' ').title()}]]")
        line += "\n>\n> **Related:** " + ", ".join(related_links)

    return line + "\n\n"


# ---------------------------------------------------------------------------
# Page generation
# ---------------------------------------------------------------------------

def generate_content_page(rel_str: str, scanner: RepoScanner) -> tuple[str, str]:
    """Generate a wiki page from a content file.

    Returns (wiki_filename, page_content).
    """
    path = scanner.root / rel_str
    text = path.read_text()
    fm, body = parse_frontmatter(text)
    title = scanner.path_to_title[rel_str]
    wiki_filename = scanner.title_to_filename[title]

    meta_box = build_metadata_box(fm, scanner)
    converted_body = convert_links(body, rel_str, scanner)

    content = meta_box + converted_body
    return wiki_filename, content


def generate_index_page(section_key: str, rel_str: str, scanner: RepoScanner) -> tuple[str, str]:
    """Generate a wiki page for a per-type index file.

    Returns (wiki_filename, page_content).
    """
    section_label = SECTION_NAMES.get(section_key, section_key.title())
    wiki_title = f"{section_label} Index"
    wiki_filename = title_to_wiki_filename(wiki_title)

    path = scanner.root / rel_str
    text = path.read_text()
    fm, body = parse_frontmatter(text)

    converted_body = convert_links(body, rel_str, scanner)

    # In index tables, convert bare relative path cells to wiki links
    # e.g. [settlements/fermata-station.md](settlements/fermata-station.md) is already handled
    # by convert_links, but we also need to make plain path references into links
    content = converted_body
    return wiki_filename, content


def generate_home_page(scanner: RepoScanner) -> tuple[str, str]:
    """Generate Home.md from the top-level index.md."""
    rel_str = "index.md"
    path = scanner.root / rel_str
    text = path.read_text()
    fm, body = parse_frontmatter(text)

    converted_body = convert_links(body, rel_str, scanner)
    return "Home.md", converted_body


def generate_special_page(filename: str, source_name: str, scanner: RepoScanner) -> tuple[str, str]:
    """Generate a special wiki page (Timeline, Tags) from a top-level file."""
    rel_str = source_name
    path = scanner.root / rel_str
    text = path.read_text()
    fm, body = parse_frontmatter(text)

    converted_body = convert_links(body, rel_str, scanner)
    return filename, converted_body


def generate_sidebar(scanner: RepoScanner) -> tuple[str, str]:
    """Generate _Sidebar.md with navigation links."""
    lines: list[str] = []
    lines.append("**[[Home]]**\n")
    lines.append("[[Timeline]] | [[Tags]]\n")
    lines.append("---\n")

    for section_key, section_label in SECTION_NAMES.items():
        index_title = f"{section_label} Index"
        lines.append(f"**[[{index_title}|{section_label}]]**\n")

        pages = sorted(scanner.section_pages.get(section_key, []))
        for page_title in pages:
            lines.append(f"- [[{page_title}]]")
        if pages:
            lines.append("")  # blank line after list

    return "_Sidebar.md", "\n".join(lines) + "\n"


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def generate_wiki(root: Path, output_dir: Path) -> list[str]:
    """Generate all wiki pages into output_dir. Returns list of generated filenames."""
    scanner = RepoScanner(root)
    scanner.scan()

    if output_dir.exists():
        shutil.rmtree(output_dir)
    output_dir.mkdir(parents=True)

    generated: list[str] = []

    def write_page(filename: str, content: str):
        (output_dir / filename).write_text(content)
        generated.append(filename)

    # 1. Content pages (non-index, non-meta files)
    for rel_str, title in scanner.path_to_title.items():
        rel = Path(rel_str)

        # Skip top-level special files handled separately
        if rel_str in ("index.md", "tags.md", "timeline.md"):
            continue
        # Skip per-type index files handled separately
        if rel.name == "index.md":
            continue

        wiki_filename, content = generate_content_page(rel_str, scanner)
        write_page(wiki_filename, content)

    # 2. Per-type index pages
    for section_key in SECTION_NAMES:
        index_rel = f"{section_key}/index.md"
        if index_rel in scanner.path_to_title:
            section_label = SECTION_NAMES[section_key]
            wiki_filename, content = generate_index_page(section_key, index_rel, scanner)
            # Use the standardised wiki title as filename
            wiki_filename = title_to_wiki_filename(f"{section_label} Index")
            write_page(wiki_filename, content)

    # 3. Home page
    wiki_filename, content = generate_home_page(scanner)
    write_page(wiki_filename, content)

    # 4. Timeline
    wiki_filename, content = generate_special_page("Timeline.md", "timeline.md", scanner)
    write_page(wiki_filename, content)

    # 5. Tags
    wiki_filename, content = generate_special_page("Tags.md", "tags.md", scanner)
    write_page(wiki_filename, content)

    # 6. Sidebar
    wiki_filename, content = generate_sidebar(scanner)
    write_page(wiki_filename, content)

    return generated


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(
        description="Generate GitHub wiki pages from the lore repository."
    )
    parser.add_argument(
        "output_dir",
        nargs="?",
        default="wiki_out",
        help="Directory to write wiki pages into (default: wiki_out)",
    )
    parser.add_argument(
        "--root",
        default=str(ROOT),
        help="Root of the lore repository (default: script directory)",
    )
    args = parser.parse_args(argv)

    root = Path(args.root)
    output_dir = Path(args.output_dir)

    if not root.is_dir():
        print(f"Error: repository root not found: {root}", file=sys.stderr)
        return 1

    generated = generate_wiki(root, output_dir)

    print(f"Generated {len(generated)} wiki pages in {output_dir}/")
    for f in sorted(generated):
        print(f"  {f}")

    return 0


if __name__ == "__main__":
    sys.exit(main())
