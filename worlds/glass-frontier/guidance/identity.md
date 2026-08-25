---
title: Descriptive Identity — The Glass Frontier
---

# Descriptive Identity — The Glass Frontier

How `descriptive_identity` dictionaries are authored in this world. This file
is method only. What is *true* of the world lives in canon articles; when this
file needs a world fact, it points at the entry that owns it.

## The scene-anchor test

A dictionary exists so a scene can anchor on it: each key holds compact,
concrete description a game can narrate from directly. Every value must pass
one test — could the thing be narrated into a scene from this text alone.
Values run one to three sentences. The per-kind keys and relationship profiles
are declared in `world/schema.rb`; the schema is the authority on which keys a
kind carries.

## Variety is the premise

Ring habs defy definition — that is the point of the Glass Frontier. There is
no default hab interior, no standard settlement register, no typical faction
presence, no ordinary creature encounter. Every dictionary is distilled from
its own entry's canon, in its own words. Never write from a template, and
never let two entries share a sentence shape because they share a kind.

## Veiled entities are blank slates

They exist to be established in play, so they carry no descriptive identity
and no identity sources; the validator rejects any. A veiled entity can never
be an identity source.

## Sources and the local dictionary

Reused norms live once, in complete source articles — species, cultures,
trades — and consumers inherit them without copying. An ordinary person needs
no local identity text at all. Add `descriptive_identity` only where the
individual genuinely diverges, and `override_identity` only where an inherited
norm does not apply. If the same local sentence appears on a third entity, it
belongs in a source article instead.

## Plain speech

Everyone's speech is rendered as clear, plain English. No trade cant, no
phonetic dialect, no jargon vocabularies, no invented shorthand a reader must
decode. Describing how someone talks means describing delivery — pace, volume,
directness — never vocabulary. There is deliberately no speech identity key.

## Banned

- **Uniform-and-jumpsuit futurism.** No color-coded coveralls, no rank patches
  as personality, no population dressed identically by function.
- **Physiognomy as character.** No body that announces virtue or menace.
  Bodies say where you grew up, nothing more.
- **Narrator verdicts, meta language, and "nobody knows"** — the standing
  prose rules apply to dictionary values as much as to articles.

## Editorial direction

- **Coremark is over-represented**: write nothing that adds to its
  involvement. See also `archetype-slots.md`.
- **The open field**: some of the system's major forces are intentionally
  undefined and await unveiling. Never write a totalizing claim about who
  holds power; use `future` markers where an unnamed force belongs.
- **Vocabulary**: "hab" is the word for an inhabited place; "fragment" only
  ever means a physical piece of the broken ring.
- **Tone baseline**: serious hopecore per `tone.md` — people keep routines,
  work, and humor under conditions that ought to break them; despair is the
  exception and needs a reason.

## Where the world facts live

The facts that once sat in this file are canon, owned by entries. Consult and
extend them there:

- How strangers are read — bodies say origin, instruments say trade,
  officials wear uniforms, criminal organizations are illegible, and the
  signs are routinely misread: `cultures` (Reading a Stranger).
- Money, mending as the material aesthetic, the hum of working technology,
  the feel of pre-Glassfall craft, and how far any writ runs:
  `life_in_the_system`.
- What resonance work feels like to bystanders, by band and power:
  `resonance` (Feeling It Work).
- The Shear's unease and its small psychoses: `the_shear` and `deep_shear`.
- Cordon-edge appearance, crossing custom, and the corruption around the
  Bloom: `bloom_zones` (The Cordon Line).
- Observance of the Three Forms, from indifference to study circles:
  `the_three_forms` (Observance) and `tessellan_communion`.
- Per-species bodies and senses, per-culture appearance, attire, manner, and
  hospitality, per-trade tools and manner: the source articles' own
  dictionaries.
