That's the current conversation in context — let me re-read it carefully and produce a properly detailed version.

```markdown
# Worldbuilding Consistency & Generation System — Architecture Outcomes

## Database
- **Neo4j** as the primary data store
- Cypher as the query language
- Docker deployment on TrueNAS SCALE
- Local `nomic-embed-text` via Ollama for embeddings — no external API dependency

---

## Data Model

### Nodes
- `Entity` — any named thing in the world (faction, location, person, artifact, event, etc.)
- `Section` — a typed prose block belonging to an entity (History, Military, Culture, Geography, Beliefs, Notable Figures, etc.)
- `Event` — discrete occurrences in the world timeline, distinct from entities

### Edges
- Both nodes and edges carry arbitrary properties
- Edge directionality is semantically meaningful by convention, not structural convenience
- Temporal properties (`valid_from`, `valid_to`) are first-class on both nodes and edges
- Provenance property on every node/edge traces back to the source wiki entry
- `HAS_SECTION` — Entity → Section, carries `type` property
- `MENTIONS` — Section → Entity, written at embed time for re-embedding dependency tracking
- `CAUSES` — Event → Event, forms the causal chain subgraph used for paradox detection
- `PARTICIPATES_IN` — Entity → Event
- Relationship predicates include typed symmetry metadata: `symmetric | antisymmetric | asymmetric`

### Schema Conventions
- Section heading vocabulary is enforced per entity type — factions have a different
  section set than locations or persons
- An `Other` escape hatch exists for untyped sections
- Singular attributes (birthplace, species, faction allegiance) are flagged in schema
  and validated against multi-value collisions

---

## Contradiction Detection

### Layer 1 — Deterministic Cypher Queries

**Reference integrity — dangling entity references:**
```cypher
MATCH (s:Section)-[:MENTIONS]->(e)
WHERE NOT EXISTS { MATCH (n:Entity {id: e.id}) }
RETURN s.entity, e.id
```

**Temporal paradox — cycle detection on causal chain:**
```cypher
MATCH path = (a:Event)-[:CAUSES*]->(a)
RETURN [n IN nodes(path) | n.name] AS cycle
```
Causal edges form a directed graph; any cycle is a paradox.
Implemented as DFS with color marking (white/gray/black).

**Alive-at-time violation — entity acts outside established lifespan:**
```cypher
MATCH (e:Entity)-[:PARTICIPATES_IN]->(ev:Event)
WHERE ev.time > e.death_time OR ev.time < e.birth_time
RETURN e.name, ev.name, ev.time
```

**Attribute collision — singular attribute with multiple simultaneous values:**
```cypher
MATCH (e:Entity)-[r:HAS_ATTRIBUTE]->(v)
WHERE r.singular = true
WITH e, r.predicate AS pred, collect(v) AS vals
WHERE size(vals) > 1
RETURN e.name, pred, vals
```

**Relationship antisymmetry violation:**
```cypher
MATCH (a:Entity)-[r1:RELATES_TO]->(b:Entity)-[r2:RELATES_TO]->(a)
WHERE r1.predicate = r2.predicate
AND r1.symmetry_type = 'antisymmetric'
RETURN a.name, b.name, r1.predicate
```

**Geographic transitivity violation:**
```cypher
// A is north of B, B is north of C, C is north of A
MATCH (a:Location)-[:NORTH_OF]->(b:Location)-[:NORTH_OF]->(c:Location)-[:NORTH_OF]->(a)
RETURN a.name, b.name, c.name
```

**Reachability scoping — constraint checks bounded to relevant neighborhood:**
```cypher
MATCH (e:Entity {id: $entity_id})-[*1..2]-(neighbor:Entity)
RETURN DISTINCT neighbor
```
Used to scope both constraint sweeps and LLM context to the relevant
subgraph rather than the full world.

**Transitive relationship inference:**
```cypher
// If A controls B and B contains C, A controls C
MATCH (a:Entity)-[:CONTROLS]->(b:Location)-[:CONTAINS]->(c:Location)
MERGE (a)-[:CONTROLS_TRANSITIVELY]->(c)
```

### Layer 2 — Semantic (LLM Sweep)

- Triggered on demand or at the start of a writing session, not on every write
- Vector pre-filtering scopes candidate section pairs before LLM is invoked:

```cypher
CALL db.index.vector.queryNodes('section_embeddings', 10, $embedding)
YIELD node, score
MATCH (e1:Entity)-[*1..2]-(e2:Entity)
MATCH (e1)-[:HAS_SECTION]->(node)
MATCH (e2)-[:HAS_SECTION]->(s2 {type: node.type})
WHERE score < 0.3
RETURN e1.name, e2.name, node.text, s2.text
```

- LLM receives same-type section clusters from graph-adjacent entities
- Returns structured JSON: `[{ entry_a, entry_b, type, description, severity: "hard|soft" }]`
- Hard violations = structural/factual; soft violations = tonal/cultural drift

**Hybrid vector + graph query (semantic drift within graph neighborhood):**
```cypher
CALL db.index.vector.queryNodes('section_embeddings', 10, $new_embedding)
YIELD node, score
WHERE (house_verath)-[*1..2]-(node)<-[:HAS_SECTION]-()
AND node.section_type = 'Military'
RETURN node, score
```

---

## Vector / Embedding Layer

### Granularity
- One embedding per `Section` node (heading-level, not entity-level)
- Same-type retrieval is the primary query pattern — Military vs Military,
  Culture vs Culture — exploiting the enforced section type vocabulary

### Embed-Time Prefix Injection Pipeline
Lore prose is never modified. At embed time only:

1. Detect all known entity names/aliases in section text via registry lookup:
```cypher
MATCH (e:Entity)
WHERE any(name IN e.aliases WHERE $text CONTAINS name)
RETURN e
```

2. For each detected entity, fetch its discriminative embed attributes
   (defined per node type in schema, read dynamically — adding a new
   attribute type is automatically picked up at next re-embed)

3. Construct ephemeral enriched string:
```
[ENTITY:house_verath | type:faction | controls:sunken_marches,iron_coast |
status:active | era:post_sundering | allegiance:neutral]

[ENTITY:sunken_marches | type:location | controlled_by:house_verath |
region:eastern_reach | accessibility:restricted]

[SECTION:Military]
House Verath has maintained iron control over the Sunken Marches...
```

4. Pass enriched string to embedding model; store only the resulting vector

### Re-embedding on Attribute Change
`MENTIONS` edges written at embed time enable stale section detection:
```cypher
MATCH (s:Section)-[:MENTIONS]->(e:Entity {id: $changed_entity})
RETURN s.id
```
Returned sections are queued for re-embedding. Cost is negligible at target scale.

### Fine-Tuning Roadmap
- **Now (~20 entries):** Prefix injection only. Auto-generate contrastive pairs
  from every new relational claim asserted (same predicate, swap actor or location).
  Accumulate pairs; do not fine-tune yet.
- **~200 entries:** Run domain-adaptive pre-training (DAPT) on worldbuilding corpus
  to give the model learned representations for custom vocabulary.
  Then contrastive fine-tune on accumulated synthetic pairs.
- Training input uses structured claim representations with subject foregrounded,
  not raw prose, to maximize actor discriminability.

---

## Separation of Concerns
- Worldbuilding system is scoped and developed independently from the
  procedural generation system
- The Neo4j graph is the shared substrate; the procedural generator is a
  separate consumer of the same data
- Primary operator of the worldbuilding system is the author + Claude Code CLI
- No significant custom application shell is required around the database;
  Cypher queries are authored on the fly against the live graph
```