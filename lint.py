#!/usr/bin/env python3
"""Lore wiki linter. Enforces structural cohesion across entries and indexes."""

import re
import sys
from pathlib import Path

ROOT = Path(__file__).parent
PLAYER_DIR = ROOT / "player"

# Files that are meta/infrastructure, not lore entries
META_FILES = {
    "CLAUDE.md", "SYSTEM.md", "index.md", "tags.md", "timeline.md", "causality.md",
    "design-principles.md", "world-seeds.md",
    "lint.py", "wiki_gen.py", "graph_cli.py", "Makefile",
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
    "occurrence": "history",
    "era": "history",
    "thread": ("threads", "dm"),
    "loop": ("loops", "dm"),
    "theme": ("themes", "dm"),
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


SKIP_DIRS = {"wiki_out", ".git", ".github", "review-guidance", "work-tracking", "research"}
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


def extract_headings(path: Path) -> list[dict]:
    """Extract ## headings from a markdown file.

    Returns list of {prose_heading, graph_heading, has_annotation} dicts.
    Parses <!-- Canonical --> comments for graph heading mapping.
    """
    text = path.read_text()
    # Strip frontmatter
    text = re.sub(r"^---\n.*?\n---\n?", "", text, flags=re.DOTALL)
    headings = []
    for line in text.split("\n"):
        m = re.match(r"^##\s+(.+)", line)
        if m:
            raw = m.group(1).strip()
            comment = re.search(r"<!--\s*(.+?)\s*-->", raw)
            if comment:
                graph_heading = comment.group(1)
                prose = re.sub(r"\s*<!--.*?-->\s*$", "", raw).strip()
                prose = re.sub(r"\[future:([^\]]+)\]", r"\1", prose)
                headings.append({"prose_heading": prose, "graph_heading": graph_heading, "has_annotation": True})
            else:
                prose = re.sub(r"\[future:([^\]]+)\]", r"\1", raw)
                headings.append({"prose_heading": prose, "graph_heading": prose, "has_annotation": False})
    return headings


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

        # 3. Deprecated related field
        if "related" in fm:
            error(f"{rel}: 'related' field is deprecated — relationships are tracked in the graph with typed edges")

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
            # dm/ subdirectory files (themes, threads, loops) use their own index format
            if rel.parts[0] == "dm" and len(rel.parts) > 2:
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
        fm = parse_frontmatter(path)
        if fm and fm.get("contains_dm") == "true":
            continue  # Thread/loop files that explicitly contain DM beats
        text = path.read_text().lower()
        text = re.sub(r"```.*?```", "", text, flags=re.DOTALL)
        for phrase in DM_LEAKAGE_PHRASES:
            if phrase in text:
                error(f"{rel}: possible DM leakage — contains phrase '{phrase}'")

    # --- 11. Future markers: [future:Name] in prose ---
    # Build set of complete entry stems for stale detection
    complete_stems = {p.stem for p in content_files}

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
            name = m.group(1).strip()
            slug = re.sub(r"[^a-z0-9]+", "-", name.lower()).strip("-")
            if slug in complete_stems:
                error(f"{rel}: stale [future:{name}] — {slug}.md exists, use a real link")
            else:
                future_markers.append((rel, name))
                future(f"{rel}: '{name}' — no entry yet")

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

        # Expected cross-references declared in frontmatter
        expected_xrefs = fm.get("prominence_xrefs", [])
        if isinstance(expected_xrefs, str):
            expected_xrefs = [expected_xrefs]

        for link_text, link_target in collect_markdown_links(path):
            if link_target.startswith(("http://", "https://", "#")):
                continue
            target_resolved = str((path.parent / link_target).resolve())
            target_prom = resolved_to_prominence.get(target_resolved)
            if target_prom and PROMINENCE_RANK.get(target_prom, 5) < HIGH_THRESHOLD:
                # Check if this target is in the expected cross-refs
                target_stem = Path(link_target).stem
                if target_stem in expected_xrefs:
                    continue
                warn(f"{rel}: {source_prom}-prominence entry links to "
                     f"'{link_text}' which is {target_prom}-prominence")

    # --- 12b. Double-article link detector ---
    for path in content_files:
        rel = path.relative_to(ROOT)
        text = path.read_text()
        text = re.sub(r"```.*?```", "", text, flags=re.DOTALL)
        for m in re.finditer(r'(?:the|The)\s+\[(?:The|the)\s+', text):
            # Find the line number
            pos = m.start()
            line_num = text[:pos].count("\n") + 1
            error(f"{rel}:{line_num}: double article — '{m.group().strip()}'")

    # --- 12c. Non-standard resonance band vocabulary ---
    # Flag "high-band" or "low-band" when used as resonance terms
    # (followed by frequency/frequencies/resonance), not as general English
    NON_STANDARD_PATTERNS = [
        r"high-band\s+(?:frequenc|resonance)",
        r"low-band\s+(?:frequenc|resonance)",
    ]
    for path in content_files:
        rel = path.relative_to(ROOT)
        text = path.read_text().lower()
        text = re.sub(r"```.*?```", "", text, flags=re.DOTALL)
        for pattern in NON_STANDARD_PATTERNS:
            if re.search(pattern, text):
                error(f"{rel}: non-standard resonance term — use structural/kinetic/signal + broad/mid/narrow")

    # --- 13. Duplicate file stems ---
    stems: dict[str, Path] = {}
    for path in content_files:
        if path.stem in stems:
            error(f"Duplicate entity ID: {path.stem} exists at both "
                  f"{stems[path.stem].relative_to(ROOT)} and {path.relative_to(ROOT)}")
        stems[path.stem] = path

    # --- 13b. DM files must have public_entry field ---
    for path in content_files:
        rel = path.relative_to(ROOT)
        if rel.parts[0] != "dm":
            continue
        fm = parse_frontmatter(path)
        if fm and fm.get("dm") == "true" and "public_entry" not in fm:
            error(f"{rel}: DM entry missing 'public_entry' field")

    # --- 14. Heading annotation check: all ## headings must have <!-- Canonical --> ---
    for path in content_files:
        rel = path.relative_to(ROOT)
        headings = extract_headings(path)
        for h in headings:
            if not h["has_annotation"] and h["prose_heading"] != h["graph_heading"]:
                # This shouldn't happen (no annotation means they're equal by definition)
                # but catch the case where prose heading isn't canonical
                pass
            if not h["has_annotation"]:
                # Check if this heading IS a canonical heading (no annotation needed)
                # If not, it needs one
                canonical_headings = {
                    "Origin", "Geography", "Governance", "Economy", "People", "Access",
                    "Atmosphere", "Dangers", "Tensions", "Biology", "Culture", "Resonance",
                    "History", "Present Day", "Aesthetics", "Naming", "Language", "Values",
                    "Perception", "Structure", "Operations", "Resources", "Public Profile",
                    "Traits", "Relationships", "Cause", "Course", "Aftermath", "Legacy",
                    "How It Works", "Sources", "Limits", "Applications", "Trade",
                    "Function", "Significance", "Description", "Mechanics",
                    "Truth", "Implications", "Usage Notes",
                }
                if h["prose_heading"] not in canonical_headings:
                    error(f"{rel}: heading '{h['prose_heading']}' is not canonical and has no <!-- Canonical --> annotation")

    # --- 14. Graph-prose sync (requires Memgraph connection) ---
    try:
        from neo4j import GraphDatabase
        driver = GraphDatabase.driver("bolt://192.168.66.3:7688", auth=("memgraph", "your-secure-password"))
        graph_available = True
    except Exception:
        graph_available = False

    if graph_available:
        with driver.session() as session:
            # 14a. All graph entities must have a title
            result = session.run("""
                MATCH (e:Entity)
                WHERE e.title IS NULL OR e.title = ''
                RETURN e.id
            """)
            for r in result:
                error(f"GRAPH: entity '{r['e.id']}' has no title")

            # 14b. Every prose file should have a matching graph entity
            prose_ids = {p.stem for p in content_files}
            result = session.run("""
                MATCH (e:Entity)
                WHERE e.status = 'complete'
                RETURN e.id
            """)
            graph_complete_ids = {r["e.id"] for r in result}

            for pid in prose_ids:
                if pid not in graph_complete_ids:
                    # DM files map differently — check by file stem
                    warn(f"GRAPH: prose file '{pid}' has no matching complete entity in graph")

            for gid in graph_complete_ids:
                if gid not in prose_ids:
                    warn(f"GRAPH: graph entity '{gid}' (complete) has no matching prose file")

            # 14c. Section 1:1 match — every prose heading should exist in graph, and vice versa
            for path in content_files:
                rel = path.relative_to(ROOT)
                entity_id = path.stem
                prose_headings = extract_headings(path)
                prose_graph_set = {h["graph_heading"] for h in prose_headings}

                result = session.run("""
                    MATCH (e:Entity {id: $eid})-[:HAS_SECTION]->(s:Section)
                    RETURN s.heading AS heading
                """, eid=entity_id)
                graph_heading_set = {r["heading"] for r in result}

                # Headings in prose but not in graph
                for h in prose_graph_set - graph_heading_set:
                    if graph_heading_set:  # Only flag if the entity exists in graph at all
                        warn(f"GRAPH: {rel} heading '{h}' exists in prose but not in graph")

                # Headings in graph but not in prose
                for h in graph_heading_set - prose_graph_set:
                    warn(f"GRAPH: {rel} heading '{h}' exists in graph but not in prose")

            # 14d. All graph entities must have a type
            result = session.run("""
                MATCH (e:Entity)
                WHERE e.type IS NULL OR e.type = ''
                RETURN e.id
            """)
            for r in result:
                error(f"GRAPH: entity '{r['e.id']}' has no type")

            # 14e. All graph edge types must exist in taxonomy
            result = session.run("""
                MATCH ()-[r]->()
                WHERE type(r) <> 'HAS_SECTION' AND type(r) <> 'ALLOWS_HEADING'
                RETURN DISTINCT type(r) AS rel_type
            """)
            graph_rel_types = {r["rel_type"] for r in result}
            result = session.run("""
                MATCH (t:Taxonomy:RelationType)
                RETURN t.name AS name
            """)
            taxonomy_rel_types = {r["name"] for r in result}
            for rt in graph_rel_types - taxonomy_rel_types:
                error(f"GRAPH: relationship type '{rt}' exists in graph but not in taxonomy")

            # 14e. No banned relationship types in graph
            result = session.run("""
                MATCH (t:Taxonomy:RelationType {category: 'banned'})
                RETURN t.name AS banned_type
            """)
            banned_types = [r["banned_type"] for r in result]
            for bt in banned_types:
                result = session.run(f"""
                    MATCH ()-[r:{bt}]->()
                    RETURN count(r) AS c
                """)
                count = result.single()["c"]
                if count > 0:
                    error(f"GRAPH: {count} '{bt}' edge(s) exist — this relationship type is banned")

            # --- graph.md spec checks ---

            # G1. Dangling references — MENTIONS edges pointing to entities with no title
            result = session.run("""
                MATCH (s:Section)-[:MENTIONS]->(e:Entity)
                WHERE e.title IS NULL OR e.title = ''
                RETURN DISTINCT s.entity_id AS source, e.id AS dangling
            """)
            for r in result:
                error(f"GRAPH G1: section in '{r['source']}' mentions dangling entity '{r['dangling']}'")

            # G2. Causal cycle detection — CAUSES chain should be a DAG
            result = session.run("""
                MATCH path = (a:Entity)-[:CAUSES*2..10]->(a)
                RETURN [n IN nodes(path) | coalesce(n.title, n.id)] AS cycle
                LIMIT 5
            """)
            for r in result:
                cycle_str = " → ".join(r["cycle"][:5])
                error(f"GRAPH G2: causal cycle detected: {cycle_str}...")

            # G3. Temporal coherence — entity with valid_to shouldn't have
            #     CAUSES edges to entities whose valid_from is AFTER the source's valid_to
            result = session.run("""
                MATCH (a:Entity)-[:CAUSES]->(b:Entity)
                WHERE a.valid_to IS NOT NULL AND b.valid_from IS NOT NULL
                AND b.valid_from > a.valid_to
                RETURN a.title AS source, a.valid_to AS source_end,
                       b.title AS target, b.valid_from AS target_start
            """)
            for r in result:
                error(f"GRAPH G3: '{r['source']}' (ends {r['source_end']}) "
                      f"causes '{r['target']}' (starts {r['target_start']}) — temporal paradox")

            # G5. Antisymmetry — directional relationships shouldn't have
            #     contradictory reverses (A GOVERNS B and B GOVERNS A)
            antisymmetric_types = [
                "GOVERNS", "LEADS", "CREATED", "DESTROYED", "BUILT",
                "DESIGNED", "TRAINS", "REGULATES", "CHAIRS",
            ]
            for rel_type in antisymmetric_types:
                result = session.run(f"""
                    MATCH (a:Entity)-[:{rel_type}]->(b:Entity)-[:{rel_type}]->(a)
                    RETURN a.title AS a_title, b.title AS b_title
                """)
                for r in result:
                    error(f"GRAPH G5: antisymmetry violation — '{r['a_title']}' and "
                          f"'{r['b_title']}' both {rel_type} each other")

            # G6. Spatial consistency — PART_OF should not form cycles
            result = session.run("""
                MATCH path = (a:Entity)-[:PART_OF*2..5]->(a)
                RETURN [n IN nodes(path) | coalesce(n.title, n.id)] AS cycle
                LIMIT 5
            """)
            for r in result:
                error(f"GRAPH G6: spatial cycle: {' → '.join(r['cycle'])}")

            # G4. Attribute collision — prose frontmatter vs graph properties
            for path in content_files:
                rel = path.relative_to(ROOT)
                fm = parse_frontmatter(path)
                if not fm:
                    continue
                entity_id = path.stem
                result = session.run("""
                    MATCH (e:Entity {id: $eid})
                    RETURN e.prominence AS prom, e.type AS type
                """, eid=entity_id)
                record = result.single()
                if not record:
                    continue
                # Prominence mismatch
                if fm.get("prominence") and record["prom"] and fm["prominence"] != record["prom"]:
                    error(f"GRAPH G4: {rel} prominence mismatch — prose='{fm['prominence']}' graph='{record['prom']}'")
                # Type mismatch
                if fm.get("type") and record["type"] and fm["type"] != record["type"]:
                    error(f"GRAPH G4: {rel} type mismatch — prose='{fm['type']}' graph='{record['type']}'")

            # L2. Semantic similarity — for each section, find nearest neighbors
            #     via vector index. Flag same-heading pairs with high similarity.
            seen_pairs = set()
            result = session.run("""
                MATCH (sec:Section)
                WHERE sec.embedding IS NOT NULL AND sec.heading IS NOT NULL
                RETURN sec.id AS sid, sec.entity_id AS eid, sec.heading AS heading, sec.embedding AS vec
            """)
            all_sections = [(r["sid"], r["eid"], r["heading"], r["vec"]) for r in result]

            for sid, eid, heading, vec in all_sections:
                result = session.run("""
                    CALL vector_search.search("section_embeddings", 5, $vec)
                    YIELD node, similarity
                    WITH node, similarity
                    WHERE node.id <> $sid
                    AND node.heading = $heading
                    AND similarity > 0.92
                    RETURN node.entity_id AS other_eid, similarity AS sim
                """, vec=vec, sid=sid, heading=heading)
                for r in result:
                    pair = tuple(sorted([eid, r["other_eid"]]))
                    pair_key = (heading, pair)
                    if pair_key not in seen_pairs:
                        seen_pairs.add(pair_key)
                        warn(f"GRAPH L2: [{heading}] {pair[0]} ↔ {pair[1]} "
                             f"similarity={r['sim']:.3f} — review for redundancy")

            # L3. Entity-level semantic overlap — two complete entities of the same
            #     type whose sections are broadly similar (not just one matching heading)
            result = session.run("""
                MATCH (e:Entity)
                WHERE e.status = 'complete'
                AND e.type IS NOT NULL
                RETURN e.id AS eid, e.type AS etype
            """)
            complete_entities = [(r["eid"], r["etype"]) for r in result]

            # Group by type, excluding registries
            result_reg = session.run("""
                MATCH (e:Entity)
                WHERE e.status = 'complete'
                RETURN e.id AS eid, e.type AS etype,
                       CASE WHEN e.file_path CONTAINS 'registry' THEN true
                            ELSE false END AS is_reg
            """)
            registry_ids = set()
            by_type = {}
            for r in result_reg:
                if r["is_reg"]:
                    registry_ids.add(r["eid"])
                by_type.setdefault(r["etype"], []).append(r["eid"])

            # Also check the prose for registry: true
            for path in content_files:
                fm = parse_frontmatter(path)
                if fm and fm.get("registry") == "true":
                    registry_ids.add(path.stem)

            for etype, eids in by_type.items():
                if len(eids) < 2:
                    continue
                for i in range(len(eids)):
                    for j in range(i + 1, len(eids)):
                        eid_a, eid_b = eids[i], eids[j]
                        # Skip if either is a registry entry
                        if eid_a in registry_ids or eid_b in registry_ids:
                            continue
                        result = session.run("""
                            MATCH (sa:Section {entity_id: $a})
                            WHERE sa.embedding IS NOT NULL
                            WITH collect(sa.embedding) AS vecs_a
                            MATCH (sb:Section {entity_id: $b})
                            WHERE sb.embedding IS NOT NULL
                            WITH vecs_a, collect(sb.embedding) AS vecs_b
                            RETURN vecs_a, vecs_b
                        """, a=eid_a, b=eid_b)
                        r = result.single()
                        if not r or not r["vecs_a"] or not r["vecs_b"]:
                            continue
                        try:
                            import numpy as np
                            vecs_a = [np.array(v) for v in r["vecs_a"]]
                            vecs_b = [np.array(v) for v in r["vecs_b"]]
                            sims = []
                            for va in vecs_a:
                                for vb in vecs_b:
                                    sim = float(np.dot(va, vb) / (np.linalg.norm(va) * np.linalg.norm(vb)))
                                    sims.append(sim)
                            avg_sim = sum(sims) / len(sims) if sims else 0
                            if avg_sim > 0.88:
                                error(f"GRAPH L3: entity overlap — '{eid_a}' and '{eid_b}' "
                                      f"(both type:{etype}) avg similarity={avg_sim:.3f} — likely duplicates, consider merging")
                            elif avg_sim > 0.84:
                                warn(f"GRAPH L3: entity overlap — '{eid_a}' and '{eid_b}' "
                                     f"(both type:{etype}) avg similarity={avg_sim:.3f} — review for redundancy")
                        except ImportError:
                            pass

            # G7a. Location entities must have a spatial HIERARCHY relationship
            # These tell you WHERE a place IS (not what's at it)
            SPATIAL_HIERARCHY_RELS = ["ORBITS", "ON_SURFACE_OF", "IN_ORBIT_OF",
                                     "INNER_OF", "LOCATED_IN", "PART_OF"]
            spatial_check = " OR ".join(f'type(r) = "{rt}"' for rt in SPATIAL_HIERARCHY_RELS)
            result = session.run(f"""
                MATCH (e:Entity)
                WHERE e.type = 'location' AND e.status = 'complete'
                AND NOT EXISTS {{
                    MATCH (e)-[r]->()
                    WHERE {spatial_check}
                }}
                RETURN e.id, e.title
            """)
            for r in result:
                warn(f"GRAPH: location '{r['e.title']}' ({r['e.id']}) has no spatial hierarchy relationship (WHERE is it?)")

            # G7. Orphan detection — entities with no edges at all
            result = session.run("""
                MATCH (e:Entity)
                WHERE e.status = 'complete'
                AND NOT EXISTS { MATCH (e)-[]-() }
                RETURN e.id, e.title
            """)
            for r in result:
                warn(f"GRAPH G7: entity '{r['e.title']}' ({r['e.id']}) has no relationships")

            # 14f. Entity title match — prose title should match graph title
            for path in content_files:
                rel = path.relative_to(ROOT)
                fm = parse_frontmatter(path)
                if not fm or "title" not in fm:
                    continue
                entity_id = path.stem
                result = session.run("""
                    MATCH (e:Entity {id: $eid})
                    RETURN e.title AS title
                """, eid=entity_id)
                record = result.single()
                if record and record["title"] and record["title"] != fm["title"]:
                    error(f"GRAPH: {rel} title mismatch — prose='{fm['title']}' graph='{record['title']}'")

        driver.close()
    else:
        warn("GRAPH: Memgraph not reachable — skipping graph-prose sync checks")

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
