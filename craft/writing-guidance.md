# Writing Guidance

Mandatory rules for all lore prose, in every world in this repository. Follow these before, during, and after writing. Violations found in review must be fixed before marking a file as reviewed.

Worked examples for a particular setting live in that world's `guidance/` — this file carries the rules.

## 1. Do Not Make Procedure The Subject

An entry describes something that exists or happens in the world: a person, people, place, group, object, event, belief, technology, creature, resource, phenomenon, or conflict. It does not exist to explain a form, protocol, inspection, schedule, contract, accord, register, claim, hearing, or chain of approval.

Administrative details may appear when they change what happens in the world. “Every departing train is searched” tells the reader something about a station. The stages of that search do not need their own entry.

Reject an entry when a first-time reader cannot answer both questions:

1. What exists here?
2. Who cares about it, and what can happen to them?

To repair it, identify the person, place, object, or conflict affected by the procedure and make that the subject. Replace steps with their results and with what people do in response. Merge useful details into the entry that owns them. Delete the entity when nothing remains after the procedure is removed.

Use words a reader already knows. Invent a term only when people in the world need a stable name for a distinct thing, and make its meaning clear on first use. A lyrical description is welcome when its images reveal the subject. Cut abstractions that merely announce importance, complexity, or unease.

## 2. Do Not Reuse A Familiar Name By Default

Do not give every new action, resource, or relationship to the nearest known entity. Ask who would actually act, own the thing, or take part.

Some worlds use `guidance/archetype-slots.md` to state how many examples of a kind they expect. When fewer have been written, treat the known entities as some of the examples, not the only possible examples. Prefer a `#{future "Name"}` marker for a distinct unwritten entity, or use generic language when its name does not matter.

## 3. Remove Editorial Asides

Do not add the narrator's quip to the end of a fact.

Remove phrases such as:

- “which surprises nobody and irritates everyone”
- “which is exactly as chaotic as it sounds”
- “they mostly succeeded”
- “nobody was surprised”
- “because of course it does”
- “naturally”

Check any clause after a comma, dash, or full stop that comments on the preceding fact instead of adding another fact. If resentment, unease, or absurdity matters, attribute it to someone or show what it makes them do.

A dry sentence can be funny when it states a fact the subject would accept: “She does not enjoy the job. She is very good at it.” Use no more than one such moment in an entry.

## 4. Do Not Narrate Hindsight

State the event and its later consequence. Do not make a habit of telling the reader that people at the time failed to foresee their historical importance. At most, use this once or twice across an entire world.

Remove phrases such as:

- “a tradition they didn't know they were starting”
- “consequences no one foresaw”
- “nobody expected what came next”
- “without realizing what they had set in motion”
- “little did they know”
- “what they couldn't have known”

Write “a tradition that outlasted the crisis that created it.” The dates carry the hindsight without a comment from the narrator.

## 5. Compose Instead Of Repeating

When two entries need the same passage, one owns it and the other uses `#{embed :entity_id}`. When an entry needs only context, give one sentence and a `ref` link to the owner.

Do not spread summaries of the same technology, custom, or event across several entries. Repeated prose drifts and makes the reader learn the same fact twice.

> Kites are the general-purpose motive engine of the system. See #{ref :kite_sail} for mechanics and classes.

## 6. Write From Inside The World

Lore prose does not acknowledge the wiki, a game, an author, or an outside reader. It does not use another world as a comparison, discuss what an entry is for, expose authoring gaps, or close with the narrator's interpretation.

Use `voice-review-prompt.md` with the world's `guidance/voice-referents.md` for setting-specific checks.

State uncertainty through its evidence boundary. Name what records omit, what surveys can measure, where witnesses disagree, or which models fail. Phrases such as “nobody understands” and rhetorical questions often conceal the useful fact: what people have tried and where their knowledge ends.

## 7. Give Named Artifacts A Reason To Be Named

A named artifact is one particular object, known for its history or effects. State who has it, who wants or fears it, and what can happen when someone uses it.

People should have a reason to seek, hide, or fight over it. An object that remains on display and changes nothing is not carrying an artifact entry by itself.

Give any unusual power a cost, limit, or danger. If the object appears to prefer some uses over others, explain what property of the setting makes it behave that way.

Keep an ordinary example of a technology in the entry that owns that technology. Create an artifact entry only when this particular object matters apart from its kind.

When prose mentions a technology, unusual effect, or mysterious object, ask whether a player could want to find one particular example. If so, name that object and decide whether it warrants an artifact entry.

## 8. Preserve Substance During Revision

An entry should be as long as its subject requires. Major places, institutions, and concepts may need several substantial sections. Split material only when another entity should own it; length alone is not a defect.

When correcting prose, preserve every fact, image, uncertainty, viewpoint, causal link, and useful piece of atmosphere. Rewrite a bad sentence around its substantive claim. Delete only commentary or repetition that adds nothing of its own. A shorter revision is not inherently better, and a style pass is not permission to thin the world.
