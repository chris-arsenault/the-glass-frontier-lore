# Writing Guidance

Mandatory rules for all lore prose. Follow these before, during, and after writing. Violations found in review must be fixed before marking a file as reviewed.

## 1. Entity Attribution

**Never default to a known entity when the archetype has unfilled slots.**

Before attributing an action, resource, or relationship to an existing entity, run `python3 review.py gaps` and check whether that entity's archetype category is full. If it isn't, strongly prefer a `[future:]` marker for a new entity.

**Examples:**
- Smuggling → DON'T write "Coremark channels." Criminal Syndicate has 2 open slots. Write "black market networks" or `[future:syndicate name]`.
- Trade logistics → DON'T write "Vantara handles it." Trade Corporation has 2 open slots. Write "commercial carriers" or `[future:carrier name]`.
- Governance → Governance Body is full (3/3). Attributing to Tempered Accord, Displacement Council, or Shear Compact is fine where accurate.

**The rule:** If an archetype has N filled and M expected, and N < M, treat existing entities in that archetype as *one of several* rather than *the one*. Use generic language or `[future:]` markers. The world is bigger than the entities we've named so far.

## 2. No Snide Tack-On Clauses

**Never end a sentence with an editorial quip commenting on the thing just described.**

These read as the author winking at the reader. They undermine the encyclopedic voice and make the prose feel like it was written by a teenager.

**Bad patterns:**
- "which surprises nobody and irritates everyone"
- "which is exactly as chaotic as it sounds"
- "they mostly succeeded"
- "nobody was surprised"
- ", because of course it does"
- ", naturally"

**The fix:** If the tension or irony is worth expressing, develop it into its own sentence or paragraph with real substance. See `player/concepts/sitharian-culture.md` Perception section as the canonical example — it expresses discomfort with Sitharian dominance through grounded observation, not editorial asides.

**Detection pattern:** Any clause after an em dash, comma, or period that functions as the author's commentary on the preceding statement rather than adding factual content.

**Exception: deadpan.** Terse, factual characterization is allowed — "She does not enjoy the job. She is very good at it." is deadpan, not snide. The difference: deadpan states a fact the character would agree with. Snide states the author's opinion about the situation. **Limit: one deadpan moment per entry, maximum.** More than that and the voice becomes a tic rather than a tool.

## 3. No "They Didn't Know" Winks

**Never tell the reader that historical actors didn't foresee their own significance.**

This is dramatic irony narrated rather than shown. Once or twice in the entire corpus is fine. More than that is a tic.

**Bad patterns:**
- "a tradition they didn't know they were starting"
- "consequences no one foresaw"
- "nobody expected what came next"
- "without realizing what they'd set in motion"
- "little did they know"
- "what they couldn't have known"

**The fix:** State what happened. The reader can supply the irony. "A tradition that would outlast the crisis that created it" is fact. "A tradition they didn't know they were starting" is narration commenting on itself.

## 4. Cross-Reference, Don't Duplicate

**If content exists in its own entry, other entries must cross-reference it, not reproduce it.**

When a topic (KITE technology, naming conventions, resonance mechanics) has a dedicated entry, other entries should include:
- One contextual sentence establishing relevance
- A link to the dedicated entry

Not a summary, not a condensed version, not a "brief overview." One sentence and a link.

**Example:**
> [Kites](../artifacts/common/kite-sail.md) are the general-purpose motive engine of the system. See the [KITE entry](../artifacts/common/kite-sail.md) for mechanics and classes.

## 5. In-Universe Voice (recap)

All prose is written from inside the world. See CLAUDE.md "In-universe voice" section. The three violations:
- **Domain leakage** — no Earth references (trucks, Venus, Uber, sailboats)
- **Wrong register** — no design language (wiki, DM, culture slot, "not yet defined")
- **Author's notes** — no meta-commentary about narrative function

Use `review-guidance/voice-review-prompt.md` for systematic checks.
