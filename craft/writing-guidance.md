# Writing Guidance

Mandatory rules for all lore prose, in every world in this repository. Follow these before, during, and after writing. Violations found in review must be fixed before marking a file as reviewed.

Worked examples for a particular setting live in that world's `guidance/` — this file carries the rules.

## 1. Write The World, Not Its Paperwork

**An entry describes a world. It does not describe how an institution keeps records of itself.**

Write what a place is like to stand in, what the people there want, what they are frightened of, what they argue about with each other, and what happens to somebody who gets it wrong. Those are facts about a world, and a reader who has never heard of the setting can take them in on first reading.

A form, a fee, a card that expires, a threshold, a sheet filed in triplicate, an inspection run on a stated interval — none of these is a fact about a world. They are the paperwork an institution generates, and an entry assembled out of them has nothing in it to understand. Dense invented procedure reads as depth while carrying no meaning; it is the most common way an entry in this repository fails.

**The rule:** a procedure is never the subject of an entry. An object may be described and a rule may be stated in a clause, but the entry is about the place, the people, or the thing — not about the steps.

**Two tests, both applied to the entry alone, with no other entry open:**

1. Can a first-time reader say what this is and why anyone cares? If answering needs the procedures of five other entries, the entry has failed.
2. Does the entry name something somebody wants, fears, has lost, or is fighting another person over? If it only names steps, quantities and forms, it has failed.

**The fix is replacement, not deletion.** Where a draft states a step, state the consequence instead: who is ruined by it, who works around it, what it is like to be on the wrong side of it, what the place smells like on the day it happens. A single concrete stake carries more than a page of correctly specified process.

**Bad patterns:**
- an entry whose every paragraph is a stage of one process
- counted quantities standing in for significance — figures, fractions, intervals and tallies with nothing at risk
- an entity named after a document, a form, a card, a sheet, a list, a count or a sitting
- a named instrument doing the work a person should do
- terms used as though the reader already has the glossary

## 2. Entity Attribution

**Never default to a known entity when the archetype has unfilled slots.**

Before attributing an action, resource, or relationship to an existing entity, consider whether that entity's archetype category is already well-represented. If a category is thin, strongly prefer a `#{future "Name"}` marker for a new entity over overloading a known one.

**The rule:** If an archetype has N filled and M expected, and N < M, treat existing entities in that archetype as *one of several* rather than *the one*. Use generic language or a `future` marker. The world is bigger than the entities named so far.

Which archetypes are thin in a given world is that world's `guidance/archetype-slots.md`. The schema for those counts is `entity-bank-schema.md`.

## 3. No Snide Tack-On Clauses

**Never end a sentence with an editorial quip commenting on the thing just described.**

These read as the author winking at the reader. They undermine the encyclopedic voice and make the prose feel like it was written by a teenager.

**Bad patterns:**
- "which surprises nobody and irritates everyone"
- "which is exactly as chaotic as it sounds"
- "they mostly succeeded"
- "nobody was surprised"
- ", because of course it does"
- ", naturally"

**The fix:** If the tension or irony is worth expressing, develop it into its own sentence or paragraph with real substance. Grounded observation carries resentment, unease or absurdity far better than an editorial aside does.

**Detection pattern:** Any clause after an em dash, comma, or period that functions as the author's commentary on the preceding statement rather than adding factual content.

**Exception: deadpan.** Terse, factual characterization is allowed — "She does not enjoy the job. She is very good at it." is deadpan, not snide. The difference: deadpan states a fact the character would agree with. Snide states the author's opinion about the situation. **Limit: one deadpan moment per entry, maximum.** More than that and the voice becomes a tic rather than a tool.

## 4. No "They Didn't Know" Winks

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

## 5. Cross-Reference, Don't Duplicate

**If content exists in its own entry, other entries must cross-reference it, not reproduce it.**

When a topic — a technology, a set of naming conventions, a system's mechanics — has a dedicated entry, other entries should include:
- One contextual sentence establishing relevance
- A `ref` link to the dedicated entry

Not a summary, not a condensed version, not a "brief overview." One sentence and a link.

**Shape:**
> Kites are the general-purpose motive engine of the system. See #{ref :kite_sail} for mechanics and classes.

## 6. In-Universe Voice (recap)

All prose is written from inside the world. See the "In-universe voice" section of the root `CLAUDE.md`. The three violations:
- **Domain leakage** — no real-world referents used as comparisons
- **Wrong register** — no design language (wiki, DM, culture slot, "not yet defined")
- **Author's notes** — no meta-commentary about narrative function

Use `voice-review-prompt.md` for systematic checks, with the world's `guidance/voice-referents.md` for the list of referents that setting bans.

## 7. Artifacts Are Story Drivers

Named artifacts are not inventory items. They are characters with history, consequence, and — in some cases — agency. A named artifact should have the weight of Callandor, the Horn of Valere, or the Silmarils.

**Artifacts have identity.** A named artifact isn't an instance of a category — it's *this specific* object, with a name people know, a history people argue about, and properties that matter. Naming an artifact is a commitment: this object matters enough to be remembered.

**Artifacts drive action.** People want them, fear them, seek them, hide them, fight over them. An artifact that sits in a museum and does nothing interesting is a display piece, not a story driver. Every artifact entry should imply at least one active tension: who wants it? Who has it? What happens if it's used?

**Artifacts have costs.** The hard-systems rule applies doubly here. Every artifact's power has a defined cost, limit, or danger. The more powerful the artifact, the more dangerous or costly it is to use. No free power.

**Artifacts can have agency.** Where a setting's physics allow it, an artifact may retain tendencies — not sentience, but a structure that favours some uses and resists others. The wielder experiences this as the object having preferences; the entry explains it through the setting's mechanics. Agency that cannot be explained that way is not allowed.

**The test:** Every time prose mentions a technology, an effect, or a mysterious object, ask: should this be a named artifact? The bar is "could a player want to find this?" If yes, name it.
