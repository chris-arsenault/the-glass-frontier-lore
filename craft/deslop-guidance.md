---
title: De-Slop Guidance
---

# De-Slop Guidance

How to identify and fix AI-generated writing patterns ("slop") in lore entries. This is a living document — add patterns as they're identified.

## Core Principle

Slop is competent prose assembled from familiar rhetorical patterns instead of the subject's particular facts. It reads like a generic answer. Specific observations, attributed judgments, and concrete consequences give the prose its own character.

## Detection

### Read the Room Test

Read three entries in a row. If they feel like they were written by the same person in the same sitting, something is wrong. Real wikis are written by different people at different times with different priorities. Entries should vary in:
- Length (some entries are two paragraphs, some are two pages)
- Tone (some are dry, some are vivid, some are opinionated)
- Completeness (some entries are thorough, some have obvious gaps)
- Structure (not every entry needs the same section headers)

### Specific Tells

**Sentence rhythm monotony.** AI defaults to medium-length sentences with similar cadence. Look for long runs of clauses with the same shape or emphasis. Let the content determine the rhythm: a short sentence should carry a short, forceful fact; a fragment or aside should reflect the speaker's register rather than perform variety.

**The "which is" construction.** AI loves trailing relative clauses: "X, which is Y" or "X, which means Y." One per entry is fine. Three means the writing is explaining itself instead of trusting the reader.

**Balance hedging.** "Both X and Y." "Not just X, but also Y." "While X, also Y." These constructions often postpone the actual claim. State each relevant fact directly. When the evidence is genuinely ambiguous, identify who disagrees or what remains unmeasured.

**Parallel negation.** Repeated “not X, but Y,” “it does not merely,” and “neither X nor Y” structures make the narrator sound as though it is correcting an argument no one made. Start with the positive claim. Keep a contrast only when the rejected interpretation exists in the world and matters to the subject.

**Coy uncertainty.** “Nobody knows,” “nobody understands,” and a string of rhetorical questions can create mystery without giving the reader anything to inspect. State what witnesses observed, what the records lack, and where current explanations fail. Preserve the unknown; make its boundary concrete.

**Conceptual language where physical language belongs.** "The resonance landscape shifts" vs "the crystal goes quiet and stays quiet for three days." Prefer the physical, concrete version. The reader should see/hear/feel what's described.

**Trailing summaries.** Entries that end by restating what they just said. "And so, the Bloom remains..." / "Whether this will hold remains to be seen." Cut these. End on the last substantive point.

**Emotional instruction.** Telling the reader what to feel: "The implications are unsettling." "This carries real weight." Trust the content to do the work. If it's unsettling, the reader will be unsettled. If you have to say it's unsettling, the content isn't working.

**Samey transitions.** "But that's not the whole story." "The reality is more complicated." "What makes this different is..." These are filler. Cut or replace with the actual next point.

### Corpus-Level Tells

Patterns that only become visible across multiple entries:

**Phrase recycling.** The same 3-5 word phrases appearing in unrelated entries. Grep the repo periodically for repeated phrases.

**Structural cloning.** Unrelated entries should not follow the same implicit template: introduction, operation, significance, summary. Use sections that fit the subject. A long entry with several distinct, substantial sections is healthy when the material belongs together.

**Emotional monotone.** Every entry hits the same wistful-but-hopeful note. The world should contain entries that are dry, angry, bored, amused, clinical, or confused.

## Fixing Slop

### The Specific Detail Test

For any sentence that feels generic, ask: "What specific thing could replace this?" Replace:
- "The system is connected but unevenly" → name two settlements and say one has daily shuttle service while the other waits weeks for a kite
- "Tensions between expansion and preservation" → name the specific tension (who wants to expand into what, who's preserving what, and why)
- "The implications are significant" → delete

### The Origin Test

For any name or phrase, ask: "Who in this world came up with this, and when?" If the answer is "nobody, I just needed a label," the name needs work. Everything in the world was named by someone, and that someone had a perspective, a vocabulary, and a reason.

### The Deletion Test

Read the entry sentence by sentence. Delete a sentence only when it carries no unique fact, image, viewpoint, causal link, or useful atmosphere. If it contains substance behind a bad construction, rewrite it. Compression is not the aim.

## Positive Framing for Generation

When prompting for new content, use positive directives:
- "Choose an in-world observer and state what evidence they can access" (knowledge boundary)
- "Ground the account in a recorded incident, measured effect, or disputed report" (specific evidence)
- "Name this the way a salvage crew would: use the crew's work and vocabulary" (cultural grounding)
- "Give every section a distinct subject and enough detail to establish it" (substance)

Avoid negative directives — they activate the pattern you're trying to avoid:
- NOT "don't use AI-sounding language"
- NOT "avoid cliches"
- NOT "don't be generic"
