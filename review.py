#!/usr/bin/env python3
"""Review tracking. Tracks per-file review dates, identifies pending files and stale comments."""

import json
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path

ROOT = Path(__file__).parent
STATUS_FILE = ROOT / "work-tracking" / "review-status.json"
REVIEW_FILE = ROOT / "work-tracking" / "review-comments.json"
OVERLAP_REPORT = ROOT / "work-tracking" / "overlap-report.json"
ACCEPTED_OVERLAPS = ROOT / "work-tracking" / "accepted-overlaps.json"
META_FILES = {"index.md", "tags.md", "timeline.md", "causality.md",
              "design-principles.md", "world-seeds.md"}


def load_status():
    if STATUS_FILE.exists():
        return json.loads(STATUS_FILE.read_text())
    return {}


def save_status(status):
    STATUS_FILE.write_text(json.dumps(status, indent=2, sort_keys=True) + "\n")


def get_git_mtime(filepath):
    """Get the last git commit date for a file as ISO string."""
    try:
        result = subprocess.run(
            ["git", "log", "-1", "--format=%aI", "--", str(filepath)],
            capture_output=True, text=True, cwd=ROOT
        )
        if result.stdout.strip():
            return result.stdout.strip()
    except Exception:
        pass
    return None


def collect_lore_files():
    """Collect all lore .md files under player/ and dm/."""
    files = []
    for d in ["player", "dm"]:
        dir_path = ROOT / d
        if not dir_path.is_dir():
            continue
        for p in dir_path.rglob("*.md"):
            if p.name in META_FILES:
                continue
            files.append(str(p.relative_to(ROOT)))
    return sorted(files)


def cmd_pending():
    """List files modified since their last review (or never reviewed)."""
    status = load_status()
    for f in collect_lore_files():
        review_date = status.get(f)
        git_mtime = get_git_mtime(f)
        if not git_mtime:
            continue
        if not review_date or git_mtime > review_date:
            print(f)


def cmd_mark(paths):
    """Mark files as reviewed now."""
    status = load_status()
    now = datetime.now(timezone.utc).isoformat()
    for p in paths:
        rel = str(Path(p).relative_to(ROOT) if Path(p).is_absolute() else Path(p))
        if not (ROOT / rel).exists():
            print(f"WARNING: {rel} does not exist", file=sys.stderr)
            continue
        status[rel] = now
        print(f"  marked: {rel}")
    save_status(status)


def cmd_stale():
    """Show review comments that are stale (file reviewed after comment was created)."""
    status = load_status()
    if not REVIEW_FILE.exists():
        return
    reviews = json.loads(REVIEW_FILE.read_text())
    stale, active = [], []
    for r in reviews:
        if r.get("status") != "open":
            continue
        review_date = status.get(r["file"])
        if review_date and review_date > r["timestamp"]:
            stale.append(r)
        else:
            active.append(r)
    if stale:
        print(f"{len(stale)} stale (file reviewed since comment):")
        for r in stale:
            hl = (r.get("highlight") or "")[:50]
            print(f"  {r['file']}: \"{hl}\" — {r['comment'][:60]}")
    if active:
        print(f"{len(active)} active:")
        for r in active:
            hl = (r.get("highlight") or "")[:50]
            print(f"  {r['file']}: \"{hl}\" — {r['comment'][:60]}")
    if not stale and not active:
        print("No open comments.")


def cmd_status():
    """Summary of review status."""
    status = load_status()
    reviewed = pending = 0
    for f in collect_lore_files():
        review_date = status.get(f)
        git_mtime = get_git_mtime(f)
        if not git_mtime:
            continue
        if review_date and review_date >= git_mtime:
            reviewed += 1
        else:
            pending += 1
    print(f"{reviewed}/{reviewed + pending} reviewed, {pending} pending")


def load_accepted_overlaps():
    if ACCEPTED_OVERLAPS.exists():
        return json.loads(ACCEPTED_OVERLAPS.read_text())
    return []


def is_pair_accepted(sid_a, sid_b, accepted):
    pair = tuple(sorted([sid_a, sid_b]))
    for a in accepted:
        apair = tuple(sorted(a["pair"]))
        if apair == pair:
            return True
    return False


def cmd_overlaps():
    """Generate overlap report from both embedding spaces."""
    try:
        from neo4j import GraphDatabase
        import numpy as np
    except ImportError:
        print("ERROR: requires neo4j and numpy", file=sys.stderr)
        sys.exit(1)

    driver = GraphDatabase.driver("bolt://192.168.66.3:7688", auth=("memgraph", "your-secure-password"))
    accepted = load_accepted_overlaps()
    overlaps = []

    with driver.session() as s:
        # Load all sections with both embeddings
        result = s.run("""
            MATCH (sec:Section)
            WHERE sec.heading IS NOT NULL
            RETURN sec.id AS sid, sec.entity_id AS eid, sec.heading AS h,
                   sec.embedding AS vec_e, sec.embedding_plain AS vec_p
        """)
        sections = []
        for r in result:
            ve = np.array(r["vec_e"]) if r["vec_e"] else None
            vp = np.array(r["vec_p"]) if r["vec_p"] else None
            sections.append((r["sid"], r["eid"], r["h"], ve, vp))

        def cosine(a, b):
            return float(np.dot(a, b) / (np.linalg.norm(a) * np.linalg.norm(b)))

        # Check all cross-entity pairs in both spaces
        for i in range(len(sections)):
            for j in range(i + 1, len(sections)):
                sid_a, eid_a, h_a, ve_a, vp_a = sections[i]
                sid_b, eid_b, h_b, ve_b, vp_b = sections[j]
                if eid_a == eid_b:
                    continue
                if is_pair_accepted(sid_a, sid_b, accepted):
                    continue

                # Enriched space
                if ve_a is not None and ve_b is not None:
                    sim = cosine(ve_a, ve_b)
                    thresh = 0.92 if h_a == h_b else 0.93
                    if sim > thresh:
                        overlaps.append({
                            "section_a": sid_a, "entity_a": eid_a, "heading_a": h_a,
                            "section_b": sid_b, "entity_b": eid_b, "heading_b": h_b,
                            "similarity": round(sim, 4), "space": "enriched",
                        })

                # Plain space
                if vp_a is not None and vp_b is not None:
                    sim = cosine(vp_a, vp_b)
                    if sim > 0.89:
                        overlaps.append({
                            "section_a": sid_a, "entity_a": eid_a, "heading_a": h_a,
                            "section_b": sid_b, "entity_b": eid_b, "heading_b": h_b,
                            "similarity": round(sim, 4), "space": "plain",
                        })

    driver.close()
    overlaps.sort(key=lambda x: -x["similarity"])
    OVERLAP_REPORT.write_text(json.dumps(overlaps, indent=2) + "\n")
    print(f"{len(overlaps)} overlaps written to {OVERLAP_REPORT.relative_to(ROOT)}")
    n_accepted = len(load_accepted_overlaps())
    if n_accepted:
        print(f"  ({n_accepted} accepted pairs excluded)")
    for o in overlaps:
        print(f"  {o['similarity']:.3f} [{o['space']}] {o['entity_a']}:{o['heading_a']} ↔ {o['entity_b']}:{o['heading_b']}")


def cmd_topology():
    """Report graph topology health against targets."""
    try:
        from neo4j import GraphDatabase
        from collections import Counter, defaultdict
        import statistics
    except ImportError:
        print("ERROR: requires neo4j and statistics", file=sys.stderr)
        sys.exit(1)

    driver = GraphDatabase.driver("bolt://192.168.66.3:7688", auth=("memgraph", "your-secure-password"))
    with driver.session() as s:
        # Get entities
        r = s.run('MATCH (e:Entity) WHERE e.status = "complete" RETURN e.id AS id, e.type AS type')
        entities = [(rec['id'], rec['type'] or 'unknown') for rec in r]
        kind_map = dict(entities)

        # Get typed rels (exclude structural)
        r = s.run('''
            MATCH (a:Entity)-[r]->(b:Entity)
            WITH type(r) AS rel, a.id AS src, b.id AS dst
            WHERE rel <> "HAS_SECTION" AND rel <> "MENTIONS" AND rel <> "HAS_ARCHETYPE"
            RETURN src, dst, rel
        ''')
        rels = [(rec['src'], rec['dst'], rec['rel']) for rec in r]

        # Degree
        degree = Counter()
        for src, dst, _ in rels:
            degree[src] += 1
            degree[dst] += 1
        degrees = [degree.get(eid, 0) for eid, _ in entities]

        # Hub kinds (threads, loops, themes)
        hub_kinds = {'thread', 'loop', 'theme'}

        n_ent = len(entities)
        n_rel = len(rels)
        zeros = [(eid, et) for eid, et in entities if degree.get(eid, 0) == 0]
        mean_deg = statistics.mean(degrees) if degrees else 0
        med_deg = statistics.median(degrees) if degrees else 0

        print(f"=== Topology Health ===")
        print(f"  Entities:        {n_ent}")
        print(f"  Typed edges:     {n_rel}")
        ratio = n_rel / n_ent if n_ent else 0
        print(f"  Edges/entity:    {ratio:.1f}  (target: 4+)")
        print(f"  Mean degree:     {mean_deg:.1f}  (target: 5+)")
        print(f"  Median degree:   {med_deg:.1f}  (target: 4+)")
        print(f"  Zero-degree:     {len(zeros)}/{n_ent}  (target: 0)")

        # 2-hop reachability
        adj = defaultdict(set)
        for src, dst, _ in rels:
            adj[src].add(dst)
            adj[dst].add(src)
        all_kinds = set(kind_map.values())

        print(f"\n=== 2-Hop Kind Reachability ===")
        broken = []
        for kind in sorted(all_kinds):
            ents = [eid for eid, et in entities if et == kind]
            reachable = set()
            for eid in ents[:5]:
                hop1 = adj.get(eid, set())
                hop2 = set()
                for h in hop1:
                    hop2.update(adj.get(h, set()))
                for h in hop1 | hop2:
                    if h in kind_map:
                        reachable.add(kind_map[h])
            missing = all_kinds - reachable
            status = "OK" if not missing else f"MISSING: {', '.join(sorted(missing))}"
            print(f"  {kind:15}: {len(reachable)}/{len(all_kinds)}  {status}")
            if missing:
                broken.append((kind, missing))

        # Without hubs
        print(f"\n=== Without Hub Nodes (thread/loop/theme) ===")
        non_hub_rels = [(s, d, r) for s, d, r in rels
                        if kind_map.get(s) not in hub_kinds and kind_map.get(d) not in hub_kinds]
        non_hub_degree = Counter()
        for src, dst, _ in non_hub_rels:
            non_hub_degree[src] += 1
            non_hub_degree[dst] += 1
        non_hub_ents = [(eid, et) for eid, et in entities if et not in hub_kinds]
        nh_degrees = [non_hub_degree.get(eid, 0) for eid, _ in non_hub_ents]
        nh_zeros = sum(1 for d in nh_degrees if d == 0)
        print(f"  Non-hub entities: {len(non_hub_ents)}")
        print(f"  Non-hub edges:    {len(non_hub_rels)}")
        print(f"  Mean degree:      {statistics.mean(nh_degrees):.1f}" if nh_degrees else "  Mean degree:      0")
        print(f"  Zero-degree:      {nh_zeros}/{len(non_hub_ents)}")

        # Zero-degree list
        if zeros:
            print(f"\n=== Zero-Degree Entities ===")
            for eid, et in sorted(zeros, key=lambda x: x[1]):
                print(f"  {et:15} {eid}")

        # Narrative role health
        r = s.run('''
            MATCH (e:Entity)
            WHERE e.narrative_role IS NOT NULL AND e.narrative_role <> ""
            AND e.status = "complete"
            RETURN e.id AS id, e.title AS title, e.narrative_role AS role,
                   e.prominence AS prom
        ''')
        role_entities = [(rec['id'], rec['title'], rec['role'], rec['prom']) for rec in r]
        if role_entities:
            print(f"\n=== Narrative Role Health ===")
            for eid, title, role, prom in sorted(role_entities, key=lambda x: x[2]):
                d = degree.get(eid, 0)

                # Get connected entity prominences
                connected = set()
                for src, dst, _ in rels:
                    if src == eid:
                        connected.add(dst)
                    elif dst == eid:
                        connected.add(src)

                # Check prominence skew
                prom_counts = Counter()
                for cid in connected:
                    # Look up prominence from graph
                    pass  # We'll query below

                # Check thread connections
                thread_edges = [r for s, d, r in rels
                                if (s == eid or d == eid) and r == 'FILLS_BEAT']

                # Unique connections (entities only this NPC links to)
                unique = 0
                for cid in connected:
                    other_links = sum(1 for s, d, _ in rels
                                     if (s == cid or d == cid) and s != eid and d != eid)
                    if other_links == 0:
                        unique += 1

                issues = []
                if role == 'viewpoint':
                    if d < 10:
                        issues.append(f"degree {d} < 10 target")
                    if not thread_edges:
                        issues.append("no FILLS_BEAT")
                    if unique < 3:
                        issues.append(f"only {unique} unique connections (target: 3+)")
                elif role == 'titan':
                    if prom not in ('renowned', 'mythic'):
                        issues.append(f"prominence '{prom}' — titans should be renowned/mythic")
                    if d > 15:
                        issues.append(f"degree {d} > 15 — titans should be moderate degree")

                status = "  ".join(issues) if issues else "OK"
                print(f"  {role:10} {title:25} degree={d:2}  unique={unique}  "
                      f"threads={len(thread_edges)}  {status}")

    driver.close()


def cmd_gaps():
    """Show archetype taxonomy gaps — thin categories that need new entities."""
    try:
        from neo4j import GraphDatabase
        driver = GraphDatabase.driver("bolt://192.168.66.3:7688", auth=("memgraph", "your-secure-password"))
    except Exception:
        print("ERROR: Cannot connect to Memgraph", file=sys.stderr)
        sys.exit(1)
    with driver.session() as s:
        result = s.run("""
            MATCH (a:Archetype)
            OPTIONAL MATCH (e:Entity)-[:HAS_ARCHETYPE]->(a)
            WITH a, collect(e.title) AS entities, count(e) AS filled
            RETURN a.label AS archetype, a.description AS desc,
                   filled, a.min_expected AS expected,
                   entities
            ORDER BY a.min_expected - filled DESC, a.label
        """)
        for r in result:
            gap = r["expected"] - r["filled"]
            if gap <= 0:
                continue
            names = ", ".join(r["entities"]) if r["entities"] else "(none)"
            print(f"  {r['archetype']} [{r['filled']}/{r['expected']}]: {names}")
            print(f"    {r['desc']}")
            print(f"    -> {gap} slot(s) to fill with [future:] entities")
            print()
    driver.close()


def main():
    if len(sys.argv) < 2:
        print("Usage: review.py <pending|mark|stale|status|gaps> [files...]")
        print()
        print("  pending   List files modified since last review (pipe to prompt)")
        print("  mark      Mark file(s) as reviewed:  review.py mark player/foo.md")
        print("  stale     Show review comments that are stale (file was fixed)")
        print("  status    Summary counts")
        print("  gaps      Show archetype taxonomy gaps (thin entity categories)")
        print("  overlaps  Generate overlap report for review app")
        print("  topology  Graph topology health check")
        sys.exit(1)

    cmd = sys.argv[1]
    if cmd == "pending":
        cmd_pending()
    elif cmd == "mark":
        if len(sys.argv) < 3:
            print("Usage: review.py mark <file> [<file>...]", file=sys.stderr)
            sys.exit(1)
        cmd_mark(sys.argv[2:])
    elif cmd == "stale":
        cmd_stale()
    elif cmd == "status":
        cmd_status()
    elif cmd == "gaps":
        cmd_gaps()
    elif cmd == "overlaps":
        cmd_overlaps()
    elif cmd == "topology":
        cmd_topology()
    else:
        print(f"Unknown command: {cmd}", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    main()
