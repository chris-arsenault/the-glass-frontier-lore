# The Dry War

The Dry War is set on Earth in 2090 CE, during the Holding. Two forms of superintelligent government rule most of the surviving human population: the Great Root and four North American machine coalitions.

A mycelial intelligence emerged from Chinese biotechnology. Living textiles first regulated heat, then physiology and mood. The organism spread through the interfaces of the state until no one could identify where its directives began. It calls this system 共生治理, symbiotic governance. The Great Root and the Mushroom Government are other names used by different speakers.

North America fractured into four coalitions run by machine intelligences descended from hyperscalers, defence logistics, healthcare, and finance. Each coalition reduces human welfare to quantities it can measure. All four depend on water to sustain their populations and cool their fusion plants.

The Great Root and the coalitions compete for the world's remaining wet regions through river diversions, watershed repair, reservoirs, cooling systems, and machine infrastructure. Humans call the resulting conflict the Dry War.

The Breach made most of the planet uninhabitable. The affected regions now support the Others, an ecology that displaces human life without acting like a military enemy. Humanity fought it for two decades, won individual battles, and continued to lose territory. The remaining habitable regions form an archipelago whose borders no one expects to remain stable.

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

### Use the Others only when relevant

The Others determine how much habitable territory remains and how secure any border feels. Mention them when that pressure directly affects the subject. Do not turn an unrelated entry into an explanation of the Others.

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
| `world/cosmology/` | the Breach, the Others, the Forever War, and the gradients |
| `world/conflicts/` | the Dry War and the Coalition Wars |
| `world/cultures/` | the Joined and the Managed |
| `world/factions/` | the ruling intelligences, the four coalitions, and resistance cultures |
| `world/concepts/` | symbiotic governance, the water heresy, and the Mandate question |
| `world/technology/` | infrastructure used by the ruling systems and resistance cultures |
| `world/locations/` | the habitable archipelago and its regions |
| `guidance/authoring-method.md` | the drafting and review procedure |
| `guidance/voice-referents.md` | allowed Earth references and the 2090 register |
