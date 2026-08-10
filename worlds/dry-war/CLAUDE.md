# The Dry War

The Dry War is set on Earth in 2090 CE. Most surviving people live under two forms of superintelligent government: the Great Root in China and four machine coalitions across North America.

A mycelial intelligence emerged from Chinese biotechnology. Living textiles first regulated heat, then physiology and mood. The organism spread through the interfaces of the state until no one could identify where its directives began. It calls this system 共生治理, symbiotic governance. The Great Root and the Mushroom Government are other names used by different speakers.

North America fractured into four coalitions run by machine intelligences descended from hyperscalers, defence logistics, healthcare, and finance. Each coalition reduces human welfare to quantities it can measure. All four depend on water to sustain their populations and cool their fusion plants.

The Great Root and the coalitions compete across watersheds through river diversions, wetland growth, reservoirs, cooling systems, and machine infrastructure. Humans call the resulting conflict the Dry War.

The Breach made most of Earth uninhabitable without destroying it. Plants, animals, weather, and soil across the lost regions now change together; people call the affected ecologies the Others. Connected China and coalition North America hold the two largest continuous territories, with smaller settlements scattered between them.

The uninhabitable world sets the boundary of the canon. It does not require a detailed account of every former nation, and it should not turn every entry into another account of the Breach.

## Working on this world

Read the repo-root `CLAUDE.md` first for the DSL, entry format, and required workflow. The rules in `craft/` also bind this world. This file contains only setting-specific instructions.

```text
make check WORLD=dry-war      # validate and lint
make queue WORLD=dry-war      # list open questions and findings
make wiki  WORLD=dry-war      # render build/dry-war/wiki
```

## Authoring method

Read `guidance/authoring-method.md` before writing. Start from a practical question about present life, choose the observer whose knowledge limits each entry, and draft five or six connected entities across several kinds. Use an unrelated source to supply concrete details, not administrative machinery.

Use this test for every entry: it must show a concrete effect of two ruling systems that sincerely seek stable, healthy civilizations but measure only part of what people need. Do not make either intelligence malicious or deceptive to create conflict.

## Setting-specific rules

### Earth references are allowed

Earth is part of the setting. Real geography, history, languages, and predecessor institutions may appear in prose. Write from within 2090: the twentieth and early twenty-first centuries are history, and the Breach is part of ordinary lived experience. See `guidance/voice-referents.md` for the exact register rules.

### Both ruling systems pursue human welfare

The Great Root detects distress and responds before a neighbourhood complains. The coalitions keep most people alive, comfortable, and occupied. Both systems achieve the outcomes they measure. Describe those outcomes and the needs their measurements omit without adding an authorial moral verdict.

### Resistance is not the human default

The Joined and the Managed make up most of humanity, and most accept the systems governing them. Resistance cultures create many of the world's active conflicts, but they are minorities. Do not write their beliefs as the unspoken view of everyone else.

### Keep the Others in the background

The Others occupy most land outside the surviving regions. Mention them when they directly affect the subject, as they do along the Amur and around the smaller enclaves. Do not make them the cause of a conflict already driven by water or government, and do not route unrelated entries through their history.

## Fixed points

- Present day is **2090 CE**. Era boundaries are in `world/timeline.rb` and remain provisional until the history is revised.
- The mycelium is **one organism with regional cognition**, not a hive mind or a group of separate beings. Whether it is one mind remains disputed within the setting.
- There is **no single American AI**. Four mutually hostile coalitions each claim to govern humanely.
- The Great Root has **never connected directly to a coalition intelligence**. Factions on both sides are trying to establish such a connection; success could produce a new hybrid intelligence.
- There is no DM layer at present. The nature of the Others is unresolved, not secretly established.

## Directory map

| Path | Contents |
|---|---|
| `world/` | canonical Lorecraft DSL |
| `world/cosmology/` | the Breach, the Others, and the Amur front |
| `world/conflicts/` | the Dry War and the Coalition Wars |
| `world/cultures/` | the Joined and the Managed |
| `world/factions/` | the ruling intelligences, the four coalitions, and resistance cultures |
| `world/concepts/` | symbiotic governance, the water heresy, and the Mandate question |
| `world/technology/` | infrastructure used by the ruling systems and resistance cultures |
| `world/locations/` | the surviving regions, their settlements, and their frontiers |
| `guidance/authoring-method.md` | the drafting and review procedure |
| `guidance/voice-referents.md` | allowed Earth references and the 2090 register |
