---
title: Authoring Principles
---

# Authoring Principles

How every world in this repository is built. These are not in-universe lore — they are constraints on the author. A world's own guidance may add to them and may narrow them; it may not loosen them. Where a world genuinely departs, its guidance file says so explicitly (`Departs from craft/authoring-principles.md § …`) so the conflict is visible.

Tone, references and the vocabulary of a particular setting are *not* here. Those live in `worlds/<id>/guidance/`.

## The World Is a Sandbox

Lore defines the stage players step onto on day one and build forward from. The primary purpose is a **day-forward player-created narrative**. History informs the present but doesn't dominate. The great unsolved question of a setting is interesting background, not the central quest.

Everything is built to support creative freedom. Strange premises are taken seriously because taking the strange seriously is what makes a sandbox work.

## Hard Systems, Concrete Details

Every system of magic or technology must be concrete. Brandon Sanderson as a direct reference. If crystals power something, those crystals come from somewhere, are processed in a specific way, are traded along specific routes, and have a defined rarity.

No deus ex machina. No "Gandalf winks to kill a dragon." No "Kessel spice run" without Kessel being a source of spice and the economics making sense.

Defined bands, supply chains, and stated limits exist so the world holds together under scrutiny. A lore entry for a system should read like a Sanderson appendix.

## Real-World Defaults

Things function as they do in the real world except for the modifications the setting makes. Nobody needs to be told that food is produced and traded — of course it is. Banks work like banks.

Entries are only needed for the **exceptional**: the volatile fuel refined from an industrial waste stream, the honey that does something to the people who eat it, the purified water that stores data. If a thing has a real-world analogue, it doesn't need an entry unless the analogue breaks.

## Prominence Is About Awareness, Not Importance

Prominence measures how widely known something is. Not power, not prestige, not quality. A forgotten artifact can reshape reality. A mythic institution can be toothless.

**Prominence is not inherited.** A marginal location can host a renowned event. A mythic person can come from a forgotten village. Each entity has its own prominence independent of its parent.

**Prominence gates cross-references.** A world-spanning political overview shouldn't name-drop a marginal settlement. A marginal settlement's entry can reference mythic concepts freely. This prevents world-shrinking — the feeling that everything is connected to everything.

The gate is on the entity being *named*, not on the entry doing the naming, and a typed relationship is what earns the reference:

| Naming a… | is legitimate when |
|---|---|
| mythic, renowned entity | always — the name is common knowledge |
| recognized entity | the entry is itself recognized or better, or there is an edge between them |
| marginal entity | there is an edge between them, or they share a neighbour — the nearby-entity and specialist cases |
| forgotten entity | there is an edge between them, and nothing else |

So a mythic entry may not name a forgotten one it has no link to: that is the world-shrinking case, and it reads as the author reaching for a detail the entry has no business knowing. Give the reference an edge or make it a `#{future "Name"}` marker. The linter enforces this against the graph; `prominence_xrefs` on an entity is the deliberate exception, for a name that travels further than its prominence explains.

## The World Has a Past Tense

Many entities are dead, dissolved, or dormant. The present-day player encounters them through legacy — ruins, institutions they founded, techniques they invented, stories people tell. Worldbuilding must give equal weight to entities that are no longer active.

When writing an entity, the temporal focus should be the era when it was most active, not the present day. An entry about a mechanic during a catastrophe is about the catastrophe, not about their retirement decades later. The present-day state is a coda, not the entry.

This applies to the graph too. Historical relationships (with end dates) are as important as current ones. The narrative engine needs to traverse the past as well as the present.

## Viewpoints and Titans

NPCs fall into three tiers: regular NPCs, viewpoint characters, and titans. Most NPCs are regular — a few relationships, a role in the world. The elevated tiers serve specific narrative functions.

**Viewpoint characters** are NPCs whose stories a player enters mid-arc. They are the player's ground-level introduction to a thread or theme. Their backstories generate minor entities — forgotten locations, marginal factions, personal incidents that only matter because this character interacts with them. Viewpoints are narrative generators: writing one should produce 5-10 shell entries. They are typically recognized or marginal prominence. Their connections are specific and high-fidelity, mostly to low-prominence things.

**Titans** are NPCs whose decisions shaped the world the player walks through. Known through reputation and consequences. Described through impact, not interiority. Their entries are shorter — mystique comes from restraint. They generate renowned/mythic shells. The player navigates a titan's consequences long before engaging directly.

The player experiences viewpoint paths first (personal, investigative) and titan paths later (confrontational, system-scale). When a titan becomes aware of a viewpoint character, that is a narrative event, not the default.

See `craft/narrative-roles.md` for full guidance, detection criteria, and graph signatures.

## Species and Cultures Are Orthogonal

Species determines biology. Culture determines how you introduce yourself. Two people of different species raised in the same culture share more than two people of the same species raised apart.

Naming conventions are the primary species-agnostic cultural signal. Each culture's naming pattern should be immediately distinguishable — length, structure, and sound all carrying the signal, not just spelling. A world's patterns are listed in its `guidance/naming-conventions.md`.

## DM Knowledge Is Complete Separation

Player entries must stand on their own. They should never hint at DM knowledge or read like they're holding something back. Write them as if the DM entry doesn't exist.

No "technically true." No "what they don't know." No narrator winks. The linter catches leakage phrases automatically.

## Incidents And Conflicts Are Independent Entities

A named event or ongoing conflict is a first-class `incident` or `conflict`
entity with its own facts and causal relationships. A Lorecraft `moment` is
different: it is a dated change that belongs to an entity and carries effects.
Use an entity when readers or other entities need to reference the occurrence;
use a moment to establish when state changed.

## The Causality DAG Is Entity-to-Entity

Every endpoint in the causality graph must be a real entity id. No descriptions,
state changes, section headings, or narrative commentary. “Refugees organize
into a council” is not an endpoint; declare an incident entity and connect it to
the council with the narrow causal relation that states the fact.

## The World File Is the Structured Truth

A world's `world/` DSL is the single source of truth for its entities,
relationships, and temporal data. Markdown and graph projections are generated
from it. Every relationship uses a declared semantic type; validation rejects
the generic `related_to` type. Edit `world/`, never generated output. See
`SYSTEM.md`.
