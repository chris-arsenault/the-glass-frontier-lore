---
title: Consistency Analysis
date: 2026-03-16
---

# Consistency Analysis

Comprehensive audit of all player/ and dm/ content files. Every .md file with lore content was read in full. Findings organized by category.

---

## Summary Table

| Category | Status | Issues |
|----------|--------|--------|
| A. Factual Contradictions | YELLOW | 3 issues — Keel orbital/surface mismatch, Echo Rivers band terminology, "130 years" rounding |
| B. Terminology Consistency | YELLOW | 5 issues — "Bloom zones" lowercase, double-article links, "high-band" non-standard term, veilfire capitalization |
| C. Missing/Stale Future Markers | RED | 10+ stale `[future:]` markers for entities that now have entries |
| D. DM Leakage | GREEN | No leakage detected; one borderline case noted |
| E. Heading Consistency | GREEN | All headings use `<!-- Label -->` annotations consistently |
| F. Resonance System Consistency | GREEN | Three bands and three bandwidths described consistently; momentum nullification matches across all three files |
| G. Timeline vs Prose | YELLOW | 2 issues — entity registry status out of date; timeline still uses future markers for existing entries |
| H. DAG vs Prose | GREEN | All causal chains match prose; no contradictions found |
| I. Prominence Audit | GREEN | Prominence levels appropriate for all entities |
| J. Semantic Overlap | YELLOW | 2 high-similarity pairs worth reviewing |

---

## Detailed Findings

### A. Factual Contradictions

**A1. The Keel: Orbital Route vs Surface Trade Route** — RED

The Keel's own entry defines it as **orbital**:
- `player/locations/landmarks/keel.md:10` — "an orbital route connecting ringglass production zones in The Shear"
- `player/locations/landmarks/keel.md:16` — "The Keel is not a road. It's a corridor through orbital space"

But two other entries describe it as a **surface trade route**:
- `player/locations/settlements/sithari.md:59` — "the terminus of major surface trade routes, including the Keel connecting to the Sable Crescent"
- `player/locations/settlements/glasswake.md:32` — "The Keel trade route terminates here, connecting Glasswake to the Sable Crescent via Sithari"

The Keel entry does mention "transition points between orbital and surface-access zones" (line 16), so surface settlements could be nodes on it. But the sithari.md and glasswake.md descriptions frame it as a surface route connecting surface settlements, which contradicts the orbital framing. Glasswake's description is the most problematic — it says the Keel "terminates here," but keel.md says the far terminus is Ashvane.

**Fix:** Decide whether the Keel is purely orbital (with surface-access spurs) or a hybrid route. If orbital, rewrite sithari.md:59 and glasswake.md:32 to reference surface spur routes connecting to the Keel rather than saying the Keel itself terminates at surface settlements. If hybrid, soften keel.md's "corridor through orbital space" language.

**A2. Echo Rivers: "High-Band" vs Defined Resonance Bands** — YELLOW

- `player/cosmology/echo-rivers.md:10` — "it picks up resonance — specifically, the high-band frequencies that once carried data through the orbital rings"
- `player/cosmology/echo-rivers.md:29` — "high-band resonance in quantity can cause headaches"

The resonance system (`resonance.md`) defines three named bands: structural, kinetic, signal. The **signal** band is what carries data. Echo rivers should logically operate in the **signal** band. The term "high-band" is not part of the established terminology and is ambiguous — it could imply the signal band is "higher" in frequency, but this hierarchy is never established.

The fermata-station.md entry correctly uses "signal-frequency range" (line 98) for the same kind of phenomenon.

**Fix:** Replace "high-band frequencies" with "signal-band frequencies" in echo-rivers.md:10 and "high-band resonance" with "signal-band resonance" in echo-rivers.md:29. This aligns with the established three-band model.

**A3. "130 Years" Rounding** — GREEN (informational)

The Glassfall is dated 2240 CE. The present is 2369 CE. That is 129 years. Every file in the wiki says "130 years" without qualification. This is technically a rounding-up by one year. Given that many dates are approximate ("roughly 2305 CE" etc.) and in-universe people would naturally round, this is not a real error — it is consistent internal rounding. The only potential issue would be if a file said "nearly 130 years" (implying precision), but the only qualified version is "over 130 years" in jazzocratic-governance.md:12, and that is just "grew into a self-governing station over 130 years" which means "across 130 years," not "more than."

**No fix needed.** Consider adding a note to design-principles.md that "130 years" is the conventional in-universe rounding.

**A4. Signal Famine Duration** — GREEN

Consistently described as "roughly sixty years" across all files. The timeline places it at 2240-2305 (65 years). "Roughly sixty" is close enough for in-universe approximation.

---

### B. Terminology Consistency

**B1. "Bloom zones" Lowercase** — YELLOW

- `player/timeline.md:88` — "The Bloom zones are contained but not resolved."

Every other reference in the wiki uses "Bloom Zones" (capitalized Z). This is the only instance of lowercase "zones."

**Fix:** Change to "Bloom Zones" in timeline.md:88.

**B2. Double-Article Links: "the [The Keel]" and "the [The Shear]"** — YELLOW

Multiple files use constructions where "the" precedes a link whose display text already includes "The":

- `player/locations/settlements/sithari.md:59` — "the [The Keel]"
- `player/npcs/factions/vantara.md:22` — "the [The Keel]"
- `player/npcs/factions/vantara.md:32` — "Piracy on the [The Keel]"
- `player/artifacts/common/kite-sail.md:28` — "running the [The Keel]"
- `player/locations/settlements/glasswake.md:32` — "The [The Keel]"
- `player/concepts/tuners.md:28` — "the [The Shear]"

The rendered text reads "the The Keel" which is grammatically incorrect.

**Fix:** Either change link text to `[the Keel](...)` or remove the preceding "the" and let the link carry the article.

**B3. Lowercase `[future:veilfire]` in Kite-Sail** — YELLOW

- `player/artifacts/common/kite-sail.md:18` — `[future:veilfire]`

The exceptional-resources.md entry and keel.md both capitalize it as "Veilfire."

**Fix:** Change to `[future:Veilfire]`.

**B4. "The Vantara" with Article** — YELLOW

- `player/locations/settlements/sithari.md:59` — "The [Vantara] maintains its largest surface operations hub"

Vantara is a corporation name. "The Vantara" reads awkwardly; elsewhere it's just "Vantara." No other file uses "The Vantara."

**Fix:** Remove "The" — "[Vantara] maintains..."

**B5. "Glassfall" Article Usage** — GREEN

Usage is consistent: "the Glassfall" when referencing the event in prose, "The Glassfall" at sentence start, "Glassfall" as an adjective (e.g., "pre-Glassfall," "Glassfall debris"). No inconsistencies found.

**B6. "Signal Famine" Capitalization** — GREEN

Consistently capitalized in all 20+ references. No issues.

**B7. "ringglass" Casing** — GREEN

Consistently lowercase in prose throughout. Capitalized only at sentence start or in section headers. No "Ringglass" in running text (except as titles/headers, which is correct).

---

### C. Missing/Stale Future Markers

Entities that have full entries but are still referenced with `[future:]` markers elsewhere:

| Stale Marker | File:Line | Existing Entry |
|---|---|---|
| `[future:Span Nine]` | `player/timeline.md:42` | `player/locations/landmarks/span-nine.md` |
| `[future:Vantara]` (x4) | `player/timeline.md:46,59,77,92` | `player/npcs/factions/vantara.md` |
| `[future:Shear]` | `player/cosmology/resonance.md:41` | `player/locations/regions/the-shear.md` |
| `[future:kite-sails]` | `player/cosmology/resonance.md:27` | `player/artifacts/common/kite-sail.md` |
| `[future:Kite-sails]` | `player/concepts/practical-resonance.md:22` | `player/artifacts/common/kite-sail.md` |
| `[future:veilfire]` | `player/artifacts/common/kite-sail.md:18` | (In exceptional-resources.md, but veilfire is a section heading, not its own entry — this one may be intentional) |

**Fix:** Replace each stale `[future:]` marker with a proper markdown link to the existing entry. The veilfire case is a judgment call — it's a section within exceptional-resources.md, not a standalone entry, so `[future:Veilfire]` might be correct if the intent is to create a standalone entry eventually.

---

### D. DM Leakage Review

All player/ entries were re-read with DM knowledge in mind. No instances of language that reveals hidden information. Specific checks:

- **Dern Talish public profile:** Her "unidentified language" (player/npcs/heroes/dern-talish.md:37) is explained in the public entry as Echo River exposure. The DM truth (dm/dern-talish-truth.md:44) reveals it's actually Elvish from her elven contacts. The public entry's cover story is plausible and doesn't hint at the truth. **No leakage.**

- **Dern Talish hand tremor:** The public entry says it's Bloom Zone exposure damage (line 36). The DM truth says she exaggerates it slightly. The public entry doesn't hint at exaggeration. **No leakage.**

- **Dern Talish collection:** The public entry says she "does not explain why" she keeps the objects (line 35). The DM truth reveals she studies them for resonance anomalies. The public phrasing reads as character depth, not as a narrator winking. **No leakage.**

- **Elves entry:** The disappearance is treated as a genuine mystery with multiple theories presented (folk, mainstream, Redaction theorists). No theory is privileged. The entry doesn't suggest which one is correct. **No leakage.**

- **Duskgrain entry:** Described as "essentially resonance energy that has solidified into a physical material" (exceptional-resources.md:31). The DM truth (corruption-truth.md:15) says it's Adversary residue. The public description is consistent with a surface-level understanding. **No leakage.**

- **Tuners entry:** Describes independent discovery during the Famine. The DM truth (tuners-truth.md) reveals one lineage was actually taught by an elf. The public entry doesn't hint at this. **No leakage.**

**Borderline case:** The elves entry, line 73 — "The last question is the one people don't ask in polite company. It implies things about the Famine, about the Glassfall, and about the current state of the system that nobody is prepared to deal with." This is dramatic and suggestive, but it reads as in-universe social commentary rather than narrator knowledge. The suggestion that elves might still be around is explicitly one of the folk theories (line 61). **Acceptable.**

---

### E. Heading Consistency

All `##` headings in content files use `<!-- Label -->` annotations. The annotations use a consistent taxonomy:

- Geography/Description/Atmosphere for locations
- How It Works/Mechanics for systems
- Biology/Culture/Resonance for species
- Origin/Structure/Operations/Tensions/Present Day for factions
- Sources/Limits/Trade/Applications for concepts
- People/Governance/Economy for settlements

No headings are missing annotations. No inconsistencies found.

**Note:** No `<!-- Canonical -->` pattern was found. The system uses direct label annotations like `<!-- How It Works -->` rather than a separate "Canonical" marker. This appears intentional — the label IS the canonical heading name.

---

### F. Resonance System Internal Consistency

**Three Bands:** Structural, Kinetic, Signal. Consistently named and described in:
- `resonance.md:23-29` (primary definitions)
- `practical-resonance.md:22` (kinetic band for kite-sails)
- `kite-sail.md:16` (kinetic-band ringglass array)
- `fermata-station.md:98` (signal-frequency range)
- `ringglass.md:26-30` (grades reference band tuning)
- `exceptional-resources.md:15` (veilfire releases kinetic-band energy)
- All species entries reference resonance bands correctly

**Exception:** echo-rivers.md uses "high-band frequencies" instead of "signal-band frequencies." See finding A2.

**Three Bandwidths:** Broad, Mid, Narrow. Consistently described in:
- `resonance.md:33-43` (primary definitions)
- `practical-resonance.md:12-18` (ambient = broad; kite-sails = mid)
- `kite-sail.md:18` (explicitly "mid-bandwidth kinetic work")
- `exceptional-resources.md:31,33` (duskgrain = narrow-bandwidth; release needs narrow-bandwidth skill)

**Momentum Nullification:** Described in three places, all consistent:
- `resonance.md:27` — "redirect opposing forces into a frequency null space, producing effectively unopposed motion"
- `practical-resonance.md:22` — "ringglass arrays tuned to redirect opposing forces into a frequency null space, producing effectively unopposed momentum"
- `kite-sail.md:10,16` — "redirect opposing forces into a frequency null space, producing effectively unopposed momentum" / "forces opposing movement are shunted into a resonance null space"

Minor wording variation: resonance.md says "frequency null space" while kite-sail.md says "resonance null space" at line 16. Both terms describe the same concept. The kite-sail entry uses both "frequency null space" (line 10) and "resonance null space" (line 16) in the same file.

**Recommendation (minor):** Standardize on one term. "Frequency null space" appears more often and is more precise.

**Ringglass Processing:** The supply chain in ringglass.md (sources, grades, processing, trade) is consistently referenced by all other entries. No contradictions.

**Tuner Abilities:** tuners.md describes species-specific abilities that match each species entry:
- Gnomes: natural attunement (gnomes.md:32, tuners.md:56)
- Humans: steep learning curve (humans.md:25, tuners.md:57)
- Orcs: material/physical affinity (orcs.md:31, tuners.md:58)
- Fae: dependency risk (fae.md:35, tuners.md:59)
- Elves: original masters (elves.md:28, tuners.md:60)

**Echo Rivers Mechanism:** echo-rivers.md describes signal-carrying water. resonance.md's signal band definition (line 29) says "signal-frequency ringglass picks up and retransmits whatever data it encounters, which is why Echo Rivers carry fragments." These are consistent.

**Depletion/Limits:** Consistently described:
- `resonance.md:53` — local field depletes, takes hours/days/weeks to replenish
- `practical-resonance.md:18` — "Draw too much from a local field too quickly and the ringglass goes quiet"
- `kite-sail.md:38` — momentum nullification field "requires continuous resonance input"

---

### G. Timeline vs Prose

**G1. Entity Registry Status Mismatches** — YELLOW

The entity registry in `player/causality.md` lists several entities as `shell` that actually have full entries:

| Entity | Listed Status | Actual Status | File |
|--------|--------------|---------------|------|
| Echo Ledger Conclave | shell (line 130) | exists | `player/npcs/factions/echo-ledger-conclave.md` |
| Lattice Proxy Synod | shell (line 131) | exists | `player/npcs/factions/lattice-proxy-synod.md` |
| Sable Crescent | shell (line 163) | exists | `player/locations/regions/sable-crescent.md` |

**Fix:** Update status to `exists` in the entity registry for all three.

**G2. Timeline Future Markers for Existing Entries** — YELLOW

See finding C above. The timeline uses `[future:Span Nine]` and `[future:Vantara]` for entities that have full entries. These should be proper links.

**G3. Timeline Descriptions vs Full Entries** — GREEN

All timeline event descriptions were checked against their corresponding full entries. No contradictions found. The timeline is appropriately summarized — brief enough for an overview, accurate to the full entries.

**G4. Events in Prose Not in Timeline** — GREEN

No significant events were found in prose entries that should be in the timeline but aren't. The Verge Compact, Bloom Coalition, and Bitter Reach are all represented.

---

### H. DAG vs Prose

All causal chains in `player/causality.md` were verified against the prose entries.

**Verified chains (all consistent):**
- The Glassfall -> severs communications -> Signal Famine (the-glassfall.md:31)
- The Glassfall -> creates -> The Shear (the-glass-frontier.md:32, the-shear.md:11)
- The Glassfall -> seeds surface with -> Ringglass (resonance.md:13)
- The Glassfall -> enables -> Echo Rivers (echo-rivers.md:10)
- Signal Famine -> produces -> Tuners (tuners.md:12)
- Signal Famine -> produces -> Fermata Station (fermata-station.md:24)
- Glasswake -> rediscovers transmitter, reconnects with -> Hab Meridian (glasswake.md:11-12)
- Span Nine -> rediscovered, connects -> Sithari (span-nine.md:26)
- Vantara -> establishes -> The Keel (keel.md:10-11, timeline.md:46)
- Bloom Coalition <- contributes logistics <- Vantara (timeline.md:77)
- Bloom Coalition <- contributes telemetry <- Lattice Proxy Synod (timeline.md:77, lattice-proxy-synod.md:38)
- Bloom Coalition <- contributes analysis <- Echo Ledger Conclave (timeline.md:77, echo-ledger-conclave.md:36)
- Dern Talish -> leads -> Displacement Council (dern-talish.md:12-14)

**DM chains verified:**
- The Adversary -> destroys -> The Glass Frontier (dm/elves-truth.md:17)
- Signal Famine -> covers -> Disappearance of the Elves (dm/elves-truth.md:27)
- The Adversary -> seeps through -> Bloom Zones (dm/elves-truth.md:58-60)
- Elves -> cooperate with -> Dern Talish (dm/dern-talish-truth.md:22-25)
- Elves -> have veto over succession of -> Dern Talish (dm/elves-truth.md:74)

**Missing from DAG (potential additions):**
- `Echo Rivers -> [enables discovery by] -> Echo Ledger Conclave` — The Conclave exists because the rivers exist (echo-ledger-conclave.md:12). Currently the DAG has no edge connecting them. The timeline notes the Conclave was "founded to study the Absence" but the prose says it exists because the Echo Rivers exist.
- `Ringglass -> [processed at] -> Pyre` — Implied but not explicit. Pyre is described as a Coremark refinery.

---

### I. Prominence Audit

All prominence levels were checked against entity descriptions and cross-references.

**Mythic entities** (resonance, Glass Frontier, Kaleidos system, Glassfall, ringglass, humans, orcs, gnomes, fae, Sithari, species, cultures, naming conventions, practical resonance, prominence, design principles): All appropriately universal. Referenced freely from everywhere.

**Renowned entities** (Echo Rivers, the Shear, Sitharian culture, Hab-Worlder, kite-sail): All appropriately well-known. Referenced from multiple contexts.

**Recognized entities** (elves, tuners, Span Nine, the Keel, Sable Crescent, Glasswake, Echo Ledger Conclave, Lattice Proxy Synod, Vantara, Dern Talish, exceptional resources): All appropriately known within relevant domains.

**Marginal entities** (Fermata Station, jazzocratic governance): Fermata Station is correctly marginal — the prominence entry even uses it as an example (prominence.md:29-31). Jazzocratic governance is correctly marginal.

**Cross-reference compliance:** No marginal or forgotten entity is referenced from a context that would violate prominence rules. The Fermata Station reference in the-glass-frontier.md is implicit (habs governed by "musical consensus") rather than named, which is appropriate for a marginal entity being mentioned from a mythic entry.

**One note:** The Fermata Open is described as "recognized" in prominence.md:31 as an example, but there is no standalone entry for the Fermata Open — it's a section within fermata-station.md. This is fine; the prominence example is illustrative, not normative.

---

### J. Semantic Overlap Analysis

**High-similarity pairs (>0.85):**

**1. kite-sail::how-it-works vs practical-resonance::Transport (0.9534)**

These describe the same technology — kite-sail mechanics. Both explain momentum nullification.
- `practical-resonance.md:22-26` — General description of kite-sails and how they work
- `kite-sail.md:16-20` — Detailed description of the same

**Verdict: Appropriate overlap.** Practical-resonance is a companion/overview entry that naturally summarizes technology detailed elsewhere. The kite-sail entry goes deeper (classes, limits). No contradiction. The practical-resonance entry links to the Shear for kite-sail context but does not link to the kite-sail entry itself (it uses `[future:Kite-sails]`).

**2. ringglass::how-it-works vs resonance::Ringglass (0.9219)**

- `resonance.md:45-50` — Brief summary of ringglass with link to full entry
- `ringglass.md:32-43` — Full processing details

**Verdict: Appropriate overlap.** The resonance entry explicitly says "See Ringglass for details" and provides only a summary. This is the intended companion pattern.

**3. sithari::governance vs sitharian-culture::Politics (0.9163)**

- `sithari.md:31-47` — The Continuity as ruling party, the Accord Seat
- `sitharian-culture.md:32-36` — Sitharian political culture generally

**Verdict: Appropriate overlap.** One describes the specific city's governance; the other describes the culture's political patterns. Different scopes, natural overlap.

**4. resonance::Limits vs resonance::How It Works (0.9097)**

Same file, adjacent sections. Not a concern.

**5. practical-resonance::Ambient Resonance vs resonance::How It Works (0.8987)**

- `practical-resonance.md:12-18` — How ambient resonance works in daily life
- `resonance.md:17-43` — The theoretical system

**Verdict: Appropriate overlap.** Practical-resonance is explicitly a companion entry ("For the underlying system, see Resonance"). The overlap is by design.

**No redundant or contradictory high-similarity pairs found.**

---

## Recommended Fixes (Prioritized)

### Priority 1: Factual Fix

1. **Resolve The Keel orbital vs surface contradiction.** Files: `player/locations/settlements/sithari.md:59`, `player/locations/settlements/glasswake.md:32`, `player/locations/landmarks/keel.md`. Decision needed on whether the Keel is purely orbital or hybrid. Recommendation: rewrite sithari.md and glasswake.md to describe surface spur routes that connect to the Keel, preserving the Keel's orbital identity.

### Priority 2: Terminology Fixes

2. **Replace "high-band" with "signal-band" in echo-rivers.md.** Lines 10 and 29. Aligns with the established three-band resonance model.

3. **Fix "Bloom zones" lowercase.** File: `player/timeline.md:88`. Change to "Bloom Zones."

4. **Fix double-article "[The Keel]" and "[The Shear]" links.** 6 instances across sithari.md, vantara.md, kite-sail.md, glasswake.md, tuners.md.

5. **Fix lowercase `[future:veilfire]`.** File: `player/artifacts/common/kite-sail.md:18`. Change to `[future:Veilfire]`.

6. **Fix "The [Vantara]" article.** File: `player/locations/settlements/sithari.md:59`.

### Priority 3: Stale Future Markers

7. **Replace stale `[future:]` markers with proper links.** At minimum:
   - `[future:Span Nine]` in timeline.md:42
   - `[future:Vantara]` in timeline.md:46,59,77,92
   - `[future:Shear]` in resonance.md:41
   - `[future:kite-sails]` in resonance.md:27
   - `[future:Kite-sails]` in practical-resonance.md:22

### Priority 4: Registry Updates

8. **Update entity registry status in causality.md.** Change Echo Ledger Conclave, Lattice Proxy Synod, and Sable Crescent from `shell` to `exists`.

### Priority 5: Minor Standardization

9. **Standardize "frequency null space" vs "resonance null space."** Consider picking one term (recommendation: "frequency null space") and using it consistently. Currently both appear in kite-sail.md.

---

## Recommended New Deterministic Checks

1. **Stale future marker detector:** The linter should cross-reference `[future:X]` markers against existing files. If a file exists for entity X, the marker should be flagged as stale. This would have caught findings C1-C6.

2. **Double-article link detector:** The linter should flag patterns like `the [The ` or `The [The ` in prose. These always produce grammatically incorrect rendered text.

3. **Resonance band vocabulary check:** The linter should flag the terms "high-band," "low-band," or any band term that isn't one of the three canonical bands (structural, kinetic, signal) or three canonical bandwidths (broad, mid, narrow) when used in resonance context.

4. **Entity registry freshness check:** The linter should verify that every entity with `status: shell` in the entity registry does not have a corresponding file that exists. This would have caught finding G1.

5. **Capitalization consistency for proper nouns:** The linter should flag inconsistent capitalization of entity names that appear in the entity registry (e.g., "Bloom Zones" vs "Bloom zones").

---

## Recommended Review Guidance Updates

None needed. The existing review guidance is solid. The issues found are all mechanical (stale markers, capitalization) or localized factual inconsistencies (Keel, Echo Rivers terminology) rather than systemic writing quality problems. The prose voice and tone are remarkably consistent across all entries.
