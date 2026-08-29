# Lifeform Atlas and Encyclopedia Review Ledger

Status: lifeform extraction complete. Technology is recorded separately in
`technology-encyclopedia-review.md`; resource is the next unresolved category.
This file records the lifeform boundary and its measured Atlas effect; it is
not a queue for further lifeform migration.

## Boundary now in force

- Reusable species, organism types, ecological groups, and biological kinds
  live in the Encyclopedia.
- A named animal, herd, colony, regional population, or cultivated stock can
  live in the Atlas and declare its reusable type with `type_of`.
- Classification uses `type_of` or `belongs_to`. It never creates an Atlas
  relationship.
- The six established sapient species — Dwarves, Elves, Fae, Gnomes, Humans,
  and Orcs — are Encyclopedia-only. Their particular members are NPCs.
- The sixteen generic subjects formerly stored as veiled Atlas species are
  Encyclopedia lifeforms. Their graph positions are held by eleven named
  creatures and five named NPCs with distinct ids.
- `Farborn` is a heterogeneous working classification, not one bounded
  creature or population. It is Encyclopedia-only. Seven particular Atlas
  creatures carry Farborn membership: `empty_bearing`, `ironwhistle`,
  `mapped_shellbacks`, `named_drift_eels`, `pell_answer`,
  `pell_stockpile_colony`, and `rind`.

## Resolved established lifeforms

The ten former same-id creature pairs now have distinctly named Atlas subjects.
Navren is likewise separated into a reusable tree and Noll's cultivated stock.

| Encyclopedia type | Atlas subject | What the Atlas subject is |
|---|---|---|
| Hushmaw | `empty_bearing` — The Empty Bearing | The suspected animal reported along three Deep Shear return courses |
| Cinderback | `keel_yard_herd` — The Keel Yard Herd | The herd occupying Shadewell's cargo-yard culverts |
| Drift-eel | `named_drift_eels` — The Named Eels | The individually tracked route-event animals in Ratter records |
| Glasswurm | `pell_stockpile_colony` — The Pell Stockpile Colony | The juvenile colony boring through Pell Cut's rejected-material stack |
| Marn | `avar_marn_herds` — The Avar Marn Herds | The domesticated populations moving among Avar's wells and markets |
| Marrower | `orra_marrower_colonies` — The Orra Marrower Colonies | Orra's trained survey pairs and untrained carrier colonies |
| Pole-thief | `lowbank_pole_thief_colonies` — The Lowbank Pole-thief Colonies | The colonies disrupting Lowbank's dredged approaches |
| Sarn | `perch_circle` — The Perch Circle | The herd still circling Perch after the 2435 passage split |
| Shellback | `mapped_shellbacks` — The Mapped Shellbacks | The populations and load-bearing grazing grounds on Ratter claim maps |
| Sorel | `rib_sorel_herds` — The Rib Sorel Herds | Rib's marked survey and grazing herds |
| Navren | `noll_navren_stands` — The Noll Navren Stands | Noll's named root stools and cultivated structural stock |

The old `Blank` name is gone. The reusable predator is Hushmaw; The Empty
Bearing is its Atlas instance. The current-day Empty Bearing, Keel Yard Herd,
Pell Stockpile Colony, and Lowbank Colonies passages were removed from their
Encyclopedia articles and retained on the particular Atlas subjects.

The reusable articles retain morphology, behavior, handling, uses, failure
modes, and variations. Atlas prose now covers the particular population,
record, present-day problem, and relationships instead of duplicating the
whole type article. Atlas entries use `encyclopedia_ref` when prose needs the
general type.

## Corrected veiled split

| Encyclopedia type | Named veiled Atlas instance | Atlas kind |
|---|---|---|
| Breach Lichen | Black-After-Vigil | creature |
| Cold-Route Spores | The Far Bell Pale Fan | creature |
| Cordon Scavengers | Redband Nine | creature |
| Displaced Fauna | The Threshold Brood | creature |
| Heshari | Irra Keth | npc |
| Kesh Wallrunner | White-Tail | creature |
| Kyrri | Senra Veth | npc |
| Mera Flute-Reed | The Fourth Chord | creature |
| Mirror Bee | The Blue Mirror Swarm | creature |
| Nacre | Vesh Talar | npc |
| Oruun | Mera Vonn | npc |
| Ravel Clampweed | Seamkeeper | creature |
| Ravel Claspworm | Nine-Knot | creature |
| Root-Deck Symbiotes | The Four-Root Exchange | creature |
| Signal-Fed Life | Relay Colony Seven | creature |
| Trellin | Teral Venn | npc |

## Structural evidence

The review began at 503 Atlas entities, 1,445 named relationships, 498 game
entities, and 1,452 game edges. It ends at 502 Atlas entities, 1,432 named
relationships, 497 game entities, and 1,435 game edges, of which 1,423 are
non-bookkeeping.

The complete before-and-after graph matches under the eleven old-to-particular
id mappings after removing only:

- the generic `farborn` Atlas node;
- its twelve type-level named relationships;
- its four derived Encyclopedia-article embed edges; and
- the invalid `kesh --depends_on--> resonance` relationship.

The comparison found zero missing or extra node ids and zero missing or extra
edges after those declared changes. The component count remains four, the
isolated set is unchanged, and no new entry falls below the degree-three floor.
`disappearance_of_the_elves`, `readers`, and `the_dissident` remain at degree
two from the earlier sapient-species removal.

Chronicle focus now satisfies 84 of 86 playable locations. `kesh` remains at
nine because resonance is not a valid named Atlas focus target. `deep_shear`
is at nine because the generic Farborn classification no longer pads its
choices. Neither deficit should be repaired with another reusable type.

The Encyclopedia contains 70 entries, including 34 lifeforms. Eleven reusable
types reviewed here resolve to named Atlas instances through the derived
instance index. Farborn instead resolves the seven named memberships listed
above. Neither classification surface enters the Atlas graph.

Generated evidence for this pass is local under `build/glass-frontier/`:

- `before-creature-review.json`
- `after-creature-review.json`
- `farborn-atlas-removal.json`
