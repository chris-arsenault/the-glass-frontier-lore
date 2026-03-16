#!/usr/bin/env python3
"""Sync lore entries to Memgraph.

Reads all player/ and dm/ entries, parses frontmatter and prose,
creates Entity and Section nodes with typed relationships.
Also syncs the causality DAG edges.

Usage:
    python graph_sync.py [--clear]

    --clear   Wipe the graph before syncing (default: merge/upsert)
"""

import argparse
import re
import sys
from pathlib import Path

from neo4j import GraphDatabase

ROOT = Path(__file__).parent
PLAYER_DIR = ROOT / "player"
DM_DIR = ROOT / "dm"

BOLT_URI = "bolt://192.168.66.3:7688"
AUTH = ("memgraph", "your-secure-password")

# Files that are infrastructure, not lore entries
META_FILES = {
    "CLAUDE.md", "index.md", "tags.md", "timeline.md", "causality.md",
    "lint.py", "wiki_gen.py", "graph_sync.py", "Makefile",
    "README.md", "LICENSE.md",
}

SKIP_DIRS = {"wiki_out", ".git", ".github", "review-guidance", "work-tracking"}


def parse_frontmatter(text: str) -> tuple[dict, str]:
    """Extract YAML frontmatter and return (metadata_dict, body_text)."""
    m = re.match(r"^---\n(.*?\n)---\n?", text, re.DOTALL)
    if not m:
        return {}, text
    fm = {}
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


def extract_sections(body: str) -> list[dict]:
    """Extract markdown sections (## headings) from body text."""
    sections = []
    current_heading = None
    current_lines = []

    for line in body.split("\n"):
        heading_match = re.match(r"^##\s+(.+)", line)
        if heading_match:
            if current_heading is not None:
                sections.append({
                    "heading": current_heading,
                    "text": "\n".join(current_lines).strip(),
                })
            current_heading = heading_match.group(1).strip()
            # Strip [future:...] from headings
            current_heading = re.sub(r"\[future:([^\]]+)\]", r"\1", current_heading)
            current_lines = []
        elif current_heading is not None:
            current_lines.append(line)

    if current_heading is not None:
        sections.append({
            "heading": current_heading,
            "text": "\n".join(current_lines).strip(),
        })

    return sections


def extract_mentions(text: str) -> list[str]:
    """Extract entity names mentioned via links or [future:] markers."""
    mentions = set()
    # Standard markdown links — extract linked file stems
    for m in re.finditer(r"\[([^\]]*)\]\(([^)]+)\)", text):
        href = m.group(2)
        if not href.startswith(("http://", "https://", "#")):
            stem = Path(href.split("#")[0]).stem
            if stem and stem != "index":
                mentions.add(stem)
    # Future markers
    for m in re.finditer(r"\[future:([^\]]+)\]", text):
        slug = re.sub(r"[^a-z0-9]+", "-", m.group(1).lower()).strip("-")
        mentions.add(slug)
    return list(mentions)


def extract_causal_edges(causality_path: Path) -> list[dict]:
    """Extract cause→effect edges from the causality DAG."""
    if not causality_path.exists():
        return []

    text = causality_path.read_text()
    edges = []

    # Find all lines matching: X → [relationship] → Y
    for m in re.finditer(
        r"^(.+?)\s*→\s*\[([^\]]+)\]\s*→\s*(.+?)(?:\s+\[DM\])?\s*$",
        text, re.MULTILINE
    ):
        source = m.group(1).strip()
        relationship = m.group(2).strip()
        target = m.group(3).strip()
        is_dm = "[DM]" in m.group(0)

        # Strip parenthetical notes from source and target
        source = re.sub(r"\s*\(.*?\)\s*$", "", source).strip()
        target = re.sub(r"\s*\(.*?\)\s*$", "", target).strip()

        # Skip sub-items (indented lines with - prefix entities)
        if source.startswith("-") or target.startswith("-"):
            continue

        if not source or not target:
            continue

        edges.append({
            "source": source,
            "relationship": relationship,
            "target": target,
            "dm_only": is_dm,
        })

    return edges


def collect_entries() -> list[dict]:
    """Collect all lore entries from player/ and dm/."""
    entries = []

    for base_dir in [PLAYER_DIR, DM_DIR]:
        if not base_dir.exists():
            continue
        for md_path in sorted(base_dir.rglob("*.md")):
            rel = md_path.relative_to(ROOT)
            if rel.parts[0] in SKIP_DIRS:
                continue
            if rel.name in META_FILES:
                continue
            if rel.name == "index.md":
                continue

            text = md_path.read_text()
            fm, body = parse_frontmatter(text)

            if not fm.get("title"):
                continue

            entry_type = fm.get("type", "unknown")
            is_dm = fm.get("dm") == "true" or str(rel).startswith("dm/")

            sections = extract_sections(body)
            mentions = extract_mentions(body)

            # Determine entity ID from filename
            entity_id = md_path.stem

            entries.append({
                "id": entity_id,
                "title": fm["title"],
                "type": entry_type,
                "prominence": fm.get("prominence", ""),
                "tags": fm.get("tags", []),
                "related": fm.get("related", []),
                "alias": fm.get("alias", ""),
                "region": fm.get("region", ""),
                "dm_only": is_dm,
                "file_path": str(rel),
                "sections": sections,
                "mentions": mentions,
            })

    return entries


def collect_shell_entries() -> list[dict]:
    """Collect shell entries from index files."""
    shells = []

    for index_path in sorted(PLAYER_DIR.rglob("index.md")):
        if index_path == PLAYER_DIR / "index.md":
            continue

        text = index_path.read_text()
        lines = text.splitlines()

        col_map = {}
        for line in lines:
            if line.startswith("|") and "Entry" in line:
                headers = [h.strip().lower() for h in line.strip("|").split("|")]
                col_map = {h: idx for idx, h in enumerate(headers)}
                continue

            if not col_map or not line.startswith("|"):
                continue
            if re.match(r"^\|[\s-]+\|", line):
                continue

            cols = [c.strip() for c in line.strip("|").split("|")]
            entry_col = col_map.get("entry", 0)
            status_col = col_map.get("status")
            prominence_col = col_map.get("prominence")
            tags_col = col_map.get("tags")
            path_col = col_map.get("path")

            entry_name = cols[entry_col].strip() if entry_col < len(cols) else ""
            status = cols[status_col].strip() if status_col is not None and status_col < len(cols) else ""
            path_cell = cols[path_col].strip() if path_col is not None and path_col < len(cols) else ""

            if status != "shell" or not entry_name:
                continue

            # Skip if it has a file path (shouldn't for shells, but defensive)
            if path_cell and path_cell != "—":
                continue

            prominence = cols[prominence_col].strip() if prominence_col is not None and prominence_col < len(cols) else ""
            tags_str = cols[tags_col].strip() if tags_col is not None and tags_col < len(cols) else ""
            tags = [t.strip() for t in tags_str.split(",") if t.strip()]

            shell_id = re.sub(r"[^a-z0-9]+", "-", entry_name.lower()).strip("-")

            shells.append({
                "id": shell_id,
                "title": entry_name,
                "prominence": prominence if prominence != "—" else "",
                "tags": tags,
                "status": "shell",
                "source_index": str(index_path.relative_to(ROOT)),
            })

    return shells


def sync_to_graph(entries: list[dict], shells: list[dict], causal_edges: list[dict],
                  clear: bool = False):
    """Write everything to Memgraph."""
    driver = GraphDatabase.driver(BOLT_URI, auth=AUTH)

    with driver.session() as session:
        if clear:
            session.run("MATCH (n) DETACH DELETE n")
            print("Graph cleared.")

        # Create indexes
        try:
            session.run("CREATE INDEX ON :Entity(id)")
        except Exception:
            pass  # Index may already exist
        try:
            session.run("CREATE INDEX ON :Section(entity_id)")
        except Exception:
            pass

        # --- Upsert shell entries FIRST (so MENTIONS can find them) ---
        for shell in shells:
            session.run("""
                MERGE (e:Entity {id: $id})
                SET e.title = coalesce(e.title, $title),
                    e.prominence = CASE WHEN coalesce(e.prominence, '') = '' THEN $prominence ELSE e.prominence END,
                    e.tags = CASE WHEN e.tags IS NULL THEN $tags ELSE e.tags END,
                    e.status = coalesce(e.status, 'shell'),
                    e.dm_only = coalesce(e.dm_only, false)
            """, id=shell["id"], title=shell["title"],
                prominence=shell["prominence"], tags=shell["tags"])

        # --- Upsert full entries as Entity nodes ---
        for entry in entries:
            tags = entry["tags"] if isinstance(entry["tags"], list) else [entry["tags"]]
            related = entry["related"] if isinstance(entry["related"], list) else [entry["related"]]

            session.run("""
                MERGE (e:Entity {id: $id})
                SET e.title = $title,
                    e.type = $type,
                    e.prominence = $prominence,
                    e.tags = $tags,
                    e.alias = $alias,
                    e.region = $region,
                    e.dm_only = $dm_only,
                    e.file_path = $file_path,
                    e.status = 'complete'
            """, id=entry["id"], title=entry["title"], type=entry["type"],
                prominence=entry["prominence"], tags=tags,
                alias=entry.get("alias", ""), region=entry.get("region", ""),
                dm_only=entry["dm_only"], file_path=entry["file_path"])

            # Create Section nodes
            for section in entry["sections"]:
                section_id = f"{entry['id']}::{section['heading'].lower().replace(' ', '-')}"
                session.run("""
                    MERGE (s:Section {id: $section_id})
                    SET s.heading = $heading,
                        s.text = $text,
                        s.entity_id = $entity_id
                """, section_id=section_id, heading=section["heading"],
                    text=section["text"], entity_id=entry["id"])

                session.run("""
                    MATCH (e:Entity {id: $entity_id})
                    MATCH (s:Section {id: $section_id})
                    MERGE (e)-[:HAS_SECTION {type: $heading}]->(s)
                """, entity_id=entry["id"], section_id=section_id,
                    heading=section["heading"])

            # Create MENTIONS edges from sections
            for mention_slug in entry["mentions"]:
                for section in entry["sections"]:
                    section_id = f"{entry['id']}::{section['heading'].lower().replace(' ', '-')}"
                    # Only create if the mention appears in this section's text
                    if mention_slug in section["text"].lower() or mention_slug.replace("-", " ") in section["text"].lower():
                        session.run("""
                            MATCH (s:Section {id: $section_id})
                            MERGE (target:Entity {id: $mention_id})
                            MERGE (s)-[:MENTIONS]->(target)
                        """, section_id=section_id, mention_id=mention_slug)

            # Create RELATED_TO edges
            for rel_slug in related:
                if rel_slug:
                    session.run("""
                        MATCH (source:Entity {id: $source_id})
                        MERGE (target:Entity {id: $target_id})
                        MERGE (source)-[:RELATED_TO]->(target)
                    """, source_id=entry["id"], target_id=rel_slug)

        # --- Causal edges ---
        for edge in causal_edges:
            source_slug = re.sub(r"[^a-z0-9]+", "-", edge["source"].lower()).strip("-")
            target_slug = re.sub(r"[^a-z0-9]+", "-", edge["target"].lower()).strip("-")

            session.run("""
                MERGE (source:Entity {id: $source_id})
                MERGE (target:Entity {id: $target_id})
                MERGE (source)-[:CAUSES {relationship: $rel, dm_only: $dm}]->(target)
            """, source_id=source_slug, target_id=target_slug,
                rel=edge["relationship"], dm=edge["dm_only"])

        # --- Stats ---
        result = session.run("MATCH (n) RETURN count(n) AS nodes")
        node_count = result.single()["nodes"]
        result = session.run("MATCH ()-[r]->() RETURN count(r) AS rels")
        rel_count = result.single()["rels"]

        print(f"\nGraph synced:")
        print(f"  {len(entries)} full entries")
        print(f"  {len(shells)} shell entries")
        print(f"  {len(causal_edges)} causal edges")
        print(f"  {node_count} total nodes")
        print(f"  {rel_count} total relationships")

    driver.close()


def query_contradictions():
    """Run contradiction detection queries from graph.md."""
    driver = GraphDatabase.driver(BOLT_URI, auth=AUTH)
    issues = []

    with driver.session() as session:
        # Causal cycle detection (temporal paradox)
        result = session.run("""
            MATCH path = (a:Entity)-[:CAUSES*]->(a)
            WITH path, [r IN relationships(path) | r.relationship] AS rels
            WHERE NONE(r IN rels WHERE r CONTAINS 'cooperate' OR r CONTAINS 'provides' OR r CONTAINS 'provide')
            RETURN [n IN nodes(path) | coalesce(n.title, n.id)] AS cycle,
                   rels
            LIMIT 5
        """)
        for record in result:
            issues.append(f"PARADOX: Causal cycle detected: {' → '.join(record['cycle'])}")

        # Dangling mentions — sections mentioning entities with no title (truly unknown)
        result = session.run("""
            MATCH (s:Section)-[:MENTIONS]->(e:Entity)
            WHERE e.title IS NULL
            RETURN DISTINCT s.entity_id AS source, e.id AS dangling
            ORDER BY source, dangling
            LIMIT 30
        """)
        for record in result:
            issues.append(f"DANGLING: {record['source']} mentions unknown entity '{record['dangling']}'")

        # Prominence cross-reference violations
        result = session.run("""
            MATCH (source:Entity)-[:RELATED_TO]->(target:Entity)
            WHERE source.prominence IN ['mythic', 'renowned']
            AND target.prominence IN ['forgotten', 'marginal']
            AND source.status = 'complete'
            RETURN source.title AS source_title, source.prominence AS source_prom,
                   target.title AS target_title, target.prominence AS target_prom
        """)
        for record in result:
            issues.append(
                f"PROMINENCE: {record['source_title']} ({record['source_prom']}) "
                f"relates to {record['target_title']} ({record['target_prom']})"
            )

    driver.close()

    if issues:
        print(f"\n{'─' * 40}")
        print(f"  {len(issues)} issue(s) found:")
        for issue in issues:
            print(f"  {issue}")
        print(f"{'─' * 40}")
    else:
        print(f"\n  No contradictions detected.")

    return issues


def main():
    parser = argparse.ArgumentParser(description="Sync lore to Memgraph")
    parser.add_argument("--clear", action="store_true", help="Clear graph before sync")
    parser.add_argument("--check-only", action="store_true", help="Run contradiction checks without syncing")
    args = parser.parse_args()

    if args.check_only:
        query_contradictions()
        return 0

    print("Collecting entries...")
    entries = collect_entries()
    shells = collect_shell_entries()
    causal_edges = extract_causal_edges(PLAYER_DIR / "causality.md")

    print(f"Found {len(entries)} entries, {len(shells)} shells, {len(causal_edges)} causal edges")

    sync_to_graph(entries, shells, causal_edges, clear=args.clear)
    query_contradictions()

    return 0


if __name__ == "__main__":
    sys.exit(main())
