---
title: Authoring Method — The Dry War
---

# Authoring Method — The Dry War

This world is authored differently from the other two, on purpose.

The Glass Frontier was built by question-and-answer with nearly all content supplied by the human, which produces a world with no generic seams anywhere and costs the human an enormous amount of writing. The Ice Remembers will be a procedural port of existing material, which costs almost nothing and permits almost no invention.

The Dry War is the third case: **the assistant generates, the human directs, and direction costs sentences rather than paragraphs.** What follows is how that produces good entries.

Several techniques are adapted from `../agents-of-glass`, which solves a related problem in a different medium — keeping a long agentic loop writing in a specific world rather than an average one.

---

## What the entries are for

Everything written here serves one centre: **two superintelligences are sincerely trying to build stable civilizations, and each built on a premise that is catastrophically wrong for humans.** Around that sit three consequences the source states plainly — survival is not the same thing as living; the choice on offer is individuality for belonging or agency for safety; and most of humanity is fine, which is the hard part.

An entry earns its place by making one of those concrete in a specific place, at a specific scale, with something a person could touch. An entry that restates the centre in the abstract has not.

*(How that centre was arrived at is worth recording, because it was nearly something else. On first reading the premise document I concluded the world was about incompatible accounts of reality — a pattern that is genuinely in the text, nine or so instances of it, none of them mine. But it is not what the document says it is about, and I favoured that reading partly because it made a method I was already proposing look cheap. The centre above is what the source actually asserts, repeatedly, starting in its first paragraph. It remains the human's to overrule.)*

---

## Instruments, not narrators

Content comes from named people who can measure some things and cannot see others.

This is the engine, and the distinction is the whole of it. A *narrator* describing a settlement produces summary — the place is poor but proud, opinions differ. A *Mercy outcomes officer* describing the same settlement produces litres per person, morbidity, compliance rates, and a recommendation, because those are the readings she has. A Garden Courts agronomist standing beside her measures soil carbon, seed lineage and how many people know the songs, and files something incompatible.

Neither is lying. Neither is confused. Each is accurate inside its frame and blind outside it, and the blindness is what generates specificity: an instrument cannot be vague, because a reading is a number or a name.

What this buys, concretely:

- **Specificity without invention.** The angle comes from what the observer can read, so a new entry needs a new *vantage*, not new facts.
- **Edges for free.** A report is a relationship. Who measured what, on whose authority, disputed by whom.
- **A reason for two entries on one subject.** Not redundancy — different instruments.

Each chronicler needs, in the manner of the `agents-of-glass` persona files: a name, an employer, what they can measure, what they cannot see, one prose tic, one thing that gets under their skin. "The Preservationist archivist" is a role and generates nothing. A named archivist who files in triplicate, trusts nothing he cannot read off a ceramic, and has never forgiven the Gatekeepers for the strain audit fee is a generator.

The roster is not yet written.

---

## Seams, not lists

Work one live pressure until it has an answer, and take whatever cluster it implies.

*What happens to a person crossing a Gatekeeper checkpoint* produces the installation, the procedure, the fee schedule, the two people who run it, the strain they cultivate, and the argument with the Preservationists about all of it — connected, because it was written connected.

Filling the kind taxonomy instead produces orphans. The first pass did that and reached 1.5 edges per entity while the prose carried far more connection than `_edges.rb` declared.

A seam is done when the pressure has an answer and the cluster validates.

---

## Non-adjacent seed pulls

Start each cluster from something unrelated to it: an image, a line of public-domain text, a discipline nobody in the seam belongs to. `agents-of-glass` injects a tarot card and a verse phrase into play turns for the same purpose — texture that grants no permissions and overrides nothing, but means the writing does not begin at the average.

One pull per cluster, occasionally per entity when a batch is running flat. The pull is a constraint, not a subject: if a reader can identify the seed from the entry, it was used as content and the entry needs rewriting. Record the pull in the cluster's `log`, so a flat batch can be traced to a flat pull.

---

## Direction as verdicts

The human's moves are cheap and there are three:

- **`question "…"` on an entity** — a direction, a doubt, or "this is wrong". One sentence. `make queue WORLD=dry-war` aggregates them; answering them is the assistant's job.
- **Deleting a `question`** — acceptance.
- **"Wrong" on a cluster** — it gets rewritten, and the reason goes in `guidance/tone.md`.

`guidance/tone.md` accumulates rather than being authored up front: every verdict that generalizes gets written down once. This is `codify-only-what-drifts` applied to taste, and the test of the method is whether the same correction is ever needed twice.

---

## Hygiene

Two habits to check on the way out, because both are invisible to their author.

**No narrator's verdict.** An entry may report a disagreement at length; it may not then explain what the disagreement means. `world/schema.rb` bans the closers this world has caught itself using, and `make check WORLD=dry-war` fails on them.

**No cadence paragraphs.** A one-sentence paragraph that exists to land a beat is writing performed at a reader rather than written for one. There is no check for this; read the render.
