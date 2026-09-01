---
title: Naming Guidance — The Glass Frontier
---

# Naming Guidance — The Glass Frontier

Canonical naming traditions belong in the Encyclopedia. Read the current world
article before naming a person, role, place, event, or reusable subject:

```bash
ruby lorecraft/bin/lorecraft reference page naming_conventions --world glass-frontier
```

Do not add a cultural pattern, historical naming claim, vocabulary list, or
etymology only to this file. Add it to the Encyclopedia entry that owns the
fact, then use it here as a source.

## Choosing a name

Read the Glass Frontier vocabulary before proposing a name:

```bash
ruby lorecraft/bin/lorecraft lexicon --world glass-frontier
```

Choose a name that adds to or deepens that vocabulary. The strongest recurring
forms are invented world words such as *ringglass*, ordinary words promoted to
stable Kaleidos meanings such as *standing* and *tune*, central terms such as
*resonance* that grow into related uses, and culture-specific proper names with
recognizable morphology.

The command reports what Kaleidos has established so far, not a closed list.
Reuse a word only when its stated Glass Frontier meaning governs the new
subject. Do not force a new subject under *resonance*, *Bloom*, *Shear*,
*Sithari*, or another familiar root merely because the word makes the title
sound local.

Give an unfamiliar term an ordinary gloss in the entry summary. The gloss tells
the reader what the subject is; the title teaches how Kaleidos names it.

Follow `craft/naming-craft.md` § Naming Procedure in order. Before generating a
candidate, identify the people whose language should supply it. Kyther route
families, Korvath river trades, hab wards, Sitharian offices, Shear crews, and
surviving elven institutions do not draw names from one shared sound palette.
Read the relevant culture, place, role, or technology entries that demonstrate
their existing language.

Keep article details in their proper role. A measured capacity, instrument
part, work sequence, destination, symptom, or memorable sentence can make the
entry concrete without becoming its title. The fact that crews use or notice a
detail does not by itself establish a Glass Frontier name.

Treat a modifier joined to a generic noun as a failed draft. *Root Crab*, *Cable
Fox*, and *Cold Count* attach relevant words without creating Glass Frontier
vocabulary. *Resonance Cascade* succeeds because resonance already names the
setting's central physical system and cascade extends that term into a specific
failure. A history of who coined a phrase does not rescue a weak construction,
and reducing it to *Crab*, *Fox*, or *Count* does not supply a name.

When a formal name and a working name coexist, record the canonical form with
`title` and the other with `alias`. Use the form spoken by the relevant
observer in prose.

## Extending the vocabulary

Add a word or pattern when a recurring culture, place family, practice,
material, or institution needs language the current lexicon cannot supply.
Read the relevant culture and neighboring names first. Decide whether the need
is a productive word, a cultural morphology, or one proper name. A lone base,
person, or artifact does not need to create a reusable root.

Add an extension in the same change as its first canonical uses. Record the
word's meaning and productive use, or the pattern's morphology; give the names
that demonstrate it and state where it stops applying. If the change establishes
how people in Kaleidos speak, derive names, or understand a term, put that fact
in the relevant Encyclopedia entry as well as the editorial lexicon.

The proposed title cannot be the only evidence for its own extension. Require
at least two canonical uses, or an owning culture entry that explicitly
establishes productive language and supplies multiple forms. If the term names
only one subject, treat it as a one-off proper or invented name rather than a
root available for reuse.

For a new family of bases, for example, establish what their builders share and
how their language expresses it. Add a root or pattern only if it can organize
the family without reducing every title to `<root> Base`. If no existing entry
fits, creating a new one is the correct result.

## Review

Read the proposed name beside the lexicon and neighboring entries. Identify the
word, shifted meaning, or cultural morphology it contributes. Reuse is valuable
when it teaches a shared concept; unrelated entries should not repeat the same
compound structure or sound palette.

Read the name without its article. If it could belong unchanged to any science
fiction setting, it has not done its work. If it sounds Glass Frontier only
because it contains *glass*, *root*, *signal*, *cold*, or another common image,
check whether that word's declared meaning actually governs the subject.

The universal review method remains `craft/naming-craft.md`; the per-kind checks
remain `craft/naming-by-kind.md`.
