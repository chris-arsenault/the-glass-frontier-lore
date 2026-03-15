# The Glass Frontier — Lore

Canonical lore wiki for *The Glass Frontier*, a game world set in the Kaleidos system — a shattered ring world, its parent planet, and the wider solar system around them.

## The World

A hundred and thirty years ago, the orbital ring around Kaleidos shattered. The fragments — hundreds of them, many still habitable — drifted apart. The surface was cut off from orbit. The other worlds in the system carried on alone. When everyone finally reconnected, they discovered they'd become strangers.

This repository defines the world as it exists now: the places, factions, people, technology, and history that players step into on day one.

## Structure

One file per entry, cross-linked like a wiki. Entries live in directories by type:

```
player/         — all player-facing lore content
  cosmology/    — the rings, resonance, echo rivers
  concepts/     — technology, magic, religion, governance
  locations/    — regions, settlements, landmarks
  npcs/         — factions, notable individuals, antagonists
  history/      — eras and events
  artifacts/    — relics and common items
  creatures/    — fauna and anomalies
  ships/        — military and civilian vessels
dm/             — DM-only knowledge (not published to wiki)
```

Each type directory has an `index.md` listing all known entities — including shell entries that haven't been written yet. See [CLAUDE.md](CLAUDE.md) for conventions.

## Linting

```
make lint
```

Python 3 linter (no dependencies) that checks tag taxonomy compliance, dead links, frontmatter validity, index coverage, and tracks `[future:...]` forward-references.

## License

[PolyForm Noncommercial 1.0.0](LICENSE.md)
