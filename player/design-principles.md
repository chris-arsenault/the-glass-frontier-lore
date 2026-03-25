---
title: Design Principles
---

# Design Principles

Meta-level worldbuilding constraints and design philosophy. These are not in-universe lore — they are instructions for how the world is authored. Captured from conversation to prevent drift.

## The World Is a Sandbox

The lore exists to define the stage players step onto on day one and build forward from. The primary purpose is a **day-forward player-created narrative**. History informs the present but doesn't dominate. The mystery of who collapsed the rings is interesting background, not the central quest.

Everything is built to support creative freedom. Habs governed by jazz, Jurassic Park biomes, fluid-reality zones — the lore takes these seriously because taking the absurd seriously is what makes the sandbox work. A hab governed by jazz is presented as matter of fact, not a punchline.

## The Unexpected Is Normal

This is not a world where things go wrong occasionally. This is a world where the structures — civic, legal, architectural — exist because strange things happen *frequently enough to be anticipated*. Building codes account for dimensional drift. Insurance covers resonance spikes. There is a form for when the eighth dimension modifies your hallway. The repair crew has seen worse.

The tone is not chaos. It is **a civilization that has learned to build tolerance for the improbable into its systems**, because the alternative is systems that break every time reality hiccups.

## Hopecore, Played Straight

The world is fundamentally hopeful even when dark things happen. The lore takes itself seriously. The absurdity comes from the fiction being taken seriously, not from the author winking at the reader.

**Humor reference:** Malazan (Bauchelain & Korbal Broach) — dark comedy that emerges from serious situations and deadpan delivery.

**Anti-reference:** Discworld. No whimsy, no winking, no genre parody.

The environment is the primary antagonist, not sentient evil (hopecore framing). But other sentient beings are a real threat. There are monsters.

## Hard Systems, Concrete Details

Every system of magic or technology must be concrete. Brandon Sanderson as a direct reference. If crystals power something, those crystals come from somewhere, are processed in a specific way, are traded along specific routes, and have a defined rarity.

No deus ex machina. No "Gandalf winks to kill a dragon." No "Kessel spice run" without Kessel being a source of spice and the economics making sense.

The resonance system has defined bands and bandwidths. Ringglass has a supply chain. Kites work via momentum nullification. These details exist so the world holds together under scrutiny.

## Real-World Defaults

Things function as they do in the real world except for the modifications we make. We don't need to explain that food is produced and traded — of course it is. Banks work like banks. Spaceships exist and function.

Entries are only needed for the **exceptional**: a volatile fuel refined from crystal waste, psychedelic honey produced near corruption deposits, purified river water that functions as infinite data storage. If it has a real-world analogue, it doesn't need an entry unless the analogue breaks.

## Prominence Is About Awareness, Not Importance

Prominence measures how widely known something is. Not power, not prestige, not quality. A forgotten artifact can reshape reality. A mythic institution can be toothless.

**Prominence is not inherited.** A marginal location can host a renowned event. A mythic person can come from a forgotten village. Each entity has its own prominence independent of its parent.

**Prominence gates cross-references.** A system-wide political overview shouldn't name-drop a marginal ring hab. A marginal hab's entry can reference mythic concepts freely. This prevents world-shrinking — the feeling that everything is connected to everything.

## The World Has a Past Tense

Many entities are dead, dissolved, or dormant. The present-day player encounters them through legacy — ruins, institutions they founded, techniques they invented, stories people tell. Worldbuilding must give equal weight to entities that are no longer active.

When writing an entity, the temporal focus should be the era when it was most active, not the present day. Lira Vashtenri's entry is about a Shear mechanic during the Silent Bloom, not about an elderly gnome in 2438. The present-day state is a coda, not the entry. The Bloom Coalition dissolved decades ago — its entry describes what it did, not what replaced it.

This applies to the graph too. Historical relationships (with end dates) are as important as current ones. The narrative engine needs to traverse the past as well as the present.

## Viewpoints and Titans

NPCs fall into three tiers: regular NPCs, viewpoint characters, and titans. Most NPCs are regular — a few relationships, a role in the world. The elevated tiers serve specific narrative functions.

**Viewpoint characters** are NPCs whose stories a player enters mid-arc. They are the player's ground-level introduction to a thread or theme. Their backstories generate minor entities — forgotten locations, marginal factions, personal incidents that only matter because this character interacts with them. Viewpoints are narrative generators: writing one should produce 5-10 shell entries. They are typically recognized or marginal prominence. Their connections are specific and high-fidelity, mostly to low-prominence things.

**Titans** are NPCs (or institutions) whose decisions shaped the world the player walks through. Known through reputation and consequences. Described through impact, not interiority. Their entries are shorter — mystique comes from restraint. They generate renowned/mythic shells. The player navigates a titan's consequences long before engaging directly.

The player experiences viewpoint paths first (personal, investigative) and titan paths later (confrontational, system-scale). When a titan becomes aware of a viewpoint character, that is a narrative event, not the default.

See `review-guidance/narrative-roles-guide.md` for full guidance, detection criteria, and graph signatures.

## Species and Cultures Are Orthogonal

Species determines biology. Culture determines how you introduce yourself. A Sitharian orc and a Sitharian human share more cultural identity than a Sitharian human and a Hab-Worlder human.

Naming conventions are the primary species-agnostic cultural signal. Each culture's naming pattern should be immediately distinguishable:
- Sithari: formal two-part (personal + family)
- Hab-Worlder: clipped functional
- Orcish: mononyms
- Gnomish: apostrophe compounds
- Fae: epithet-primary + breathy true name
- Elven: chain patronymics (historical)

## DM Knowledge Is Complete Separation

Player entries must stand on their own. They should never hint at DM knowledge or read like they're holding something back. Write them as if the DM entry doesn't exist.

No "technically true." No "what they don't know." No narrator winks. The linter catches leakage phrases automatically.

## The Elves Are Known History

The elves existed, built the ring, were integrated into society, and vanished during the Signal Famine. This is common knowledge. "Elven engineering" is a common expression.

The mystery is WHERE they went, not WHETHER they existed. The Redaction (systematic historical tampering) is a fringe academic position, not mainstream. The disappearance itself is widely acknowledged as historical fact.

The DM truth — the Adversary, the hidden war, the cultural sacrifice — is one secret to keep, not an entire civilization to hide.

## Occurrences Are Independent Entities

Events that happened (The Glassfall, The Silent Bloom, Shardfall) are first-class entities with their own type (`occurrence`), temporal bounds, and causal relationships. They participate in the DAG as nodes, not just descriptions. "Event" is an overloaded word — we use "occurrence" instead.

## The Causality DAG Is Entity-to-Entity

Every node in the causality DAG must be a real entity ID or an entity::heading reference. No descriptions, no state changes, no narrative commentary. "Bloom refugees organize into Displacement Council" is wrong — it should be "Displacement → [caused] → Displacement Council" where Displacement is an occurrence entity.

## The Graph Is the Structured Truth

The Memgraph database is not a cache or an index. It is the authoritative source for entity relationships, temporal data, and semantic context. Prose and graph must stay in sync. Every prose change must be accompanied by a graph update. Every graph relationship must have a semantic type from the taxonomy. Generic relationships (RELATED_TO) are banned.

All graph writes go through graph_cli.py. No ad-hoc scripts that modify the graph.
