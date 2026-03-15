---
title: De-Slop Guidance
---

# De-Slop Guidance

How to identify and fix AI-generated writing patterns ("slop") in lore entries. This is a living document — add patterns as they're identified.

## Core Principle

Slop is not bad writing in the traditional sense. It's writing that is competent, coherent, and completely devoid of a specific human sensibility. It reads like "a good answer" rather than "something someone thought." The goal is not to make writing worse — it's to make it specific.

## Detection

### Read the Room Test

Read three entries in a row. If they feel like they were written by the same person in the same sitting, something is wrong. Real wikis are written by different people at different times with different priorities. Entries should vary in:
- Length (some entries are two paragraphs, some are two pages)
- Tone (some are dry, some are vivid, some are opinionated)
- Completeness (some entries are thorough, some have obvious gaps)
- Structure (not every entry needs the same section headers)

### Specific Tells

**Sentence rhythm monotony.** AI defaults to medium-length sentences with similar cadence. Look for: long runs without a short punchy sentence, or vice versa. Fix by varying deliberately — a one-word sentence after a long one, a fragment, an aside in dashes.

**The "which is" construction.** AI loves trailing relative clauses: "X, which is Y" or "X, which means Y." One per entry is fine. Three means the writing is explaining itself instead of trusting the reader.

**Balance hedging.** "Both X and Y." "Not just X, but also Y." "While X, also Y." AI instinctively avoids committing to a position. Lore should commit. If something is good, say it's good. If it's bad, say it's bad. Hedging is for entries where genuine ambiguity is the point.

**Conceptual language where physical language belongs.** "The resonance landscape shifts" vs "the crystal goes quiet and stays quiet for three days." Prefer the physical, concrete version. The reader should see/hear/feel what's described.

**Trailing summaries.** Entries that end by restating what they just said. "And so, the Bloom remains..." / "Whether this will hold remains to be seen." Cut these. End on the last substantive point.

**Emotional instruction.** Telling the reader what to feel: "The implications are unsettling." "This carries real weight." Trust the content to do the work. If it's unsettling, the reader will be unsettled. If you have to say it's unsettling, the content isn't working.

**Samey transitions.** "But that's not the whole story." "The reality is more complicated." "What makes this different is..." These are filler. Cut or replace with the actual next point.

### Corpus-Level Tells

Patterns that only become visible across multiple entries:

**Phrase recycling.** The same 3-5 word phrases appearing in unrelated entries. Grep the repo periodically for repeated phrases.

**Structural cloning.** Every entry follows the same implicit template: intro paragraph, "## What It Is", "## How It Works", "## Significance." Break the template. Some entries should be a single narrative paragraph. Some should be a table. Some should start in the middle.

**Emotional monotone.** Every entry hits the same wistful-but-hopeful note. The world should contain entries that are dry, angry, bored, amused, clinical, or confused.

## Fixing Slop

### The Specific Detail Test

For any sentence that feels generic, ask: "What specific thing could replace this?" Replace:
- "The system is connected but unevenly" → name two settlements and say one has daily shuttle service while the other waits weeks for a kite-sail
- "Tensions between expansion and preservation" → name the specific tension (who wants to expand into what, who's preserving what, and why)
- "The implications are significant" → delete

### The Origin Test

For any name or phrase, ask: "Who in this world came up with this, and when?" If the answer is "nobody, I just needed a label," the name needs work. Everything in the world was named by someone, and that someone had a perspective, a vocabulary, and a reason.

### The Deletion Test

Read the entry. Delete any sentence you can remove without losing information the reader needs. If the entry is 30% shorter, the deleted material was slop.

## Positive Framing for Generation

When prompting for new content, use positive directives:
- "Write as a tired archivist compiling notes at the end of a shift" (specific voice)
- "Include one detail that doesn't fit the pattern" (breaks monotony)
- "Name this the way a salvage crew would — functional, maybe profane, definitely not poetic" (cultural grounding)
- "Make the first sentence something that would make a reader pause" (engagement)

Avoid negative directives — they activate the pattern you're trying to avoid:
- NOT "don't use AI-sounding language"
- NOT "avoid cliches"
- NOT "don't be generic"
