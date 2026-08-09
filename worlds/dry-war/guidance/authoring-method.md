---
title: Authoring Method — The Dry War
---

# Authoring Method — The Dry War

The assistant drafts this world. The human directs it through questions and review. Use the following procedure for each set of entries.

## 1. Start from the central premise

Each entry must show a concrete consequence of this premise: **the Great Root and the machine coalitions sincerely try to build stable civilizations, and each governing system relies on an account of human welfare that leaves out something humans need.**

The main consequences are:

- The Great Root offers belonging at the cost of individuality.
- The coalitions offer safety at the cost of agency.
- Most Joined and Managed people consider their lives acceptable. Resistance is not the normal human condition.

Place one consequence somewhere specific. Show it through an action, object, procedure, measurement, or dispute. Do not restate the premise as an abstract conclusion.

## 2. Choose an observer

Before drafting an entry, define one person whose knowledge sets its limits. Decide:

- their name and affiliation;
- what they can inspect or measure;
- what they cannot observe or are likely to discount;
- the practical concern that shapes what they notice;
- the vocabulary they use for their work.

For example, a Mercy outcomes officer may record water use, morbidity, compliance, and a recommendation. A Garden Courts agronomist at the same settlement may record soil carbon, seed lineage, and who knows the planting songs. Their reports can disagree without either observer lying.

Use only evidence available to the chosen observer. Keep the rendered entry in an encyclopedic voice; the observer constrains the evidence and need not appear as a narrator or byline. If the prose names the observer, link the entity or use a `#{future "Name"}` marker.

## 3. Answer one practical question

Begin with a question about present life, such as: *What happens when someone crosses a Gatekeeper checkpoint?*

Choose a question rich enough to produce five or six new, connected entities. Existing entities provide context and may need revision, but they do not count toward those five or six. The new entities should normally span at least three applicable kinds, such as a person, place, faction, installation, incident, resource, transport, or concept.

1. List the people, places, rules, tools, incidents, and disputes needed to answer it.
2. Check which entities already exist and which facts they own.
3. Identify five or six new entities that each carry a distinct part of the answer.
4. Draft those entries and update only the existing entries needed to connect them.
5. Add every typed relationship established by the prose.
6. Stop when the question has a concrete answer, every new entry adds information rather than restating another entry, and the set validates.

Do not invent thin entries to reach the count. If the question supports only one or two worthwhile entities, choose a broader practical question whose answer crosses more of the world.

Use the next unanswered question exposed by this work to choose the next set. Do not create entries merely to fill directories or kinds.

## 4. Introduce an unrelated source of detail

Before drafting a related set of entries, choose at least one source outside the immediate subject: an image, a line of public-domain text, or a field none of the involved people practise. Use more sources when they produce useful details.

Use the source to decide something concrete, such as the order of a procedure, a unit of measure, the shape of a tool, or what an observer notices first. If it changes a canonical decision, record the reason in a `log` on the entity that owns that fact.

## 5. Apply review comments

Run `make queue WORLD=dry-war` to collect open `question` declarations.

For each question:

1. Revise the affected entry and any connected entries needed to keep the facts consistent.
2. Remove the `question` once the revision answers it.
3. Add a `log` when the reason for the decision will matter later.

If the human rejects a related set of entries, rewrite the set rather than patching isolated sentences. Put reusable setting rules in the guidance file that owns the subject. Keep entry-specific history in the entity's `log`.

## 6. Review and validate

Read the rendered prose before considering the work finished.

- End on the last fact. Remove a closing sentence that interprets a disagreement or tells the reader what to feel. `world/schema.rb` catches known versions of this error.
- Merge or remove a one-sentence paragraph when it exists only to add emphasis and carries no new information.
- Confirm that every meaningful connection in the prose has a typed relationship.
- Run `make check WORLD=dry-war`.
