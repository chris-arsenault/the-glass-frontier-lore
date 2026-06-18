# Relationship/Event conversion plan (from per-folder agent review)

Status of each conversion: **DONE** (applied) or **TODO** (moment pass, pending).
Verbs/years from the agent determinations. `standing` is the dynamic attr.

## DONE this pass (append-only edges + date fixes)
- Edges added: `the_false_form caused duskgrain` (dm); `coriolis_breach caused tempered_accord`; `venn_talis participated_in coriolis_breach`; `displacement caused_by the_silent_bloom`; `builders_gone embodies {resonance, lattice_proxy_synod, lira_vashtenri}`; thread `fills_beat` rosters (bloom_containment ×13, reconnection ×14); loop `has_stage` rosters (cooperation_fracture ×7, knowledge_decay ×5).
- Date fix: Silent Bloom 2355 → **2378** across 7 files (the_glass_frontier, displacement, bloom_zones, the_shear, reconnection, bloom_containment, cooperation_fracture).

## TODO — moment conversions (Origin/History prose → moments with effects)

### npcs/factions
- **displacement_council**: `formed` ~2382 (standing :active); `takes_cordons` 2384; `oram_sells_leads` 2385 (set oram_sells leads). +relate dern_talish leads.
- **echo_ledger_conclave**: `formed` 2310 (standing :active). +relate cooperates_with displacement_council since 2380.
- **lattice_proxy_synod**: `formed` ~2308 (standing :active); `bloom_telemetry` 2378.
- **shear_compact**: `formed` ~2383 (standing :active).
- **tempered_accord**: `ratified` 2423 (standing :active). FIX stale prose "Ratified ~2365 CE" and "four years old" → 2423.
- **vantara**: `founded` ~2320 (standing :active); `arms_escorts` ~2360.
- **clarisant**: `bloom_hawk_split` 2378.

### npcs/heroes
- **dern_talish**: `evacuated` 2378 (standing :bloom_evacuee); `cordon_career` 2412 (standing :regional_operations_lead, member_of dc); `turns_back_convoys` ~2415; `becomes_first_threshold` 2432 (set leads dc, standing :first_threshold); `read_in` 2432 dm (set cooperates_with elves, possesses communication_shard).
- **lira_vashtenri**: `discovered` 2380 (standing :containment_lead); `founds_containment_ops` 2384 (member_of dc, standing :containment_architect). +relate employed_by coremark till 2378; depends_on stillwater.

### concepts/species
- **elves**: `vanish` 2305 (standing :vanished); `redaction_discovered` 2310; `decide_to_vanish` 2160 dm (standing :hidden); `scrubbing` 2200 dm. +dm relate elves operates_in bloom_zones since 2378. (humans: optional arrive 2050 + relate attuned_to resonance. gnomes: optional derived_from ringglass.)

### locations/settlements
- **fermata_station**: `founded` 2140 (standing :surviving_fragment, located_in tgf); `sealed_by_famine` ~2160. +relate depends_on resonance.
- **glasswake**: `first_signal` 2305 (standing :reconnected); `founded` ~2160. +relate cooperates_with hab_meridian since 2305; part_of keel.
- **hab_meridian**: `answered_first_signal` 2305 (standing :reconnected). +relate depends_on tempered_accord; depends_on sithari; hosts echo_ledger_conclave.
- **pelhari**: `academy_founded` ~2200 (set clarisant headquartered_in pelhari). +relate hosts clarisant since 2200.
- **sithari**: `held_the_glassfall` 2140 (standing :surviving_complex); `becomes_capital` 2305 (standing :capital); `continuity_combatant` ~2378. +relate governed_by the_continuity since 2160.
- **thornvault**: +relate hosts echo_ledger_conclave (HQ).
- **threshold_station**: `telleran_lost` 2367; `lower_vault_incident` 2381; `wardens_chartered` ~2367. +relate hosts lattice_proxy_synod since 2378.

### locations/landmarks
- **pyre**: `overload` 2378 (standing :destroyed, create bloom_zones).
- **keel**: `reestablished` 2305 (create keel).
- **span_nine**: `rediscovered` 2305 (standing :operational). +optional dm relate elves built span_nine.
- **bloom_zones**: `created` 2378 (create bloom_zones).

### artifacts/relics
- **liras_wall**: `first_deployment` ~2382 (create liras_wall, standing :deployed). +relate designed (lira), supplies (conclave), maintains (displacement_council).

### history/events (incidents — keep static narrative; consequences → relates)
- **shardfall**: enrich existing `caused shear_compact` prose; DEFER `destroyed drossmark` (drossmark not an entity).
- **displacement**: +relate caused bloom_containment (or bloom_coalition); enrich `caused displacement_council`.

### concepts / cultures (mostly static)
- **ratters**: optional `pioneer_salvage` ~2320; +relate operates_in glasswake.
- **shuttered_habs**: `habs_refuse_reconnection` ~2305; +relate regulated_by tempered_accord.
- **tuners**: dm moments `dissident_begins_teaching` ~2160 / `dissident_vanishes` ~2180.
- **hab_worlder**: +relate emerged_during the_silent_bloom; practiced_by displacement_council.
- **sitharian_culture**: +relate the_tempered_accord originated_in sitharian_culture.

### Deferred (target entity does not exist yet)
- shardfall destroyed drossmark_industries; hab_coriolis reseal moment; cthonic_beasts pale_star/geld_marrick moment.

### Mostly/entirely STATIC (no change): all of cosmology, most concepts (resonance/ringglass/microcavities/prominence/life_in_the_system/stillwater/duskgrain), all species except elves, all cultures, both common artifacts, the_shear, sable_crescent, deep_shear, both regions, both themes (beyond the 3 embodies), both threads/loops (beyond the fills_beat/has_stage).
