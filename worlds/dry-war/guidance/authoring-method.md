---
title: Authoring Method — The Dry War
---

# Authoring Method — The Dry War

## 1. Start from the central premise

The Great Root and the machine coalitions sincerely try to build stable civilizations. Each defines human welfare in a way that leaves out something people need.

Each entry must show one consequence of that premise:

- The Great Root provides belonging but can erase individual choice.
- The coalitions keep people safe but can deny them meaningful choices.
- Most Joined and Managed people consider their lives acceptable. Resistance is not the normal human condition.

Place the consequence somewhere specific. Show it through an action, object, measurement, or dispute instead of restating the premise as an abstract conclusion.

The entry must still be about something that exists or happens in the world. Do not create an entry for a procedure, protocol, contract, accord, inspection, register, docket, claim, hearing, report, schedule, measure, or chain of approval. When one already exists, find the person, place, object, or conflict affected by it and make that the subject. Merge useful details into the entry that owns them. Delete the entity if nothing remains after the procedure is removed.

## 2. Choose an observer

Before drafting an entry, choose one person whose knowledge sets its limits. Decide:

- their name and affiliation;
- what they can inspect or measure;
- what they cannot observe or are likely to discount;
- the practical concern that shapes what they notice; and
- the words they use for their work.

A Mercy outcomes officer might record water use, illness, whether residents follow treatment, and a recommended action. A Garden Courts agronomist at the same settlement might record soil carbon, seed lineage, and who knows the planting songs. Their reports can disagree without either observer lying.

Use only evidence available to the chosen observer. Keep the entry in an encyclopedic voice; the observer sets the evidence and need not appear as the narrator or author. If the prose names the observer, link the entity or use a `#{future "Name"}` marker.

An observer's lack of evidence does not justify withholding language. Omit an unknown motive or describe the visible action; do not say that someone refuses to explain it.

## 3. Answer one practical question

Begin with a question about present life, such as: *What happens when someone crosses a Gatekeeper checkpoint?*

Read the entries that already own the subject and every relationship involving them. Check the prominence of anything the new prose will name. Use a `#{future "Name"}` marker when a distinct entity has not been written.

Choose a question that supports five or six new, connected entities. Existing entities provide context and may need revision, but they do not count toward the target. The new entities should normally span at least three applicable kinds, such as a person, place, faction, installation, incident, resource, transport, or concept.

1. List the people, places, conditions, tools, incidents, and disputes needed to answer the question.
2. Check which entities already exist and which facts they own.
3. Identify five or six new entities that each carry a distinct part of the answer.
4. Draft those entries and update only the existing entries needed to connect them.
5. Add every typed relationship established by the prose.
6. Stop when the question has a concrete answer, every new entry adds information, and the set validates.

Do not create thin entries to reach the target. If the question supports only one or two worthwhile entities, choose a broader question whose answer crosses more of the world.

Use the next unanswered question exposed by this work to choose the next set. Do not create entries merely to fill directories or kinds.

## 4. Introduce an unrelated source of detail

Before drafting the related entries, choose at least one source outside the immediate subject: an image, a line of public-domain text, or a field none of the involved people practise. Use more sources when they supply useful details.

Let the source decide something concrete: the shape or wear of a tool, a physical layout, the rhythm of work, a material limit, an image in the description, or what an observer notices first. Do not use it to invent another procedure, unit of measure, protocol, register, contract, or approval rule.

If the source changes a canonical decision, record the reason in a `log` on the entity that owns the fact.

## 5. Write plainly and specifically

Define the subject in the opening paragraph. Describe its present effect through actions, physical conditions, and disagreements between named people or groups.

Use familiar words unless the setting needs a distinct name. Make an unfamiliar term clear from the sentence that introduces it. If a sentence needs a glossary before it can be understood, rewrite it.

Description may be lyrical. Keep it when it gives the reader a sharper image or feeling; cut it when it only makes the sentence sound important.

Apply the withholding rule in `guidance/voice-referents.md`: state the motive or describe the action without inventing a refusal to explain it.

End on the last fact. Do not add a sentence that explains what the entry means or tells the reader how to feel.

## 6. Apply review comments

Run `make queue WORLD=dry-war` to collect open `question` declarations.

For each question:

1. Revise the affected entry and any connected entries needed to keep the facts consistent.
2. Remove the `question` once the revision answers it.
3. Add a `log` when the reason for the decision will matter later.

If review rejects a related set of entries, rewrite the set instead of patching isolated sentences. Put setting-wide rules in the guidance file that owns the subject. Keep entry-specific history in the entity's `log`.

## 7. Review and validate

Read the rendered prose before considering the work finished.

- Confirm that the entry has a concrete subject rather than an administrative procedure.
- Search the changed prose for withholding language and unexplained invented terms.
- Merge or remove a one-sentence paragraph when it exists only to add emphasis and carries no new information.
- Confirm that every meaningful connection in the prose has a typed relationship.
- Run `make check WORLD=dry-war`.
