---
title: Authoring Method — The Glass Frontier
---

# Authoring Method — The Glass Frontier

## 1. Join the world below the mythic tier

Departs from `craft/connecting-entities.md` §1: use the first `make web WORLD=glass-frontier` result, which removes mythic entities. The current completion condition is one connected component in that result. Renowned entities may carry a path; mythic entities may not.

Choose a related set of three to six entries from the isolated entries and smaller groups. Include one or more written entries that can connect the set to the larger component. Read each entry, its source, and its connections before deciding what to write.

Prefer work that completes the graph already present:

- flesh out a shell whose subject still belongs in the world;
- add an omitted relationship when the prose already establishes it;
- expand a thin entry so it can own a connection;
- add a new entity only when the answer requires a distinct person, place, object, group, event, creature, resource, transport, or practice.

If a shell names nothing worth keeping, move any useful fact to the entry that owns it and remove the shell. Do not write filler to preserve an old name.

## 2. Answer one question about present life

Choose one situation that needs the whole related set to explain it. Suitable questions concern work, travel, repair, trade, family life, danger, worship, medicine, or contact between communities. For example: *What happens when an old ring system answers a modern repair crew?*

Settle these questions across the related entries before drafting:

1. Where does resonance act here: through what material, body, machine, weather, or space, and what can someone sense or measure?
2. What ordinary job, journey, repair, meal, treatment, building, or custom has formed around that effect?
3. Who depends on another person's trained perception, material supply, safe route, or maintenance work?
4. What did isolation make local, and what happens when people from elsewhere encounter it now?
5. What can fail today, and what observable sign tells people that it is failing?

The related set answers these questions; an individual entry need only own its part. Put the resonance mechanism in one entry, then let the other entries show its physical and social consequences.

Do not repeat the questions in lore prose. Do not explain the setting through counterfactual sentences about what would happen without resonance. Describe the tuned wall, altered cargo, required worker, changed route, bodily symptom, or disputed reading. The reader should infer the effect from what exists and what people do.

When the accepted explanation is incomplete, state the measurement, recurring observation, missing record, or disagreement that exposes the gap.

## 3. Draft from the canon

Use the existing entries, guidance, and graph to settle local choices. The five questions above are prompts for the writer, not an interview. Make the decisions needed to answer them and write the related entries and relationships as one pass.

Ask for direction only when the sources support incompatible answers that would change the setting beyond the selected entries. Do not stop over a new person's trade, an object's workings, a local custom, or another choice that can be made consistently from nearby canon.

Choose an observer for each entry. Decide what that person can inspect, what their work makes them notice, and where their evidence ends. Keep the prose encyclopedic; the observer controls the available evidence and does not need to narrate the entry.

## 4. Introduce an unrelated source of detail

Choose at least one source outside the immediate subject: an image, public-domain text, craft, trade, organism, landscape, or field none of the involved people practise.

Use it to decide something concrete: the layout of a workplace, wear on a tool, the rhythm of a shift, a material limit, a bodily response, or the first detail an observer notices. Leave behind its names, history, and institutional machinery.

## 5. Write and connect

Write substantial entries when the subjects support them. A place or institution may need several sections. Do not split a coherent subject to increase the entity count.

The related set should normally span several kinds. Every entry must add a distinct part of the answer, and every meaningful connection in the prose must have a typed relationship. Shared explanations have one owner; neighboring entries link or embed instead of restating them.

New entities written to repair the web are usually recognized, marginal, or forgotten. Raise one to renowned only when its fame exists independently of the connection being repaired.

## 6. Check the result

Read every changed entry with `page`, then run:

```text
make check WORLD=glass-frontier
make web WORLD=glass-frontier
```

The pass is complete when every selected entry has a path into the larger component after mythic entities are removed, the practical question has a concrete answer, and each entry contributes information beyond its relationships. The full web pass is complete when the mythic-removed result reports one component.
