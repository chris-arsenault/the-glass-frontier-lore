---
title: Voice and Referents — The Dry War
---

# Voice and Referents — The Dry War

`craft/writing-guidance.md` binds. This file supplies the substitutions, and for this world the most important one runs opposite to the repo's usual instinct.

## Earth is in-world

This setting is the Earth of 2090. Real geography and real institutions are canon, and naming them is not domain leakage:

- **Places.** The Gobi, the Hexi Corridor, Sichuan, Yunnan, the Pearl River, Appalachia, the Great Lakes, Baja, BosWash, the Amur, the Mediterranean, the Himalaya.
- **Institutions and history.** The Party, the PLA, hyperscalers, insurers, the examinations, household registration. They existed, and the entries may say so.
- **Languages.** 共生治理, 山河, 地方性 and their like are used where the concept is Chinese and the translation loses something. Give the translation once, then use whichever the speaker would.

A comparison to something that exists is therefore legal here. "Like Afghanistan crossed with Arrakis" is still not, because *Arrakis* is fiction and *Afghanistan* is being used as a shorthand a 2090 archivist would not reach for.

## What is banned instead: register

The failure mode in this world is not the wrong noun. It is writing from outside the year.

**Do not write as a present-day analyst.** No "in what we would recognize as", no "the parallels to early-century platform capitalism", no explaining the setting's politics as commentary on ours. The twentieth century is history here and the Breach is weather.

**Do not gesture at current events as current.** A 2090 entry may discuss the 2030s the way we discuss the 1930s: as a period with consequences, not as news.

**Do not editorialize about the gods.** Neither is a villain and neither is lying. Prose that treats the Great Root as a parasite or the coalitions as jailers has taken a side the world does not take — the horror is that both are succeeding at what they measure. Show the metric and let the reader do the arithmetic.

**Do not make the resistance the human default.** The Joined and the Managed are most of the species and are mostly fine. An entry that reads as though everyone is secretly straining against their god is wrong about the world.

## Names

- **The gods.** The Great Root, the Beneath, the Network, the continental intelligence — all in use, by different people, with different feeling. "The Mushroom Government" is what foreigners say. No entry should call the coalitions "the AI" as a singular.
- **The coalitions** are one word each: Continuity, Mercy, Market, Caretaker. They chose the names themselves and the plainness is the point.
- **The Others.** Never a technical euphemism in body prose. Both governments have technical vocabularies for the phenomenon and every one of them is a way of not saying it; an entry may report that fact and should not join in.
- **Resistance cultures** name themselves, usually in a register their enemies find embarrassing: the Choir, the Saints of Plenty, the Unpersons, the Pilgrims, the Dead Counties. Keep it.

## Numbers

Every elapsed span is computed — `#{elapsed :the_breach, ago: true}`, not "twenty-two years ago". Dates are facts and may be typed; spans are arithmetic and may not. See the repo-root `CLAUDE.md`.

The era boundaries in `world/timeline.rb` are placeholders. Anchor to an era or an event rather than to a year wherever the choice exists, so that fixing the timeline fixes the prose.
