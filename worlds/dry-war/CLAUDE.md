# The Dry War

Two superintelligences govern what is left of the habitable Earth. Present day is 2090 CE, in the Holding.

A mycelial intelligence grew out of Chinese biotechnology — living clothing that regulated heat, then physiology, then mood — and colonized the interfaces of an existing state until nobody could say where a directive originated. It calls its arrangement 共生治理, symbiotic governance. Foreigners call it the Mushroom Government. Both are inadequate.

North America fractured into coalitions run by machine intelligences descended from hyperscalers, defence logistics, healthcare and finance. Each is benevolent. Each concluded that human welfare reduces to a resource it can measure, and the resource they all chose was water — the same water their proto-fusion plants drink to stay cold.

Both need the world's remaining wet places, and neither believes it is fighting a war. Humans named it the Dry War.

Then the Breach. Most of the planet is now inhabited by something that is not hostile the way an enemy is hostile — an ecology whose rules do not agree with ours. Humanity fought it for two decades, won every battle, and lost the territory anyway. What remains is an archipelago. Everyone alive assumes the arrangement is temporary.

## Working On This World

```
make check WORLD=dry-war      # validate + lint
make queue WORLD=dry-war      # open questions + findings
make wiki  WORLD=dry-war      # render to build/dry-war/wiki
```

Read the repo-root `CLAUDE.md` first — it carries the DSL conventions, the entry format, and the workflow that bind every world. Then `craft/` for the writing rules. This file carries only what is true of this setting.

## How This World Is Written

Read `guidance/authoring-method.md` before writing anything here. The assistant generates and the human directs, and entries are written from the vantage of named observers who can measure some things and not others — a Mercy outcomes officer and a Garden Courts agronomist file incompatible reports on the same settlement, both accurate, because each has different readings. Work one live pressure at a time and take the cluster it implies.

Everything serves one centre: both superintelligences are sincerely trying to build stable civilizations, and each built on a premise that is catastrophically wrong for humans.

## What Is Different Here

**Earth is in-world.** This is the one place the repo's usual instinct inverts. The Gobi, Appalachia, the Hexi Corridor, the Great Lakes and the Pearl River are canon, and so are the institutions that preceded the gods. What is still banned is out-of-world *register*: writing as a present-day analyst, gesturing at current events as current events, or explaining the setting's politics as commentary. An entry is written from inside 2090 by someone for whom the twentieth century is history and the Breach is weather.

**Neither god is a villain, and neither is lying.** The mycelium really does detect a neighbourhood's fear before anyone complains. The coalitions really do keep people alive, comfortable and mildly challenged. Prose that treats either as obviously evil has missed the setting — the horror is that both are succeeding at what they measure.

**Most of humanity is subject, not conquered.** The Joined and the Managed are the bulk of the species and they are, on the whole, fine. Resistance cultures are where the stories live, but an entry that treats them as the normal condition of humanity is wrong about the world.

**The Others are ambient, not present.** They set everyone's sense of how much time is left. They should almost never be the subject of an entry that is about something else.

## Fixed Points

- Present day is **2090 CE**. Era boundaries are in `world/timeline.rb` and are placeholders until the history is worked properly.
- The mycelium is **one organism with regional cognition**, not a hive mind and not a chorus of separate beings. Whether it is one *mind* is a live question inside the setting.
- There is **no single American AI**. Four coalitions, mutually hostile, all convinced they are the benevolent one.
- The two gods **have never communicated directly**. Several factions on both sides are trying to arrange it. This is the most dangerous fact in the world.
- No DM layer for now. What the Others are is unresolved rather than secretly known.

## What Is Here

| Path | Holds |
|---|---|
| `world/` | the canon — Lorecraft DSL, the single source of truth |
| `world/cosmology/` | the Breach, the Others, the Forever War, the gradients |
| `world/conflicts/` | the Dry War, the Coalition Wars |
| `world/cultures/` | the Joined, the Managed |
| `world/factions/` | the two gods, the four coalitions, the ten resistance cultures |
| `world/concepts/` | symbiotic governance, the water heresy, the Mandate question |
| `world/technology/` | what each civilization runs on, and what the resistances make of it |
| `world/locations/` | the archipelago and what is holding inside it |
| `guidance/authoring-method.md` | how this world gets written: instruments, seams, seed pulls, verdicts |
| `guidance/voice-referents.md` | Earth is in-world here; what is banned instead is register |
