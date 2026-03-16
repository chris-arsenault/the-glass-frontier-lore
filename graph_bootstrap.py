#!/usr/bin/env python3
"""One-time bootstrap: populate Memgraph from lore entries with
semantic relationships and section embeddings.

After this, graph operations happen inline via Cypher during conversations.
This script exists for disaster recovery / full rebuilds only.
"""

import json
import re
import sys
import urllib.request
from pathlib import Path

from neo4j import GraphDatabase

ROOT = Path(__file__).parent
PLAYER_DIR = ROOT / "player"
DM_DIR = ROOT / "dm"

BOLT_URI = "bolt://192.168.66.3:7688"
GRAPH_AUTH = ("memgraph", "your-secure-password")
EMBED_URL = "http://192.168.66.3:5361/v1/embeddings"
EMBED_MODEL = "nomic-embed-text"

META_FILES = {
    "CLAUDE.md", "index.md", "tags.md", "timeline.md", "causality.md",
    "lint.py", "wiki_gen.py", "graph_sync.py", "graph_bootstrap.py", "Makefile",
    "README.md", "LICENSE.md",
}


def embed(text: str) -> list[float]:
    """Get embedding vector for text."""
    # Prefix per graph.md spec: section text gets entity context injected
    req = urllib.request.Request(
        EMBED_URL,
        data=json.dumps({"model": EMBED_MODEL, "input": text}).encode(),
        headers={"Content-Type": "application/json"},
    )
    resp = json.loads(urllib.request.urlopen(req).read())
    return resp["data"][0]["embedding"]


def parse_frontmatter(text: str) -> tuple[dict, str]:
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
                fm[key] = [x.strip().strip("'\"") for x in list_match.group(1).split(",") if x.strip()]
            else:
                fm[key] = val.strip("'\"")
    return fm, text[m.end():]


def extract_sections(body: str) -> list[dict]:
    sections = []
    current_heading = None
    current_lines = []
    for line in body.split("\n"):
        hm = re.match(r"^##\s+(.+)", line)
        if hm:
            if current_heading:
                sections.append({"heading": current_heading, "text": "\n".join(current_lines).strip()})
            current_heading = re.sub(r"\[future:([^\]]+)\]", r"\1", hm.group(1).strip())
            current_lines = []
        elif current_heading:
            current_lines.append(line)
    if current_heading:
        sections.append({"heading": current_heading, "text": "\n".join(current_lines).strip()})
    return sections


def collect_entries() -> list[dict]:
    entries = []
    for base_dir in [PLAYER_DIR, DM_DIR]:
        if not base_dir.exists():
            continue
        for md_path in sorted(base_dir.rglob("*.md")):
            rel = md_path.relative_to(ROOT)
            if rel.name in META_FILES or rel.name == "index.md":
                continue
            if any(p in str(rel) for p in ["wiki_out", ".git", "review-guidance", "work-tracking"]):
                continue
            text = md_path.read_text()
            fm, body = parse_frontmatter(text)
            if not fm.get("title"):
                continue
            entries.append({
                "id": md_path.stem,
                "path": str(rel),
                "fm": fm,
                "body": body,
                "sections": extract_sections(body),
                "is_dm": fm.get("dm") == "true" or str(rel).startswith("dm/"),
            })
    return entries


def collect_shells() -> list[dict]:
    """Collect shell entries from all index files."""
    shells = []
    for idx_path in sorted(PLAYER_DIR.rglob("index.md")):
        if idx_path == PLAYER_DIR / "index.md":
            continue
        text = idx_path.read_text()
        col_map = {}
        for line in text.splitlines():
            if not line.startswith("|"):
                continue
            if re.match(r"^\|[\s-]+\|", line):
                continue
            if "Entry" in line:
                headers = [h.strip().lower() for h in line.strip("|").split("|")]
                col_map = {h: i for i, h in enumerate(headers)}
                continue
            if not col_map:
                continue
            cols = [c.strip() for c in line.strip("|").split("|")]
            status_col = col_map.get("status")
            status = cols[status_col].strip() if status_col is not None and status_col < len(cols) else ""
            if status != "shell":
                continue
            entry_col = col_map.get("entry", 0)
            prom_col = col_map.get("prominence")
            tags_col = col_map.get("tags")
            name = cols[entry_col].strip()
            prom = cols[prom_col].strip() if prom_col is not None and prom_col < len(cols) else ""
            tags_str = cols[tags_col].strip() if tags_col is not None and tags_col < len(cols) else ""
            tags = [t.strip() for t in tags_str.split(",") if t.strip()]
            shell_id = re.sub(r"[^a-z0-9]+", "-", name.lower()).strip("-")
            shells.append({"id": shell_id, "title": name, "prominence": prom if prom != "—" else "", "tags": tags})
    return shells


# --- Semantic relationship extraction ---

# These define HOW entities relate, not just THAT they relate.
# Each tuple: (source_id, rel_type, target_id, properties_dict)

def extract_semantic_relationships(entry: dict) -> list[tuple]:
    """Extract typed relationships from an entry's content and frontmatter."""
    rels = []
    eid = entry["id"]
    fm = entry["fm"]

    # From frontmatter: region → LOCATED_IN
    if fm.get("region"):
        rels.append((eid, "LOCATED_IN", fm["region"], {}))

    # From frontmatter: related (these are weak — try to type them from context)
    related = fm.get("related", [])
    if isinstance(related, str):
        related = [related]
    for r in related:
        if r:
            rels.append((eid, "RELATED_TO", r, {}))

    # From frontmatter: public_entry (DM extends player entry)
    if fm.get("public_entry"):
        rels.append((eid, "EXTENDS", fm["public_entry"], {"dm_only": True}))

    # Content-derived relationships (hardcoded per entity based on known lore)
    # This is the semantic layer — I'm reading the content and typing the edges.
    content_rels = KNOWN_RELATIONSHIPS.get(eid, [])
    rels.extend(content_rels)

    return rels


# Semantic relationships derived from reading the actual lore content.
# Format: entity_id -> [(source, rel_type, target, {props}), ...]
KNOWN_RELATIONSHIPS = {
    "sithari": [
        ("sithari", "BUILT_ON", "ring-era-research-complex", {"era": "pre-2240"}),
        ("the-continuity", "GOVERNS", "sithari", {}),
        ("tempered-accord", "HEADQUARTERED_IN", "sithari", {}),
        ("sithari", "TERMINUS_OF", "keel", {}),
        ("prismwell-kite-guild", "OPERATES_IN", "sithari", {}),
    ],
    "the-shear": [
        ("the-shear", "PART_OF", "kaleidos-orbit", {}),
        ("the-shear", "CREATED_BY", "the-glassfall", {"era": "2240"}),
        ("cthonic-beasts", "INHABITS", "the-shear", {}),
        ("coremark", "OPERATES_IN", "the-shear", {}),
        ("verge-compact", "REGULATES", "the-shear", {}),
    ],
    "tuners": [
        ("clarisant", "TRAINS", "tuners", {}),
        ("clarisant", "HEADQUARTERED_IN", "pelhari", {}),
        ("tuners", "EMERGED_DURING", "signal-famine", {"era": "2240-2305"}),
    ],
    "resonance": [
        ("resonance", "CONDUCTED_BY", "ringglass", {}),
        ("elves", "DESIGNED", "resonance", {"era": "pre-2240"}),
    ],
    "ringglass": [
        ("ringglass", "SOURCED_FROM", "the-shear", {}),
        ("ringglass", "POWERS", "resonance", {}),
    ],
    "echo-rivers": [
        ("echo-rivers", "LOCATED_IN", "sable-crescent", {"primary": True}),
        ("echo-rivers", "CARRIES", "pre-glassfall-transmissions", {}),
        ("echo-ledger-conclave", "STUDIES", "echo-rivers", {}),
    ],
    "the-glass-frontier": [
        ("the-glass-frontier", "ORBITS", "kaleidos", {}),
        ("elves", "BUILT", "the-glass-frontier", {"era": "pre-2240"}),
        ("the-glassfall", "SHATTERED", "the-glass-frontier", {"era": "2240"}),
    ],
    "elves": [
        ("elves", "BUILT", "the-glass-frontier", {"era": "pre-2240"}),
        ("elves", "CREATED", "gnomes", {"era": "pre-2240"}),
        ("elves", "DISAPPEARED_DURING", "signal-famine", {"era": "2250-2280"}),
    ],
    "gnomes": [
        ("elves", "CREATED", "gnomes", {"era": "pre-2240"}),
        ("gnomes", "ATTUNED_TO", "resonance", {}),
    ],
    "fae": [
        ("fae", "DEPENDS_ON", "resonance", {"reason": "coherence aids"}),
        ("fae", "DEPENDS_ON", "gnomes", {"reason": "best coherence aid makers"}),
    ],
    "fermata-station": [
        ("fermata-station", "LOCATED_IN", "the-glass-frontier", {}),
        ("fermata-station", "GOVERNED_BY", "jazzocratic-governance", {}),
        ("shei-lush", "CHAIRS", "fermata-station", {}),
        ("ol-dent", "MAINTAINS", "fermata-station", {"role": "drone lead"}),
    ],
    "the-glassfall": [
        ("the-glassfall", "DESTROYED", "the-glass-frontier", {"partial": True}),
        ("the-glassfall", "CAUSED", "signal-famine", {}),
        ("the-glassfall", "CAUSED", "the-shear", {}),
        ("the-glassfall", "CAUSED", "echo-rivers", {}),
    ],
    "dern-talish": [
        ("dern-talish", "LEADS", "displacement-council", {"title": "First Threshold"}),
        ("dern-talish", "BORN_IN", "the-glass-frontier", {"detail": "mid-drift habs"}),
    ],
    # DM relationships
    "elves-truth": [
        ("elves", "HIDING_FROM", "the-adversary", {"dm_only": True}),
        ("elves", "COOPERATES_WITH", "displacement-council", {"via": "First Threshold", "dm_only": True}),
        ("the-adversary", "DESTROYED", "the-glass-frontier", {"dm_only": True}),
        ("the-adversary", "SEEPING_THROUGH", "bloom-zones", {"dm_only": True}),
    ],
    "dern-talish-truth": [
        ("dern-talish", "COOPERATES_WITH", "elves", {"dm_only": True}),
        ("dern-talish", "POSSESSES", "communication-shard", {"dm_only": True}),
    ],
    "tuners-truth": [
        ("the-dissident", "TAUGHT", "tuners", {"era": "2240-2260", "dm_only": True}),
        ("the-dissident", "MEMBER_OF", "elves", {"dm_only": True}),
    ],
}


def bootstrap():
    driver = GraphDatabase.driver(BOLT_URI, auth=GRAPH_AUTH)

    with driver.session() as session:
        # Clear
        session.run("MATCH (n) DETACH DELETE n")
        print("Graph cleared.")

        # Create indexes
        for idx in ["CREATE INDEX ON :Entity(id)", "CREATE INDEX ON :Section(id)"]:
            try:
                session.run(idx)
            except Exception:
                pass

        entries = collect_entries()
        shells = collect_shells()
        print(f"Found {len(entries)} entries, {len(shells)} shells")

        # --- Create shell entities first ---
        for shell in shells:
            session.run("""
                MERGE (e:Entity {id: $id})
                SET e.title = $title, e.prominence = $prominence,
                    e.tags = $tags, e.status = 'shell'
            """, **shell)

        # --- Create full entities with sections and embeddings ---
        for i, entry in enumerate(entries):
            fm = entry["fm"]
            tags = fm.get("tags", [])
            if isinstance(tags, str):
                tags = [tags]

            session.run("""
                MERGE (e:Entity {id: $id})
                SET e.title = $title, e.type = $type,
                    e.prominence = $prominence, e.tags = $tags,
                    e.alias = $alias, e.region = $region,
                    e.dm_only = $dm, e.file_path = $path,
                    e.status = 'complete'
            """, id=entry["id"], title=fm["title"], type=fm.get("type", ""),
                prominence=fm.get("prominence", ""), tags=tags,
                alias=fm.get("alias", ""), region=fm.get("region", ""),
                dm=entry["is_dm"], path=entry["path"])

            # Create sections with embeddings
            for section in entry["sections"]:
                sec_id = f"{entry['id']}::{section['heading'].lower().replace(' ', '-')}"
                # Build embed context per graph.md spec
                embed_context = f"[ENTITY:{entry['id']} | type:{fm.get('type','')} | prominence:{fm.get('prominence','')}]\n[SECTION:{section['heading']}]\n{section['text'][:2000]}"

                try:
                    vec = embed(embed_context)
                except Exception as ex:
                    print(f"  Embed failed for {sec_id}: {ex}")
                    vec = None

                if vec:
                    session.run("""
                        MERGE (s:Section {id: $sid})
                        SET s.heading = $heading, s.text = $text,
                            s.entity_id = $eid, s.embedding = $vec
                    """, sid=sec_id, heading=section["heading"],
                        text=section["text"], eid=entry["id"], vec=vec)
                else:
                    session.run("""
                        MERGE (s:Section {id: $sid})
                        SET s.heading = $heading, s.text = $text,
                            s.entity_id = $eid
                    """, sid=sec_id, heading=section["heading"],
                        text=section["text"], eid=entry["id"])

                session.run("""
                    MATCH (e:Entity {id: $eid}), (s:Section {id: $sid})
                    MERGE (e)-[:HAS_SECTION {type: $heading}]->(s)
                """, eid=entry["id"], sid=sec_id, heading=section["heading"])

            # Semantic relationships
            for source, rel_type, target, props in extract_semantic_relationships(entry):
                props_str = ", ".join(f"r.{k} = ${k}" for k in props)
                set_clause = f"SET {props_str}" if props_str else ""
                session.run(f"""
                    MERGE (s:Entity {{id: $source}})
                    MERGE (t:Entity {{id: $target}})
                    MERGE (s)-[r:{rel_type}]->(t)
                    {set_clause}
                """, source=source, target=target, **props)

            print(f"  [{i+1}/{len(entries)}] {entry['id']}: {len(entry['sections'])} sections, embedded")

        # --- Stats ---
        result = session.run("MATCH (n) RETURN labels(n)[0] AS label, count(n) AS c ORDER BY c DESC")
        print("\nNode counts:")
        for r in result:
            print(f"  {r['label']:15} {r['c']}")

        result = session.run("MATCH ()-[r]->() RETURN type(r) AS t, count(r) AS c ORDER BY c DESC")
        print("\nRelationship types:")
        for r in result:
            print(f"  {r['t']:25} {r['c']}")

        # Verify embeddings
        result = session.run("MATCH (s:Section) WHERE s.embedding IS NOT NULL RETURN count(s) AS c")
        print(f"\nSections with embeddings: {result.single()['c']}")

    driver.close()
    print("\nBootstrap complete.")


if __name__ == "__main__":
    bootstrap()
