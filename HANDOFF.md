# Descriptive Identity Implementation Handoff

## Tracking

- Repositories: `/home/sulion/repos/tsonu-canon` and `/home/sulion/repos/the-glass-frontier`
- Branch: `main` in both; all changes uncommitted and unpushed, pending user review
- Sulion plans: `067d96e4` (engine + plumbing, closed) and `70e0a5fc`
  (scene-anchoring dictionaries across the atlas, closed)

## What the feature is

Every established entity and every tension-carrying relationship holds a
`descriptive_identity` dictionary: a small, stable set of per-kind keys, each a
compact paragraph of concrete, scene-ready description the game narrates from
instead of inventing. Relationships carry the texture of bonds — how firm a
hold is, what membership obliges, what a dependence would cost. Inheritance
(species/culture/trade sources for people) exists only as authoring economy;
the game receives finished dictionaries. **Veiled entities are blank slates**:
no dictionaries, no sources, enforced by the validator.

Authoring method lives in `worlds/glass-frontier/guidance/identity.md` and is
method only — the scene-anchor test, variety doctrine, veiled rule, plain
English, bans, and editorial direction (Coremark de-emphasis, the open field,
hab/fragment vocabulary). The world facts that direction produced are canon,
owned by entries: how strangers are read (`cultures` — Reading a Stranger),
money/mending/tech-feel/reach of authority (`life_in_the_system`), the felt
signature of resonance work (`resonance` — Feeling It Work), cordon custom and
corruption (`bloom_zones` — The Cordon Line), observance of the Three Forms
(`the_three_forms` — Observance). The guidance file ends with this pointer map.

## Landed in tsonu-canon

- Engine: schema-governed identity keys/sources, year-aware resolution with
  provenance, veiled blank-slate enforcement, `lorecraft identity` audit, site
  schema v10. 232 engine tests green.
- Schema (`worlds/glass-frontier/world/schema.rb`): per-kind key matrix —
  npc appearance/attire/tools/manner/disposition; installation
  setting/activity/access/hazards; geographic_location setting/activity/hazards;
  faction ideology/methods/presence/attitude; transport appearance/aboard/behavior;
  artifact appearance/handling/risks; creature appearance/behavior/threat;
  resource appearance/working/risks; ability signs/effect/limits; phenomenon
  signs/effects/hazards; incident marks/stakes; conflict cause/intensity/conduct;
  species appearance/senses; culture +hospitality; practice attire/tools/manner.
  Relationship profiles: participated_in aims/conduct/cost; governs
  basis/reach/legitimacy/resistance; regulates reach/enforcement; member_of and
  employed_by standing; cooperates_with basis/limits; supplies terms/dependence;
  depends_on exposure; attuned_to expression. NPC sources: species (required),
  culture, trade.
- Content: 237 entity dictionaries across every established non-veiled entity
  the matrix covers (the remainder are moment-derived timeline entries,
  overview pages, and key-less concept kinds — correct by design), and 109
  relationship dictionaries (52 political, 55 trade, 2 attunement exemplars),
  with disciplined skips where an edge's prose already said everything.
- Identity audit: 441/441 resolved. `make app-check` fully green.

## Landed in the-glass-frontier

- DTOs: DescriptiveIdentity, IdentitySourceAssignment, IdentityLocal,
  IdentityContribution, IdentityProvenance on HardState, HardStateLink,
  proposals, and ContextSliceEntity; new `LiveRelationship`.
- Importer carries entity and relationship identity with source references
  rewritten to `tsonu:` external keys; persistence in the entity/edge props
  envelopes (resolved snapshot + preserved inheritance, local dictionaries
  never stamped).
- Read APIs: entityReader (HardState + links), ContextSliceReader
  (`descriptiveIdentity`), and the batched
  `listRelationshipsAmong({entityIds})` — live edges among a selected entity
  set with endpoints, verb, interval, typed props, and edge identity; banned
  and DM categories excluded. GM prompts unchanged until the separate GM
  integration adopts these reads.
- Checked-in artifact regenerated (559 entities, 1402 relationships, 109 with
  edge identity). Typecheck, lint (17/17), tests (21/21 tasks) green.
  Local note: worldstate tests now need the `glass-frontier_reader` role in
  the test Postgres (migration 010); create it once per container.

## Acceptance evidence (2026-08-24)

- Veiled: 251 veiled entities in the artifact, none carrying any identity.
- Propagation: editing the dwarves source updated Tess Orr's resolved
  appearance in the regenerated bundle without touching her file, and her
  local dictionary stayed unstamped.
- Inheritance exemplars: ordinary inheritors unchanged; Tess Orr extends
  appearance; Shei Lush overrides it (fae contribution recorded suppressed).
- Scene-anchor spot checks passed on entities (Sithari, glasswurm, Shear
  Compact) and edges (Continuity governs Sithari; Whitefoot depends_on
  Sithari).

## Remaining

- Commit and push both repositories (left to the user by policy).
- GM API prompt and orchestration integration — explicitly out of scope.
- Optional: the user dislikes the word "fragment" outside its physical-debris
  sense; new text uses "hab" for inhabited places, but a systematic sweep of
  older prose was not asked for and was not done.
