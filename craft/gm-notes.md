# GM Notes

A GM note tells whoever is running the game how an entry behaves when play
reaches it. It is one to three sentences, declared on the entity, and published
with the lore.

```ruby
gm_note :appears, "…"
gm_note :triggered_by, "…"
gm_note :complicates, "…"
```

Three kinds, and no others:

| Kind | What it answers |
|---|---|
| `appears` | how this enters a scene nobody asked for |
| `triggered_by` | what players routinely say or do that changes what it does |
| `complicates` | the pressure it puts on a scene it is already in |

An entry carries at least one note and at most three. Nothing requires one of
each. An entry that yields a single note gets a single note.

## The standard

**Broad condition, specific consequence.** The condition is something an
ordinary scene meets. The specificity goes into what happens next.

A note keyed to a rare trigger never fires. A note whose consequence is generic
gives the table nothing it could not have invented. Both halves have to hold.

## Admission tests

Apply these in order. A note that fails any of them does not go in.

1. **Frequency.** Of the scenes where this entity is on the table, how many does
   this note change? If the honest answer is one in twenty, cut it.
2. **Reuse.** Can a GM run this repeatedly and get different prose each time? A
   note that generates a hundred different encounters beats one that scripts a
   single scene.
3. **Trace.** Does it reduce to a sentence, a fact, or an edge in the entry? If
   you cannot point at the source, it came from the entity's atmosphere rather
   than from the entry, and it will read like every other note.

## Deriving one

Read the entry and its neighborhood: `page <id>`, `connections <id>`,
`facts <id>`.

Then start from the ordinary case. This entity is in a scene — an unremarkable
one — and ask what it does there. The edge neighborhood is where the material
lives, and it differs for every entry, which is why notes derived from it differ
too. The intersection of two rare edges is where unusable notes come from; the
frequency test governs.

Write notes for connected entries together rather than down a file listing. A
fact two entries share belongs to one of them, and the repetition is visible
while writing.

## Shape

`make check` rejects a note that is not one to three complete sentences, runs
past 320 characters of reading text, spans more than one line, or matches one of
these:

- **A withheld closer.** "…and nothing more." "…and leaves it at that." The
  consequence lands flat: say what happens.
- **A verdict on its own material.** A note reports behavior. It does not then
  tell the reader what the behavior means.
- **An authoring state.** "Not yet defined" is not a fact about the world.
- **Advice about running the table.** What the entity does, not how to pace a
  campaign. A decision about pacing belongs in a `log` on the entity.

Notes take the same markers as prose. Use `#{ref :other_id}` for a named entity
and the computed time markers for spans, so a note never drifts from what it
names.

## Voice

GM notes are the one authored surface exempt from the in-universe rule. They
name players, scenes, and the table directly, because that is who reads them.
Everything else in `craft/writing-guidance.md` still binds.

## Checking the corpus

`make gm-notes WORLD=<id>` lists entries with no note yet, then reports the three
ways notes written in bulk go wrong: pairs that share most of their wording, an
opening phrase several notes reuse, and notes that restate the summary of their
own entry. Each finding is a rewrite. Run it against the whole world rather than
against the batch you just wrote — convergence shows up between batches.
