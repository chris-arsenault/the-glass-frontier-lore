culture :cultures do
  name "Cultures"
  subkind :overview
  path "player/concepts/cultures/cultures.md"
  status :complete
  reviewed "2026-03-18"
  tags :"social-structure"
  prominence :mythic
  registry true

  prose <<~PROSE
    Cultures in the Kaleidos system are orthogonal to species. A Sitharian orc and a Sitharian human share more cultural identity — language patterns, naming conventions, visual aesthetics, clothing — than a Sitharian human and a Hab-Worlder human. Species determines biology. Culture determines how you introduce yourself.

    Cultures are not ideologies or governments. A single culture can contain many political factions, governance structures, and belief systems. What a culture provides is the surface layer: how people talk, how they dress, how they name their children, and how they recognize each other across a crowded station.

    Each culture defines distinct naming patterns — the primary species-agnostic cultural signal. Name generation follows patterns defined in `../the-canonry` name-forge for lexographic consistency.
  PROSE
  prose <<~PROSE, section: :sources, heading: "Culture Registry"
    | Culture | Base | Population | Status | Entry |
    |---------|------|------------|--------|-------|
    | #{ref :sitharian_culture, "Sithari"} | Sithari (de facto capital) | Large | defined | #{ref :sitharian_culture, "Sithari"} |
    | #{ref :hab_worlder, "Hab-Worlder"} | Ring habs (general) | Large | defined | #{ref :hab_worlder, "Hab-Worlder"} |
    | *7th-planet moon culture* | Colonized moon of the water giant | Medium | slot | — |
    | *Spiritual/druid culture* | Distributed | Medium | slot | — |
    | *Hyper-religious culture* | TBD | TBD | slot | — |
    | *Syndicate culture* | Distributed (criminal networks) | Medium | slot | — |
    | Independent | Everywhere | Small (per community) | bucket | Catch-all for procedural generation |
    | *Open* | — | — | slot | — |
    | *Open* | — | — | slot | — |
    | *Open* | — | — | slot | — |
  PROSE
end

relate :rel_cultures_extends_hab_worlder, :extends, :cultures, :hab_worlder do
  prose "#{ref :hab_worlder, "Hab-worlder"} culture is one of the major registers catalogued here."
end
relate :rel_cultures_extends_sitharian, :extends, :cultures, :sitharian_culture do
  prose "So is #{ref :sitharian_culture, "Sitharian"} culture, the system's prestige register."
end
