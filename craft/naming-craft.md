---
title: Naming Review Guidance
---

# Naming Review Guidance

How to evaluate and improve entity names in this lore repository. Names are the first thing a reader encounters and the strongest signal of whether the world feels curated or generated.

## The Core Test

Read the name without its article. Which word, shifted meaning, or cultural
morphology makes it belong to this setting? If the answer is only that its two
ordinary words describe the subject, the name has not established an identity.

## Build A Lexicon

A setting needs a growing, coherent vocabulary of its own. Its names teach that vocabulary
through use: a few invented words, ordinary words with stable unfamiliar
meanings, important setting terms reused across related subjects, and proper
names that share the sounds and forms of a culture. A good name still belongs
to its world when encountered outside the article that defines it.

The Encyclopedia bears the greatest responsibility because it establishes the
words later entries will reuse. Name the ordinary category in the summary, then
give the subject a title that contributes to the setting's vocabulary. The
title may introduce a word, deepen an established word, or join a culture's
existing name family. It should not merely summarize two visible traits.

Treat a modifier joined to a generic animal, profession, device, hazard, or
abstraction as a failed draft unless one element already carries a distinctive
setting meaning and the combination extends it. A fictional etymology or named
speaker can explain why a good term persists, but neither gives an empty
construction lexical identity. Replacing the construction with the bare animal,
profession, or device removes one symptom without naming the subject.

Read the world's `naming_lexicon` declaration before proposing a name. Ask what
word or morphology the proposal teaches, where else the reader will meet it,
and whether that repetition makes the world more learnable. The declaration is
the vocabulary established so far, not an allowlist or a table of prefixes and
suffixes to combine mechanically.

Reuse an entry only within its declared meaning and boundary. Extend the
lexicon when a recurring culture, place family, practice, material, or
institution needs language the existing entries cannot supply. Add the new
word or pattern in the same change as its first canonical examples, and state
where it does not apply. A single named subject can receive a proper name
without making that name a productive root. When an extension asserts facts
about an in-world language or naming history, add those facts to the
Encyclopedia entry that owns them.

## Naming Procedure

Use these steps in order. Do not propose names while gathering the language
that will support them, and do not edit titles while judging candidates.

### 1. Establish what is being named

Read the complete entry, not only its title and summary. State the ordinary
category without using the current name. Identify the people who speak the
name: a culture, trade, institution, household, settlement, scholarly body, or
group of witnesses. Read the entries that establish their language and the
neighboring names they already use.

If no speaker or naming tradition can be identified, the entry is not ready
for an invented cultural term. A plain title may remain provisional while the
missing world context is written.

### 2. Gather language before generating candidates

Read the world's `naming_lexicon`. Collect the words and name forms already
established by the relevant speakers. Separate them from striking details in
the article. A component, procedure, symptom, destination, quotation, or image
may explain the subject without being what anyone calls it.

Do not add a lexicon entry during this step. First decide whether the corpus
already demonstrates a productive word or morphology.

### 3. Choose one legitimate source for the name

A candidate must follow one of these paths:

1. Reuse an established word whose recorded meaning directly governs the
   subject.
2. Follow a cultural morphology already demonstrated by related names.
3. Introduce a distinctive proper or invented name for this subject without
   claiming that it is a productive root.
4. Extend the lexicon for a recurring family that the existing vocabulary
   cannot name.

The fourth path requires evidence independent of the proposed title. The word
or pattern must organize at least two canonical uses, or an owning culture
entry must establish it as productive language and supply multiple forms. A
candidate cannot serve as the sole evidence for the root that would authorize
it.

### 4. Generate candidates from that source

For each candidate, write one sentence identifying its source: the existing
word and boundary, the cultural morphology, the attested working term, or the
language that produced a one-off proper name. State where a reader will meet
the same vocabulary or learn its form.

Do not treat an explanation of the subject as an explanation of the name. The
summary supplies the ordinary category and function; the title supplies
identity.

### 5. Reject candidates before comparing them

Reject a candidate when any of these is true:

- It is a generic category or abstraction with no established unfamiliar
  meaning.
- It joins a relevant modifier to an animal, profession, device, material,
  hazard, or other category without a governing setting term.
- It promotes a component, procedure, symptom, destination, quotation, or
  vivid sentence from the article into a title.
- Its only claim to being a shifted ordinary word appears in the same article
  being renamed.
- It needs a new lexicon declaration whose only evidence is the candidate
  itself.
- It sounds setting-specific only while the article is present to explain it.
- It could move unchanged to another secondary world with the same subject.
- It imitates a culture's spelling or sound without belonging to that
  culture's demonstrated morphology.

An in-world etymology, speaker, or historical anecdote does not override these
tests.

### 6. Make one semantic decision

Judge the current name by the same tests as every replacement. Compare the
surviving candidates with names from the same speakers and subject family, not
with an arbitrary mixed list. Check that the result adds useful repetition
without reducing the family to one mechanical template.

Do not accept a batch because every row has a plausible explanation. Each name
must independently pass the setting-identity and lexical-contribution tests.

### 7. Implement after the decision

Change the title, the summary's naming sentence, local uses of the old common
name, and explicit reference labels. Keep the old form as an alias only when
people in the world still use it. Record editorial reasoning in the entry's
`log`, never in reader prose.

When a lexicon extension independently qualified in step 3, add its meaning,
use, examples, and boundary with the canonical entries that demonstrate it.
Never add a root after selecting a title merely to make that title pass.

For a pass larger than five entries, implement the first three and reread their
titles without summaries alongside the lexicon and neighboring names. Continue
only if those names still pass. Validation confirms references and structure;
it does not confirm naming quality.

## Common AI Naming Failure Modes

### "The Blank Thing" Pattern

The most pervasive tell is a page dominated by `The [Adjective] [Noun]` names.

One or two of these is fine — some things genuinely are "the [quality] [thing]." But when *most* names follow this pattern, the world sounds like a single voice named everything. Real worlds have naming that's messy, inconsistent, and varied because different people named different things at different times for different reasons.

**Fix:** Keep the best 2-3. Rename the rest using different structural patterns:
- Proper nouns derived from people, places, or events: "Morraine's Run" not "The Trade Route"
- Functional shorthand that stuck: "the Spine" rather than a full survey designation
- Borrowed/corrupted words from in-world languages
- Accidents of history: what the first person to see it called it, which might be mundane or strange
- Acronyms, abbreviations, slang that calcified into official names

### Euphonic Sameness

All names sound like they come from the same phonetic palette. Everything flows, everything is 2-3 syllables, nothing is ugly or awkward. Real naming includes:
- Names that are hard to pronounce (and get shortened)
- Names with different linguistic origins (because different cultures named things)
- Names that are boring ("Station Nine," "Sector K") alongside poetic ones
- Names that are accidents ("the Burn" because a refinery failed, not because someone thought it sounded cool)

### Lexical Isolation

Each coined term appears once, with no related words or names to make its form
learnable. The result is a list of isolated clever labels rather than a
vocabulary.

Reuse belongs where the world supplies a real connection:
- A physical force can name the instruments, failures, and practices that act on it
- A legal term can recur across offices, records, and disputes
- Related personal names can share morphology without sharing one mechanical suffix
- A borrowed word can change predictably as different communities pronounce it

### Grandiosity Creep

Everything sounds important. Real civilizations give some important things
mundane names and some minor things grand ones.

Mix in names that are deliberately un-grand for important things, and occasionally grand names for minor things.

## Review Checklist

When reviewing entity names, check:

1. **Setting identity:** Would the name still suggest this world outside its article?
2. **Lexical contribution:** Does it introduce, deepen, or productively reuse a setting term or name family?
3. **Compound test:** If it joins ordinary words, does either word carry a setting-specific meaning that governs the subject?
4. **Pattern diversity:** Do unrelated names avoid repeating one structural template?
5. **Cultural morphology:** Do related proper names share the sounds and forms of the culture that produced them?
6. **Register:** Do formal names, working names, and intimate names differ where the world calls for them?

## Positive Framing

When generating or revising names, frame directives positively:
- "Extend the world's legal sense of *standing* into this office's title."
- "Use the family-name morphology already established for the capital."
- "Introduce one short trade word that can recur in the tool, its operator, and the act they perform."
