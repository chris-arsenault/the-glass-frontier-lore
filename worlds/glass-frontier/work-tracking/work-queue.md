---
title: Work Queue
---

# Work Queue

What the Glass Frontier needs next, ordered by how much it costs a reader. Live
numbers come from `make check WORLD=glass-frontier` and `make topology
WORLD=glass-frontier`; the counts below were taken 2026-08-08 against a world
that validates with 0 errors, 4 warnings and 65 future markers.

---

## 1. Future markers pointing at things that exist

Forty-six of the sixty-five `future` markers name an entity or a shell that is
already in `world/`. Each one is a link the reader doesn't get and an edge the
graph doesn't have. Replace the marker with `#{ref :id, "Display Name"}`.

| Marker | Occurrences | Should be |
|---|---|---|
| Silent Bloom / The Silent Bloom | 9 | `:the_silent_bloom` |
| Bloom Zone | 5 | `:bloom_zones` |
| Fracture / The Fracture | 5 | `:the_fracture` |
| Ashvane | 3 | `:ashvane` |
| Continuity / the Continuity | 3 | `:the_continuity` |
| The Bitter Reach | 2 | `:the_bitter_reach` |
| Ledgerfall | 2 | `:ledgerfall` |
| Korvath | 2 | `:korvath` |
| Ashenmaw, Crucible, Vastine, Vitrael | 1 each | same-named shells |
| Glassfall showers, Disappearance | 1 each | `:glassfall_showers`, `:disappearance_of_the_elves` |
| Lira's Wall | 1 | `:liras_wall` |
| Lumenshard Conservatory, Ring Collective | 1 each | same-named shells |
| Renn Duvasi, Venn Talis, Span Replication Lead | 1 each | same-named shells |
| The Contested Reach, The Fermata Open | 1 each | same-named shells |
| Underlayers | 1 | `:underlayers` |

Do this before anything else — it changes prominence-reach warnings, topology and
the wiki all at once, and it is mechanical.

## 2. Future markers with nothing behind them

Nineteen markers, fourteen distinct names, no entity anywhere. Each needs either
a shell in `_shells.rb` or a rewrite that stops naming it.

**Worth a real entry.** *Oram Sells* — the second First Threshold, eleven years
in the post, the one who read Dern Talish in before dying of Bloom exposure.
Three entries lean on him and none can link to him. His tenure has to land inside
the Council's real dates (formed 2380, took the cordons 2384, Dern is the
fourth).

**Worth a shell.** Tessellan Communion (×2), Drossmark Industries (×2), Span
replication experiment (×2), Vesh Marrow, Davan Koralis, Lithren, Ashvane
culture.

**Probably shouldn't be markers at all.** *Flitters* (×2) — a resolved comment on
`kite_sail.rb` already says flitters are a subsection of kites, not their own
entry; drop the marker and write the prose. *Chief Ledgrist* and *Voice
Proximate* are offices, not entities — either name the office in plain prose or
give the seat an entity and link the holder. *First Contact Story*, *First Trade
Crisis* and *Comm Hub Incident* are placeholders in `threads/reconnection.rb`
standing in for beats nobody has written; name the incidents or cut them.

## 3. Open review comments

Fourteen open in `review-comments.json`, none stale, clustered in five files.
Recurring substance rather than one-off nits:

- **Coremark and Vantara are doing too much work.** Four comments across
  `the_shear.rb` and `keel.rb` say the same thing: these two are the only named
  commercial actors in articles that need several, which makes the system feel
  small. See `guidance/archetype-slots.md`.
- **"Crystal substrate" is used for locations that are in space.** Flagged on
  `bloom_zones.rb`; the comment asks for a corpus-wide search of the term.
- **Span Nine's geography doesn't hold.** Two comments: the Span was activated
  after Sithari and Threshold already existed, so it terminating at both is too
  convenient. The suggested fix is a terminus near Sithari but geographically
  distinct from the capital.
- **"Cthonic" is a real-world anchor.** `creatures/anomalies/cthonic_beasts.rb`
  still carries the name the comment rejects; it needs an in-world term.
- **Tics.** "nobody understands", the tongue-in-cheek closer on
  `fermata_station.rb`, and hypothesis framing on `bloom_zones.rb`.

## 4. Lint warnings

Four, all real:

- **Double article** on `the_glass_frontier` and `the_shear` — prose writes "the
  The Shear" because the title already carries the article.
- `kaleidos_system` has no spatial-hierarchy edge. It is the top of the
  hierarchy, so either it needs one to `:the_sun`/`:kaleidos_orbit` or the linter
  needs an exemption for a root location.

## 5. Viewpoint neighbourhoods

`dern_talish` sits at degree 6, `lira_vashtenri` at degree 5. Both clear the
floor in `craft/graph-topology.md` but neither has the personal cloud a viewpoint
needs — the specific cordon section, the hab of origin, the colleague, the first
test site. These are forgotten/marginal shells that only the viewpoint connects
to, and they are what makes a viewpoint feel lived-in rather than described.

## 6. Unattached shells

Twenty-six of fifty shells have no edges at all. A shell with no edges is a name
in a file: it can't be reached, can't be rendered, and won't be found. Either
give it an edge to whatever mentions it or delete it. The well-connected end of
the list is where promotion to full entries pays off — `the_silent_bloom` (degree
6), `signal_famine` (6), `korvath` (5), `ashenmaw` (5), `the_fracture` (4).

`kaleidos` (degree 14) and `the_sun` (7) are shells carrying more structural load
than most written entities. The planet the world is named for has no entry.

## 7. Thin and empty kinds

`rumor` and `edict` have no entities. `ability`, `creature` and `transport` have
one each; `artifact` has two. Resonance bands and tuning techniques are described
inside `cosmology/resonance.rb` and `concepts/tuners.rb` and would carry more as
`ability` entities that other entries can link to.

## 8. Fermata Station's prominence

The one prominence-reach warning left: `hab_meridian` (recognized) names
`fermata_station`, which is `marginal`, with no edge between them and nothing in
common. Fermata Station has a full entry, hosts the Accord's mediation work and
carries six review comments — `marginal` looks understated. Either raise it, or
give Hab Meridian the relationship the reference implies.
