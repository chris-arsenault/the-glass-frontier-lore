---
title: Work Queue
---

# Work Queue

Prioritized by impact on graph health, narrative infrastructure, and world depth. Updated 2369-03-25.

---

## Priority 1: Graph Data Fixes

These are data bugs that cause check failures. Fix before adding new content.

1. **Entity date discrepancy: 2140 vs 2240.** The timeline says the Glassfall is 2140 CE. Multiple graph entities have `valid_from: 2240` — off by 100 years. Affects: `the-glassfall`, `signal-famine`, `sithari`, `the-shear`, `fermata-station`, `echo-rivers`, `the-ring-age` (valid_to). Fix entity dates and re-check G8. All post-Rekindling dates are correct.

2. **Oram Sells timeline discrepancy.** DM entry says Oram "held the position for eleven years" before dying ~2363. That puts his start at ~2352 — but the Council wasn't founded until 2358. Either the 11 years includes a pre-Council role (Bloom Coalition leadership?), or the number needs adjusting. Resolve before adding graph edges.

3. **G8 DM edge exemption.** Three G8 LATE_END warnings fire on DM edges involving elves (entity valid_to=2280 but secretly still active). Exempt dm_only edges from LATE_END check, or add a DM-specific severity level.

---

## Priority 2: Viewpoint Entity Generation

Viewpoint characters need clouds of minor entities to reach their degree targets. Current state:
- **Dern Talish:** degree 7 (target 10+), 2 unique connections, 1 thread
- **Lira Vashtenri:** degree 3 (target 10+), 0 unique connections, 1 thread

For each viewpoint, generate 5-10 shell entities (forgotten/marginal) that only they connect to. These are the personal details that make the world feel lived-in around them.

### Dern Talish shells needed
- The specific cordon section she patrolled for 20 years
- Her hab of origin (hab-worlder culture)
- Colleagues from cordon operations (1-2 named NPCs)
- Specific incidents from the Bitter Reach she was involved in
- The armed convoys she turned away — who sent them?

### Lira Vashtenri shells needed
- The specific Coremark refinery she worked at (not Pyre)
- Her orphanage hab (strict, formative)
- The specific Shear location where she first tested containment
- A Coremark colleague or mentor from refinery days
- The incident that got her noticed by the Bloom Coalition

### After shell generation
- Add EMPLOYED_BY, LOCATED_IN, OPERATES_IN edges with temporal bounds
- Run `review.py topology` to verify degree and unique connection targets
- Each new shell should be a single index row (no files yet)

---

## Priority 3: Historical Relationships (Ended Edges)

The graph represents mostly present-day state. These historical edges need adding:

| Edge | from | to | Notes |
|------|------|----|-------|
| lira-vashtenri EMPLOYED_BY coremark | ~2340 | 2355 | "Coremark-employed before the Bloom" |
| oram-sells LEADS displacement-council | 2358? | 2363 | Resolve timeline discrepancy first |
| bloom-coalition COOPERATES_WITH vantara | 2355 | 2362 | "draws from Vantara (logistics)" |
| bloom-coalition COOPERATES_WITH lattice-proxy-synod | 2355 | 2362 | "draws from LPS (telemetry)" |
| bloom-coalition COOPERATES_WITH echo-ledger-conclave | 2355 | 2362 | "draws from Conclave (resonance analysis)" |
| bloom-coalition OPERATES_IN bloom-zones | 2355 | 2362 | Coalition worked containment |
| lira-vashtenri OPERATES_IN bloom-zones | 2355 | 2358 | Before founding Council ops |
| coremark OPERATES_IN pyre | 2340 | 2355 | Refinery where cascade originates |
| [previous chair] CHAIRS fermata-station | ? | 2358 | Shei Lush's predecessor — no entity yet |
| [pre-Continuity governance?] GOVERNS sithari | ? | 2245 | Gap between Glassfall and Continuity |
| Keel control changes during Contested Reach | 2340–2355 | various | "control changes three times" — needs research |

---

## Priority 4: Titan Identification

No public-facing individual titan NPCs exist yet. Candidates to evaluate:
- **The Continuity** — titan-scale institution governing Sithari for 120+ years. Needs characterization.
- **Duthrek** — criminal syndicate leader. Viewpoint (underworld lens) or minor titan?
- **Historical titans** — whoever governed before the Continuity, whoever led pre-Glassfall civilization
- **The Adversary** — already DM-only titan. Consider whether public-facing titan echoes are needed.

Identifying 1-2 titans will generate renowned/mythic shell entities that fill gaps in the graph.

---

## Priority 5: Remaining Shell Entities

7 shells from the original entity queue still need fleshing out:

| Entity | Type | Priority | Notes |
|--------|------|----------|-------|
| **Bloom Coalition** | faction | High | Referenced by many entries. Historical (2355-2362). |
| **Prismwell Kite Guild** | faction | Medium | Trade logistics faction. Accordion trade provisions. |
| **Ratters** | faction/subculture | Medium | Independent salvage culture. |
| **Compact Charter** | document | Low | Founding document of Shear Compact. |
| **Renn Duvasi** | npc | Low | Archivist who recognized Echo River voices. |
| **Vashtenri Thesis** | concept | Low | First formal work proposing deliberate erasure. |
| **Verathi** | installation | Low | First Accord arbitration test case. |

---

## Priority 6: Graph Topology Improvements

Run `review.py topology` for live numbers. Current deficiencies:

1. **Edge density 3.5 vs 4+ target.** Viewpoint entity generation (P2) will help.
2. **Culture kind poorly connected** — 11/15 2-hop reachability. Needs cross-kind bridges as culture entities grow.
3. **Kind taxonomy splits pending:**
   - Location → geographic_location + installation (partially done)
   - Occurrence → incident + conflict
4. **Empty kinds:** transport, rumor, edict, conflict — populate as world grows.
5. **Ability extraction:** Resonance bands and tuning techniques buried in concept entries need extracting to `ability` kind.
6. **Relationship strength:** Not yet implemented. All edges equally weighted.

---

## Priority 7: Future Structural Work

- **Entity kind splits** — location → geographic_location/installation, occurrence → incident/conflict
- **Ability kind extraction** — resonance abilities from concept entries
- **Relationship strength** (0.0-1.0) — lets narrative engine weight traversals
- **Distance metric** — spatial distance on location relationships
- **Era entities** — temporal hub nodes like the canonry graph's era system
