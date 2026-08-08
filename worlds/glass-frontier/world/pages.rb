# Authored standalone wiki pages — hand-written prose that is not a world
# entity. Rendered by the wiki target; never enters the entity graph.

page :home, title: "The Glass Frontier", wiki: "Home" do
  prose <<~MD
    A shattered ring world. A planet dusted in crystal. A solar system full of
    people who used to be one civilization and are still figuring out what they
    are now.

    The orbital ring around Kaleidos broke #{elapsed :the_glassfall, ago: true}. The fragments —
    hundreds of them, many still habitable — drifted apart. The surface was cut
    off from orbit. The other worlds in the system carried on alone. When
    everyone finally reconnected, they discovered they'd become strangers. That
    reconciliation is ongoing, messy, and alive.
  MD

  prose <<~MD, heading: "Start Here"
    - [[Cosmology Index]] — the rings, #{ref :resonance}, the physical world
    - [[Concepts Index]] — systems, species, cultures, technology
    - [[Locations Index]] — regions, settlements, landmarks
    - [[NPCs Index]] — factions and the people who run them
    - [[History Index]] · [[Artifacts Index]] · [[Creatures Index]] · [[Ships Index]]
  MD

  prose <<~MD, heading: "Reference"
    - [[Timeline]] — the eras, founding through the present
    - [[Tags]] — the topic vocabulary
    - [[Causality]] — cause-and-effect chains between events and entities
  MD
end
