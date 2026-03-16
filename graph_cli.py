#!/usr/bin/env python3
"""Graph CLI — consistent interface for all Memgraph operations.

Usage:
    python graph_cli.py upsert-entity <file.md>     # Create/update entity + sections + embeddings
    python graph_cli.py add-rel <src> <type> <tgt>   # Add typed relationship
    python graph_cli.py rm-rel <src> <type> <tgt>    # Remove relationship
    python graph_cli.py query-neighborhood <id>       # Show entity's graph neighborhood
    python graph_cli.py query-similar <section_id>    # Find similar sections via vector search
    python graph_cli.py check                         # Run all contradiction checks
    python graph_cli.py stats                         # Graph statistics
    python graph_cli.py snapshot [name]               # Save graph snapshot
    python graph_cli.py restore <name>                # Restore from snapshot
    python graph_cli.py snapshots                     # List available snapshots
"""

import argparse
import json
import re
import sys
import urllib.request
from pathlib import Path

from neo4j import GraphDatabase

ROOT = Path(__file__).parent
PLAYER_DIR = ROOT / "player"
DM_DIR = ROOT / "dm"
SNAPSHOT_DIR = ROOT / "work-tracking" / "snapshots"

BOLT_URI = "bolt://192.168.66.3:7688"
GRAPH_AUTH = ("memgraph", "your-secure-password")
EMBED_URL = "http://192.168.66.3:5361/v1/embeddings"
EMBED_MODEL = "nomic-embed-text"


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

def get_driver():
    return GraphDatabase.driver(BOLT_URI, auth=GRAPH_AUTH)


def snapshot_graph(name: str | None = None) -> Path:
    """Save full graph state to a JSON file. Returns the snapshot path."""
    from datetime import datetime
    SNAPSHOT_DIR.mkdir(parents=True, exist_ok=True)

    if not name:
        name = datetime.now().strftime("%Y%m%d-%H%M%S")

    path = SNAPSHOT_DIR / f"{name}.json"
    driver = get_driver()
    snapshot = {"nodes": [], "relationships": [], "embeddings": {}}

    with driver.session() as s:
        result = s.run("MATCH (n) RETURN id(n) AS nid, labels(n) AS labels, properties(n) AS props")
        for r in result:
            props = dict(r["props"])
            has_emb = "embedding" in props
            if has_emb:
                snapshot["embeddings"][str(r["nid"])] = props.pop("embedding")
            snapshot["nodes"].append({
                "nid": r["nid"], "labels": r["labels"], "props": props,
                "has_embedding": has_emb,
            })

        result = s.run("MATCH (a)-[r]->(b) RETURN id(a) AS src, id(b) AS tgt, type(r) AS t, properties(r) AS p")
        for r in result:
            snapshot["relationships"].append({
                "src_nid": r["src"], "tgt_nid": r["tgt"],
                "rel_type": r["t"], "props": dict(r["p"]) if r["p"] else {},
            })

    driver.close()

    with open(path, "w") as f:
        json.dump(snapshot, f)

    n_nodes = len(snapshot["nodes"])
    n_rels = len(snapshot["relationships"])
    n_emb = len(snapshot["embeddings"])
    size_mb = path.stat().st_size / 1024 / 1024
    print(f"Snapshot saved: {path.name} ({n_nodes} nodes, {n_rels} rels, {n_emb} embeddings, {size_mb:.1f}MB)")
    return path


def restore_graph(name: str) -> bool:
    """Restore graph from a snapshot file. DESTRUCTIVE — replaces entire graph."""
    path = SNAPSHOT_DIR / f"{name}.json"
    if not path.exists():
        print(f"Snapshot not found: {path}")
        return False

    with open(path) as f:
        snapshot = json.load(f)

    driver = get_driver()
    with driver.session() as s:
        # Clear
        s.run("MATCH (n) DETACH DELETE n")

        # Recreate nodes (map old nid → new node via temp property)
        nid_to_id = {}  # old nid → entity/section id for matching
        for node in snapshot["nodes"]:
            labels = ":".join(node["labels"])
            props = node["props"]
            nid = node["nid"]

            # Store the old nid temporarily for relationship recreation
            props["_old_nid"] = nid

            # Build SET clause
            param_keys = {k: v for k, v in props.items()}
            set_parts = ", ".join(f"n.{k} = ${k}" for k in param_keys)

            s.run(f"CREATE (n:{labels}) SET {set_parts}", **param_keys)

        # Restore embeddings
        for nid_str, vec in snapshot.get("embeddings", {}).items():
            nid = int(nid_str)
            s.run("MATCH (n) WHERE n._old_nid = $nid SET n.embedding = $vec",
                  nid=nid, vec=vec)

        # Recreate relationships
        for rel in snapshot["relationships"]:
            props = rel["props"]
            props_str = ", ".join(f"r.{k} = ${k}" for k in props)
            set_clause = f"SET {props_str}" if props_str else ""
            s.run(f"""
                MATCH (a), (b)
                WHERE a._old_nid = $src AND b._old_nid = $tgt
                CREATE (a)-[r:{rel['rel_type']}]->(b)
                {set_clause}
            """, src=rel["src_nid"], tgt=rel["tgt_nid"], **props)

        # Remove temp property
        s.run("MATCH (n) WHERE n._old_nid IS NOT NULL REMOVE n._old_nid")

        # Rebuild vector index
        try:
            s.run("DROP VECTOR INDEX section_embeddings")
        except Exception:
            pass
        try:
            s.run('CREATE VECTOR INDEX section_embeddings ON :Section(embedding) '
                  'WITH CONFIG {"dimension": 768, "capacity": 10000, "metric": "cos"}')
        except Exception:
            pass

        r = s.run("MATCH (n) RETURN count(n) AS c").single()
        print(f"Restored: {r['c']} nodes")
        r = s.run("MATCH ()-[r]->() RETURN count(r) AS c").single()
        print(f"  {r['c']} relationships")

    driver.close()
    return True


def auto_snapshot(operation: str):
    """Take an automatic pre-operation snapshot."""
    from datetime import datetime
    name = f"auto-{operation}-{datetime.now().strftime('%Y%m%d-%H%M%S')}"
    snapshot_graph(name)

    # Keep only last 5 auto snapshots
    auto_files = sorted(SNAPSHOT_DIR.glob("auto-*.json"), key=lambda p: p.stat().st_mtime)
    while len(auto_files) > 5:
        old = auto_files.pop(0)
        old.unlink()
        print(f"  Pruned old snapshot: {old.name}")


def embed(text: str) -> list[float]:
    req = urllib.request.Request(
        EMBED_URL,
        data=json.dumps({"model": EMBED_MODEL, "input": text[:8000]}).encode(),
        headers={"Content-Type": "application/json"},
    )
    return json.loads(urllib.request.urlopen(req).read())["data"][0]["embedding"]


def parse_frontmatter(path: Path) -> tuple[dict, str]:
    text = path.read_text()
    m = re.match(r"^---\n(.*?\n)---\n?", text, re.DOTALL)
    if not m:
        return {}, text
    fm = {}
    for line in m.group(1).splitlines():
        kv = re.match(r"^(\w[\w-]*):\s*(.*)", line)
        if kv:
            k, v = kv.group(1), kv.group(2).strip()
            lm = re.match(r"^\[(.*)\]$", v)
            if lm:
                fm[k] = [x.strip().strip("'\"") for x in lm.group(1).split(",") if x.strip()]
            else:
                fm[k] = v.strip("'\"")
    return fm, text[m.end():]


def extract_sections(body: str) -> list[dict]:
    sections = []
    cur_prose = cur_graph = None
    lines = []
    for line in body.split("\n"):
        hm = re.match(r"^##\s+(.+)", line)
        if hm:
            if cur_prose is not None:
                sections.append({"prose": cur_prose, "graph": cur_graph,
                                 "text": "\n".join(lines).strip()})
            raw = hm.group(1).strip()
            cm = re.search(r"<!--\s*(.+?)\s*-->", raw)
            if cm:
                cur_graph = cm.group(1)
                cur_prose = re.sub(r"\s*<!--.*?-->\s*$", "", raw).strip()
            else:
                cur_graph = cur_prose = raw
            cur_prose = re.sub(r"\[future:([^\]]+)\]", r"\1", cur_prose)
            lines = []
        elif cur_prose is not None:
            lines.append(line)
    if cur_prose is not None:
        sections.append({"prose": cur_prose, "graph": cur_graph,
                         "text": "\n".join(lines).strip()})
    return sections


def clean_prose(text: str) -> str:
    text = re.sub(r"\[([^\]]*)\]\([^)]+\)", r"\1", text)
    text = re.sub(r"\[future:([^\]]+)\]", r"\1", text)
    return text


def build_entity_block(entity_id: str, session) -> str | None:
    result = session.run("""
        MATCH (e:Entity {id: $eid})
        RETURN e.type AS type, e.prominence AS prom,
               e.valid_from AS vf, e.valid_to AS vt
    """, eid=entity_id)
    r = result.single()
    if not r:
        return None

    parts = [f"type:{r['type'] or '?'}"]
    if r["prom"]:
        parts.append(f"prominence:{r['prom']}")
    if r["vf"]:
        parts.append(f"from:{r['vf']}")
    if r["vt"]:
        parts.append(f"to:{r['vt']}")

    result = session.run("""
        MATCH (e:Entity {id: $eid})-[rel]->(target:Entity)
        WHERE type(rel) <> 'HAS_SECTION' AND type(rel) <> 'MENTIONS'
        AND type(rel) <> 'CAUSES' AND type(rel) <> 'EXTENDS'
        AND type(rel) <> 'ALLOWS_HEADING'
        RETURN type(rel) AS rel_type, target.id AS target_id
        LIMIT 5
    """, eid=entity_id)
    for r2 in result:
        parts.append(f"{r2['rel_type'].lower()}:{r2['target_id']}")

    return f"[ENTITY:{entity_id} | {' | '.join(parts)}]"


def detect_mentions(text: str, session) -> set[str]:
    result = session.run("""
        MATCH (e:Entity)
        WHERE e.title IS NOT NULL AND size(e.title) > 2
        RETURN e.id AS id, e.title AS title
    """)
    entities = [(r["id"], r["title"]) for r in result]
    entities.sort(key=lambda x: len(x[1]), reverse=True)

    clean = clean_prose(text).lower()
    mentioned = set()
    for eid, title in entities:
        if title.lower() in clean or eid.replace("-", " ") in clean:
            mentioned.add(eid)
    return mentioned


def enrich_and_embed(entity_id: str, heading: str, text: str, session) -> list[float]:
    """Build enriched embed string and return vector."""
    blocks = []
    primary = build_entity_block(entity_id, session)
    if primary:
        blocks.append(primary)

    mentioned = detect_mentions(text, session)
    mentioned.discard(entity_id)
    for mid in list(mentioned)[:5]:
        block = build_entity_block(mid, session)
        if block:
            blocks.append(block)

    prefix = "\n".join(blocks)
    clean = clean_prose(text)
    embed_str = f"{prefix}\n\n[SECTION:{heading}]\n{clean[:2000]}"
    return embed(embed_str)


# ---------------------------------------------------------------------------
# Commands
# ---------------------------------------------------------------------------

def cmd_upsert_entity(args):
    """Create or update an entity from a markdown file. Handles sections + embeddings."""
    path = Path(args.file)
    if not path.exists():
        print(f"File not found: {path}")
        return 1

    # Auto-snapshot before destructive operation
    auto_snapshot("upsert")

    fm, body = parse_frontmatter(path)
    if not fm.get("title"):
        print(f"No title in frontmatter: {path}")
        return 1

    entity_id = path.stem
    rel = str(path.relative_to(ROOT)) if path.is_relative_to(ROOT) else str(path)
    is_dm = fm.get("dm") == "true" or "dm/" in rel
    tags = fm.get("tags", [])
    if isinstance(tags, str):
        tags = [tags]

    sections = extract_sections(body)
    driver = get_driver()

    with driver.session() as s:
        # Upsert entity node
        s.run("""
            MERGE (e:Entity {id: $id})
            SET e.title = $title, e.type = $type, e.prominence = $prom,
                e.tags = $tags, e.alias = $alias, e.region = $region,
                e.dm_only = $dm, e.file_path = $path, e.status = 'complete'
        """, id=entity_id, title=fm["title"], type=fm.get("type", ""),
            prom=fm.get("prominence", ""), tags=tags,
            alias=fm.get("alias", ""), region=fm.get("region", ""),
            dm=is_dm, path=rel)
        print(f"Entity: {entity_id} ({fm['title']})")

        # Delete old sections and HAS_SECTION edges for this entity
        s.run("""
            MATCH (e:Entity {id: $eid})-[:HAS_SECTION]->(s:Section)
            DETACH DELETE s
        """, eid=entity_id)

        # Create sections with embeddings
        for sec in sections:
            sid = f"{entity_id}::{sec['graph'].lower().replace(' ', '-')}"
            vec = enrich_and_embed(entity_id, sec["graph"], sec["text"], s)

            s.run("""
                CREATE (sec:Section {id: $sid})
                SET sec.heading = $graph, sec.prose_heading = $prose,
                    sec.text = $text, sec.entity_id = $eid, sec.embedding = $vec
            """, sid=sid, graph=sec["graph"], prose=sec["prose"],
                text=sec["text"], eid=entity_id, vec=vec)

            s.run("""
                MATCH (e:Entity {id: $eid}), (sec:Section {id: $sid})
                MERGE (e)-[:HAS_SECTION {type: $graph}]->(sec)
            """, eid=entity_id, sid=sid, graph=sec["graph"])

        # Update MENTIONS edges for this entity's sections
        s.run("""
            MATCH (e:Entity {id: $eid})-[:HAS_SECTION]->(sec:Section)-[m:MENTIONS]->()
            DELETE m
        """, eid=entity_id)

        for sec in sections:
            sid = f"{entity_id}::{sec['graph'].lower().replace(' ', '-')}"
            mentioned = detect_mentions(sec["text"], s)
            mentioned.discard(entity_id)
            for mid in mentioned:
                s.run("""
                    MATCH (sec:Section {id: $sid}), (t:Entity {id: $tid})
                    MERGE (sec)-[:MENTIONS]->(t)
                """, sid=sid, tid=mid)

        # Rebuild vector index
        try:
            s.run("DROP VECTOR INDEX section_embeddings")
        except Exception:
            pass
        s.run('CREATE VECTOR INDEX section_embeddings ON :Section(embedding) '
              'WITH CONFIG {"dimension": 768, "capacity": 10000, "metric": "cos"}')

        print(f"  {len(sections)} sections embedded")
        print(f"  Vector index rebuilt")

    driver.close()
    return 0


def cmd_add_rel(args):
    """Add a typed relationship between two entities."""
    driver = get_driver()
    with driver.session() as s:
        # Validate relationship type exists in taxonomy
        result = s.run("""
            MATCH (t:Taxonomy:RelationType {name: $rt})
            RETURN t.category AS cat
        """, rt=args.rel_type)
        record = result.single()
        if not record:
            print(f"ERROR: '{args.rel_type}' is not in the relationship taxonomy")
            result = s.run("""
                MATCH (t:Taxonomy:RelationType)
                WHERE t.category <> 'banned'
                RETURN t.name ORDER BY t.name
            """)
            print("Valid types:")
            for r in result:
                print(f"  {r['t.name']}")
            driver.close()
            return 1
        if record["cat"] == "banned":
            print(f"ERROR: '{args.rel_type}' is banned")
            driver.close()
            return 1

        # Create the relationship
        props = {}
        if args.dm:
            props["dm_only"] = True

        props_str = ", ".join(f"r.{k} = ${k}" for k in props)
        set_clause = f"SET {props_str}" if props_str else ""

        s.run(f"""
            MERGE (a:Entity {{id: $src}})
            MERGE (b:Entity {{id: $tgt}})
            MERGE (a)-[r:{args.rel_type}]->(b)
            {set_clause}
        """, src=args.source, tgt=args.target, **props)

        print(f"{args.source} -[{args.rel_type}]-> {args.target}")
    driver.close()
    return 0


def cmd_rm_rel(args):
    """Remove a relationship between two entities."""
    driver = get_driver()
    with driver.session() as s:
        result = s.run(f"""
            MATCH (a:Entity {{id: $src}})-[r:{args.rel_type}]->(b:Entity {{id: $tgt}})
            DELETE r
            RETURN count(r) AS deleted
        """, src=args.source, tgt=args.target)
        count = result.single()["deleted"]
        print(f"Deleted {count} {args.rel_type} edge(s): {args.source} -> {args.target}")
    driver.close()
    return 0


def cmd_neighborhood(args):
    """Show an entity's graph neighborhood."""
    driver = get_driver()
    with driver.session() as s:
        # Entity info
        result = s.run("""
            MATCH (e:Entity {id: $eid})
            RETURN e.title AS title, e.type AS type, e.prominence AS prom,
                   e.status AS status, e.valid_from AS vf, e.valid_to AS vt
        """, eid=args.entity_id)
        r = result.single()
        if not r:
            print(f"Entity not found: {args.entity_id}")
            driver.close()
            return 1
        print(f"=== {r['title']} ({args.entity_id}) ===")
        print(f"  type={r['type']}  prominence={r['prom']}  status={r['status']}")
        if r["vf"] or r["vt"]:
            print(f"  temporal: {r['vf'] or '?'} – {r['vt'] or 'present'}")

        # Outgoing
        result = s.run("""
            MATCH (e:Entity {id: $eid})-[r]->(t:Entity)
            WHERE type(r) <> 'HAS_SECTION' AND type(r) <> 'ALLOWS_HEADING'
            RETURN type(r) AS rel, t.id AS tid, coalesce(t.title, t.id) AS title
            ORDER BY type(r), t.id
        """, eid=args.entity_id)
        out = list(result)
        if out:
            print(f"\n  Outgoing ({len(out)}):")
            for r in out:
                print(f"    -{r['rel']}-> {r['title']} ({r['tid']})")

        # Incoming
        result = s.run("""
            MATCH (s:Entity)-[r]->(e:Entity {id: $eid})
            WHERE type(r) <> 'HAS_SECTION' AND type(r) <> 'ALLOWS_HEADING'
            AND type(r) <> 'MENTIONS'
            RETURN type(r) AS rel, s.id AS sid, coalesce(s.title, s.id) AS title
            ORDER BY type(r), s.id
        """, eid=args.entity_id)
        inc = list(result)
        if inc:
            print(f"\n  Incoming ({len(inc)}):")
            for r in inc:
                print(f"    <-{r['rel']}- {r['title']} ({r['sid']})")

        # Sections
        result = s.run("""
            MATCH (e:Entity {id: $eid})-[:HAS_SECTION]->(s:Section)
            RETURN s.heading AS heading, coalesce(s.prose_heading, s.heading) AS prose
            ORDER BY s.heading
        """, eid=args.entity_id)
        secs = list(result)
        if secs:
            print(f"\n  Sections ({len(secs)}):")
            for r in secs:
                if r["prose"] != r["heading"]:
                    print(f"    {r['prose']} → {r['heading']}")
                else:
                    print(f"    {r['heading']}")

    driver.close()
    return 0


def cmd_similar(args):
    """Find sections similar to the given section via vector search."""
    driver = get_driver()
    with driver.session() as s:
        result = s.run("""
            MATCH (q:Section {id: $sid})
            WITH q.embedding AS qv
            CALL vector_search.search("section_embeddings", $n, qv)
            YIELD node, similarity
            WITH node, similarity
            WHERE node.id <> $sid
            RETURN node.entity_id AS entity, node.heading AS heading,
                   coalesce(node.prose_heading, node.heading) AS prose,
                   round(similarity * 10000) / 10000 AS sim
        """, sid=args.section_id, n=args.count + 1)
        results = list(result)
        if not results:
            print(f"Section not found or no results: {args.section_id}")
            driver.close()
            return 1
        print(f"Similar to {args.section_id}:")
        for r in results:
            print(f"  {r['sim']}  {r['entity']:25} {r['prose']}")
    driver.close()
    return 0


def cmd_check(args):
    """Run all graph contradiction checks."""
    driver = get_driver()
    issues = []

    with driver.session() as s:
        # G1: Dangling references
        result = s.run("""
            MATCH (sec:Section)-[:MENTIONS]->(e:Entity)
            WHERE e.title IS NULL OR e.title = ''
            RETURN DISTINCT sec.entity_id AS source, e.id AS dangling
        """)
        for r in result:
            issues.append(f"G1 DANGLING: '{r['source']}' mentions '{r['dangling']}' (no title)")

        # G2: Causal cycles
        result = s.run("""
            MATCH path = (a:Entity)-[:CAUSES*2..10]->(a)
            RETURN [n IN nodes(path) | coalesce(n.title, n.id)] AS cycle
            LIMIT 5
        """)
        for r in result:
            issues.append(f"G2 CYCLE: {' → '.join(r['cycle'][:5])}...")

        # G3: Temporal paradox
        result = s.run("""
            MATCH (a:Entity)-[:CAUSES]->(b:Entity)
            WHERE a.valid_to IS NOT NULL AND b.valid_from IS NOT NULL
            AND b.valid_from > a.valid_to
            RETURN a.title AS src, a.valid_to AS src_end,
                   b.title AS tgt, b.valid_from AS tgt_start
        """)
        for r in result:
            issues.append(f"G3 TEMPORAL: '{r['src']}' (ends {r['src_end']}) causes "
                         f"'{r['tgt']}' (starts {r['tgt_start']})")

        # G5: Antisymmetry
        for rt in ["GOVERNS", "LEADS", "CREATED", "DESTROYED", "BUILT",
                    "DESIGNED", "TRAINS", "REGULATES", "CHAIRS"]:
            result = s.run(f"""
                MATCH (a:Entity)-[:{rt}]->(b:Entity)-[:{rt}]->(a)
                RETURN a.title AS a_t, b.title AS b_t
            """)
            for r in result:
                issues.append(f"G5 ANTISYMMETRY: '{r['a_t']}' and '{r['b_t']}' both {rt}")

        # G6: Spatial cycles
        result = s.run("""
            MATCH path = (a:Entity)-[:PART_OF*2..5]->(a)
            RETURN [n IN nodes(path) | coalesce(n.title, n.id)] AS cycle
            LIMIT 5
        """)
        for r in result:
            issues.append(f"G6 SPATIAL: {' → '.join(r['cycle'])}")

        # Banned relationships
        result = s.run("""
            MATCH (t:Taxonomy:RelationType {category: 'banned'})
            RETURN t.name AS banned
        """)
        for r in result:
            count_r = s.run(f"MATCH ()-[r:{r['banned']}]->() RETURN count(r) AS c")
            c = count_r.single()["c"]
            if c > 0:
                issues.append(f"BANNED: {c} '{r['banned']}' edge(s)")

    driver.close()

    if issues:
        print(f"{len(issues)} issue(s):")
        for i in issues:
            print(f"  {i}")
        return 1
    else:
        print("No contradictions detected.")
        return 0


def cmd_stats(args):
    """Print graph statistics."""
    driver = get_driver()
    with driver.session() as s:
        r = s.run("MATCH (e:Entity) RETURN count(e) AS c").single()
        print(f"Entities: {r['c']}")
        r = s.run("MATCH (e:Entity) WHERE e.status='complete' RETURN count(e) AS c").single()
        print(f"  complete: {r['c']}")
        r = s.run("MATCH (e:Entity) WHERE e.status='shell' RETURN count(e) AS c").single()
        print(f"  shell: {r['c']}")
        r = s.run("MATCH (s:Section) RETURN count(s) AS c").single()
        print(f"Sections: {r['c']}")
        r = s.run("MATCH (s:Section) WHERE s.embedding IS NOT NULL RETURN count(s) AS c").single()
        print(f"  with embeddings: {r['c']}")
        r = s.run("MATCH (t:Taxonomy) RETURN count(t) AS c").single()
        print(f"Taxonomy: {r['c']}")

        r = s.run("""
            MATCH ()-[r]->()
            WHERE type(r) <> 'HAS_SECTION' AND type(r) <> 'ALLOWS_HEADING'
            RETURN type(r) AS t, count(r) AS c ORDER BY c DESC
        """)
        print(f"\nRelationships:")
        for rec in r:
            print(f"  {rec['c']:4}x {rec['t']}")

        result = s.run('CALL vector_search.show_index_info() YIELD index_name, size RETURN *')
        for rec in result:
            print(f"\nVector index: {rec['index_name']} ({rec['size']} vectors)")

    driver.close()
    return 0


def cmd_snapshot(args):
    """Save a graph snapshot."""
    snapshot_graph(args.name)
    return 0


def cmd_restore(args):
    """Restore from a snapshot. DESTRUCTIVE."""
    print(f"WARNING: This will replace the entire graph with snapshot '{args.name}'.")
    if restore_graph(args.name):
        return 0
    return 1


def cmd_list_snapshots(args):
    """List available snapshots."""
    SNAPSHOT_DIR.mkdir(parents=True, exist_ok=True)
    files = sorted(SNAPSHOT_DIR.glob("*.json"), key=lambda p: p.stat().st_mtime, reverse=True)
    if not files:
        print("No snapshots found.")
        return 0
    print(f"Snapshots ({len(files)}):")
    for f in files:
        size_mb = f.stat().st_size / 1024 / 1024
        print(f"  {f.stem:40} {size_mb:.1f}MB")
    return 0


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main():
    parser = argparse.ArgumentParser(description="Graph CLI for Glass Frontier lore")
    sub = parser.add_subparsers(dest="command")

    p = sub.add_parser("upsert-entity", help="Create/update entity from markdown file")
    p.add_argument("file", help="Path to .md file")

    p = sub.add_parser("add-rel", help="Add typed relationship")
    p.add_argument("source", help="Source entity ID")
    p.add_argument("rel_type", help="Relationship type (e.g. GOVERNS, LOCATED_IN)")
    p.add_argument("target", help="Target entity ID")
    p.add_argument("--dm", action="store_true", help="Mark as DM-only")

    p = sub.add_parser("rm-rel", help="Remove relationship")
    p.add_argument("source")
    p.add_argument("rel_type")
    p.add_argument("target")

    p = sub.add_parser("query-neighborhood", help="Show entity neighborhood")
    p.add_argument("entity_id")

    p = sub.add_parser("query-similar", help="Find similar sections")
    p.add_argument("section_id", help="Section ID (e.g. resonance::how-it-works)")
    p.add_argument("-n", "--count", type=int, default=10, help="Number of results")

    sub.add_parser("check", help="Run contradiction checks")
    sub.add_parser("stats", help="Graph statistics")

    p = sub.add_parser("snapshot", help="Save graph snapshot")
    p.add_argument("name", nargs="?", help="Snapshot name (default: timestamp)")

    p = sub.add_parser("restore", help="Restore from snapshot (DESTRUCTIVE)")
    p.add_argument("name", help="Snapshot name")

    sub.add_parser("snapshots", help="List available snapshots")

    args = parser.parse_args()
    if not args.command:
        parser.print_help()
        return 1

    commands = {
        "upsert-entity": cmd_upsert_entity,
        "add-rel": cmd_add_rel,
        "rm-rel": cmd_rm_rel,
        "query-neighborhood": cmd_neighborhood,
        "query-similar": cmd_similar,
        "check": cmd_check,
        "stats": cmd_stats,
        "snapshot": cmd_snapshot,
        "restore": cmd_restore,
        "snapshots": cmd_list_snapshots,
    }
    return commands[args.command](args)


if __name__ == "__main__":
    sys.exit(main())
