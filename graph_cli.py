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


def enrich_and_embed(entity_id: str, heading: str, text: str, session) -> tuple[list[float], list[float]]:
    """Build enriched + plain embed strings and return both vectors."""
    clean = clean_prose(text)

    # Enriched embedding (entity-attribute prefix injection)
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
    enriched_str = f"{prefix}\n\n[SECTION:{heading}]\n{clean[:2000]}"
    vec_enriched = embed(enriched_str)

    # Plain embedding (prose only, no attribute injection)
    plain_str = f"[SECTION:{heading}]\n{clean[:2000]}"
    vec_plain = embed(plain_str)

    return vec_enriched, vec_plain


def _edge_suffix(r) -> str:
    """Format temporal bounds and DM flag for edge display."""
    parts = []
    if r.get("vf") is not None or r.get("vt") is not None:
        f = r.get("vf") or "?"
        t = r.get("vt") or "present"
        parts.append(f"[{f}–{t}]")
    if r.get("dm"):
        parts.append("(DM)")
    return "  " + " ".join(parts) if parts else ""


# ---------------------------------------------------------------------------
# Commands
# ---------------------------------------------------------------------------

META_FILES = {"index.md", "tags.md", "timeline.md", "causality.md",
              "design-principles.md", "world-seeds.md"}


def cmd_upsert_entity(args):
    """Create or update an entity from a markdown file. Handles sections + embeddings."""
    path = Path(args.file)
    if not path.exists():
        print(f"File not found: {path}")
        return 1
    if path.name in META_FILES:
        print(f"Skipping meta file: {path.name}")
        return 0

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
        narr_role = fm.get("narrative_role", "")
        s.run("""
            MERGE (e:Entity {id: $id})
            SET e.title = $title, e.type = $type, e.prominence = $prom,
                e.tags = $tags, e.alias = $alias, e.region = $region,
                e.dm_only = $dm, e.file_path = $path, e.status = 'complete',
                e.narrative_role = $narr_role
        """, id=entity_id, title=fm["title"], type=fm.get("type", ""),
            prom=fm.get("prominence", ""), tags=tags,
            alias=fm.get("alias", ""), region=fm.get("region", ""),
            dm=is_dm, path=rel, narr_role=narr_role)
        role_str = f"  narrative_role={narr_role}" if narr_role else ""
        print(f"Entity: {entity_id} ({fm['title']}){role_str}")

        # Delete old sections and HAS_SECTION edges for this entity
        s.run("""
            MATCH (e:Entity {id: $eid})-[:HAS_SECTION]->(s:Section)
            DETACH DELETE s
        """, eid=entity_id)

        # Create sections with embeddings (enriched + plain)
        for sec in sections:
            sid = f"{entity_id}::{sec['graph'].lower().replace(' ', '-')}"
            vec_enriched, vec_plain = enrich_and_embed(entity_id, sec["graph"], sec["text"], s)

            s.run("""
                CREATE (sec:Section {id: $sid})
                SET sec.heading = $graph, sec.prose_heading = $prose,
                    sec.text = $text, sec.entity_id = $eid,
                    sec.embedding = $vec_enriched,
                    sec.embedding_plain = $vec_plain
            """, sid=sid, graph=sec["graph"], prose=sec["prose"],
                text=sec["text"], eid=entity_id,
                vec_enriched=vec_enriched, vec_plain=vec_plain)

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

        # Rebuild vector indices (enriched + plain)
        for idx_name, idx_prop in [("section_embeddings", "embedding"),
                                    ("section_embeddings_plain", "embedding_plain")]:
            try:
                s.run(f"DROP VECTOR INDEX {idx_name}")
            except Exception:
                pass
            s.run(f'CREATE VECTOR INDEX {idx_name} ON :Section({idx_prop}) '
                  'WITH CONFIG {"dimension": 768, "capacity": 10000, "metric": "cos"}')

        print(f"  {len(sections)} sections embedded (enriched + plain)")
        print(f"  Vector indices rebuilt")

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

        # Check if this rel type expects temporal bounds
        temporal_result = s.run("""
            MATCH (t:Taxonomy:RelationType {name: $rt})
            RETURN t.temporal AS temporal
        """, rt=args.rel_type)
        temporal_rec = temporal_result.single()
        is_temporal = temporal_rec and temporal_rec["temporal"]

        if is_temporal and args.valid_from is None:
            print(f"WARNING: {args.rel_type} is a temporal relationship type — "
                  f"consider adding --from YEAR")

        # Create the relationship
        props = {}
        if args.dm:
            props["dm_only"] = True
        if args.valid_from is not None:
            props["valid_from"] = args.valid_from
        if args.valid_to is not None:
            props["valid_to"] = args.valid_to

        props_str = ", ".join(f"r.{k} = ${k}" for k in props)
        set_clause = f"SET {props_str}" if props_str else ""

        s.run(f"""
            MERGE (a:Entity {{id: $src}})
            MERGE (b:Entity {{id: $tgt}})
            MERGE (a)-[r:{args.rel_type}]->(b)
            {set_clause}
        """, src=args.source, tgt=args.target, **props)

        temporal_str = ""
        if args.valid_from is not None or args.valid_to is not None:
            f = args.valid_from or "?"
            t = args.valid_to or "present"
            temporal_str = f"  [{f}–{t}]"
        print(f"{args.source} -[{args.rel_type}]-> {args.target}{temporal_str}")
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
                   e.status AS status, e.valid_from AS vf, e.valid_to AS vt,
                   e.narrative_role AS narr_role
        """, eid=args.entity_id)
        r = result.single()
        if not r:
            print(f"Entity not found: {args.entity_id}")
            driver.close()
            return 1
        role_str = f"  role={r['narr_role']}" if r.get("narr_role") else ""
        print(f"=== {r['title']} ({args.entity_id}) ===")
        print(f"  type={r['type']}  prominence={r['prom']}  status={r['status']}{role_str}")
        if r["vf"] or r["vt"]:
            print(f"  temporal: {r['vf'] or '?'} – {r['vt'] or 'present'}")

        # Outgoing
        result = s.run("""
            MATCH (e:Entity {id: $eid})-[r]->(t:Entity)
            WHERE type(r) <> 'HAS_SECTION' AND type(r) <> 'ALLOWS_HEADING'
            RETURN type(r) AS rel, t.id AS tid, coalesce(t.title, t.id) AS title,
                   r.valid_from AS vf, r.valid_to AS vt, r.dm_only AS dm
            ORDER BY type(r), t.id
        """, eid=args.entity_id)
        out = list(result)
        if out:
            print(f"\n  Outgoing ({len(out)}):")
            for r in out:
                suffix = _edge_suffix(r)
                print(f"    -{r['rel']}-> {r['title']} ({r['tid']}){suffix}")

        # Incoming
        result = s.run("""
            MATCH (s:Entity)-[r]->(e:Entity {id: $eid})
            WHERE type(r) <> 'HAS_SECTION' AND type(r) <> 'ALLOWS_HEADING'
            AND type(r) <> 'MENTIONS'
            RETURN type(r) AS rel, s.id AS sid, coalesce(s.title, s.id) AS title,
                   r.valid_from AS vf, r.valid_to AS vt, r.dm_only AS dm
            ORDER BY type(r), s.id
        """, eid=args.entity_id)
        inc = list(result)
        if inc:
            print(f"\n  Incoming ({len(inc)}):")
            for r in inc:
                suffix = _edge_suffix(r)
                print(f"    <-{r['rel']}- {r['title']} ({r['sid']}){suffix}")

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


def cmd_query_at(args):
    """Show an entity's graph neighborhood at a specific point in time."""
    year = args.year
    driver = get_driver()
    with driver.session() as s:
        # Entity info — check it exists at this time
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

        vf = r["vf"]
        vt = r["vt"]
        entity_active = ((vf is None or vf <= year) and
                         (vt is None or vt >= year))
        status = "ACTIVE" if entity_active else "NOT YET ACTIVE" if (vf and vf > year) else "ENDED"

        print(f"=== {r['title']} ({args.entity_id}) at {year} CE — {status} ===")
        print(f"  type={r['type']}  prominence={r['prom']}")
        if vf or vt:
            print(f"  entity lifespan: {vf or '?'} – {vt or 'present'}")

        # Filter function: is an edge active at this year?
        # An edge is active if:
        #   - edge.valid_from <= year (or edge has no valid_from — assume always active)
        #   - edge.valid_to >= year (or edge has no valid_to — assume still active)
        # AND the connected entity exists at this time

        # Outgoing
        result = s.run("""
            MATCH (e:Entity {id: $eid})-[r]->(t:Entity)
            WHERE type(r) <> 'HAS_SECTION' AND type(r) <> 'ALLOWS_HEADING'
            AND (r.valid_from IS NULL OR r.valid_from <= $year)
            AND (r.valid_to IS NULL OR r.valid_to >= $year)
            AND (t.valid_from IS NULL OR t.valid_from <= $year)
            AND (t.valid_to IS NULL OR t.valid_to >= $year)
            RETURN type(r) AS rel, t.id AS tid, coalesce(t.title, t.id) AS title,
                   r.valid_from AS vf, r.valid_to AS vt, r.dm_only AS dm
            ORDER BY type(r), t.id
        """, eid=args.entity_id, year=year)
        out = list(result)
        if out:
            print(f"\n  Outgoing ({len(out)}):")
            for r in out:
                suffix = _edge_suffix(r)
                print(f"    -{r['rel']}-> {r['title']} ({r['tid']}){suffix}")

        # Incoming
        result = s.run("""
            MATCH (s:Entity)-[r]->(e:Entity {id: $eid})
            WHERE type(r) <> 'HAS_SECTION' AND type(r) <> 'ALLOWS_HEADING'
            AND type(r) <> 'MENTIONS'
            AND (r.valid_from IS NULL OR r.valid_from <= $year)
            AND (r.valid_to IS NULL OR r.valid_to >= $year)
            AND (s.valid_from IS NULL OR s.valid_from <= $year)
            AND (s.valid_to IS NULL OR s.valid_to >= $year)
            RETURN type(r) AS rel, s.id AS sid, coalesce(s.title, s.id) AS title,
                   r.valid_from AS vf, r.valid_to AS vt, r.dm_only AS dm
            ORDER BY type(r), s.id
        """, eid=args.entity_id, year=year)
        inc = list(result)
        if inc:
            print(f"\n  Incoming ({len(inc)}):")
            for r in inc:
                suffix = _edge_suffix(r)
                print(f"    <-{r['rel']}- {r['title']} ({r['sid']}){suffix}")

        if not out and not inc:
            print(f"\n  No active relationships at {year} CE.")

    driver.close()
    return 0


def cmd_similar(args):
    """Find sections similar to the given section via vector search."""
    idx = "section_embeddings_plain" if args.plain else "section_embeddings"
    prop = "embedding_plain" if args.plain else "embedding"
    label = "plain" if args.plain else "enriched"
    driver = get_driver()
    with driver.session() as s:
        result = s.run(f"""
            MATCH (q:Section {{id: $sid}})
            WITH q.{prop} AS qv
            CALL vector_search.search("{idx}", $n, qv)
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
        print(f"Similar to {args.section_id} ({label}):")
        for r in results:
            print(f"  {r['sim']}  {r['entity']:25} {r['prose']}")
    driver.close()
    return 0


def cmd_overlap(args):
    """Search for semantic overlap with a concept description."""
    driver = get_driver()
    vec = embed(args.query)
    with driver.session() as s:
        result = s.run("""
            CALL vector_search.search("section_embeddings", $n, $vec)
            YIELD node, similarity
            WITH node, similarity
            RETURN node.entity_id AS entity, node.heading AS canonical,
                   coalesce(node.prose_heading, node.heading) AS section,
                   round(similarity * 1000) / 1000 AS sim
            ORDER BY sim DESC
        """, vec=vec, n=args.count)
        results = list(result)
        if not results:
            print("No results.")
            driver.close()
            return 1

        # Group by entity for cleaner output
        by_entity = {}
        for r in results:
            eid = r["entity"]
            if eid not in by_entity:
                by_entity[eid] = []
            by_entity[eid].append((r["section"], r["canonical"], r["sim"]))

        print(f"Semantic overlap for: \"{args.query}\"")
        print(f"{'─' * 60}")
        for eid, sections in sorted(by_entity.items(), key=lambda x: max(s[2] for s in x[1]), reverse=True):
            top_sim = max(s[2] for s in sections)
            print(f"\n  {eid} (best: {top_sim})")
            for section, canonical, sim in sorted(sections, key=lambda x: x[2], reverse=True):
                label = f"{section}" if section == canonical else f"{section} [{canonical}]"
                print(f"    {sim}  {label}")

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

        # G8: Edge temporal coherence
        # Get all temporal relationship types from taxonomy
        temp_types = s.run("""
            MATCH (t:Taxonomy:RelationType)
            WHERE t.temporal = true
            RETURN t.name AS name
        """)
        temporal_names = [r["name"] for r in temp_types]

        for rt in temporal_names:
            result = s.run(f"""
                MATCH (a:Entity)-[r:{rt}]->(b:Entity)
                RETURN a.id AS src, a.title AS src_t,
                       a.valid_from AS src_vf, a.valid_to AS src_vt,
                       b.id AS tgt, b.title AS tgt_t,
                       b.valid_from AS tgt_vf, b.valid_to AS tgt_vt,
                       r.valid_from AS r_vf, r.valid_to AS r_vt,
                       r.dm_only AS dm
            """)
            for r in result:
                r_vf = r["r_vf"]
                r_vt = r["r_vt"]
                is_dm = r.get("dm")
                label = f"{r['src']} -[{rt}]-> {r['tgt']}"

                # Warn: temporal edge missing valid_from
                if r_vf is None:
                    issues.append(f"G8 MISSING_FROM: {label} — temporal edge has no valid_from")
                    continue

                # Edge starts before source exists
                if r["src_vf"] is not None and r_vf < r["src_vf"]:
                    issues.append(
                        f"G8 EARLY_START: {label} — edge starts {r_vf} "
                        f"but {r['src_t']} starts {r['src_vf']}")

                # Edge starts before target exists
                if r["tgt_vf"] is not None and r_vf < r["tgt_vf"]:
                    issues.append(
                        f"G8 EARLY_START: {label} — edge starts {r_vf} "
                        f"but {r['tgt_t']} starts {r['tgt_vf']}")

                # Skip LATE_END for DM edges — these intentionally extend
                # past public entity bounds (e.g. secretly-active elves)
                if is_dm:
                    continue

                # Edge continues after source ends
                if r["src_vt"] is not None:
                    edge_end = r_vt if r_vt is not None else 9999
                    if edge_end > r["src_vt"]:
                        issues.append(
                            f"G8 LATE_END: {label} — edge ends {r_vt or 'present'} "
                            f"but {r['src_t']} ends {r['src_vt']}")

                # Edge continues after target ends
                if r["tgt_vt"] is not None:
                    edge_end = r_vt if r_vt is not None else 9999
                    if edge_end > r["tgt_vt"]:
                        issues.append(
                            f"G8 LATE_END: {label} — edge ends {r_vt or 'present'} "
                            f"but {r['tgt_t']} ends {r['tgt_vt']}")

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
    p.add_argument("--from", dest="valid_from", type=int, metavar="YEAR",
                   help="Year the relationship began")
    p.add_argument("--to", dest="valid_to", type=int, metavar="YEAR",
                   help="Year the relationship ended (omit for ongoing)")

    p = sub.add_parser("rm-rel", help="Remove relationship")
    p.add_argument("source")
    p.add_argument("rel_type")
    p.add_argument("target")

    p = sub.add_parser("query-neighborhood", help="Show entity neighborhood")
    p.add_argument("entity_id")

    p = sub.add_parser("query-at", help="Show entity neighborhood at a point in time")
    p.add_argument("entity_id")
    p.add_argument("--year", type=int, required=True, help="Year CE to query")

    p = sub.add_parser("query-similar", help="Find similar sections")
    p.add_argument("section_id", help="Section ID (e.g. resonance::how-it-works)")
    p.add_argument("-n", "--count", type=int, default=10, help="Number of results")
    p.add_argument("--plain", action="store_true", help="Use plain embeddings (no attribute enrichment)")

    p = sub.add_parser("overlap", help="Search for semantic overlap with a concept")
    p.add_argument("query", help="Natural language description of the concept")
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
        "query-at": cmd_query_at,
        "query-similar": cmd_similar,
        "overlap": cmd_overlap,
        "check": cmd_check,
        "stats": cmd_stats,
        "snapshot": cmd_snapshot,
        "restore": cmd_restore,
        "snapshots": cmd_list_snapshots,
    }
    return commands[args.command](args)


if __name__ == "__main__":
    sys.exit(main())
