culture :cultures do
  name "Cultures"
  article!
  log "2026-08-22 — Classified as a reference article because it is the culture registry, not a culture in the world."
  subkind :overview
  path "player/concepts/cultures/cultures.md"
  status :complete
  reviewed "2026-03-18"
  tags :"social-structure"
  prominence :mythic
  registry true
  organizing_basis "Place, upbringing and shared practice rather than species"
  primary_signals "Language, names, clothing and manners"
  major_cultures %i[sitharian_culture hab_worlder shearfolk sable_riverfolk]
  custom_fact :political_scope, "Cultures contain many governments and ideologies",
              label: "Political Scope"

  prose <<~PROSE
    Cultures in the Kaleidos system are orthogonal to species. A Sitharian orc and a Sitharian human share more cultural identity — language patterns, naming conventions, visual aesthetics, clothing — than a Sitharian human and a Hab-Worlder human. Species determines biology. Culture determines how you introduce yourself.

    Cultures are not ideologies or governments. A single culture can contain many political factions, governance structures, and belief systems. What a culture provides is the surface layer: how people talk, how they dress, how they name their children, and how they recognize each other across a crowded station.

    Each culture defines distinct naming patterns — the primary species-agnostic cultural signal. Name generation follows patterns defined in `../the-canonry` name-forge for lexographic consistency.
  PROSE
  prose <<~PROSE, section: :sources, heading: "Culture Registry"
    | Culture | Home and movement | Shared practice |
    |---------|-------------------|-----------------|
    | #{ref :sitharian_culture, "Sitharian"} | Sithari and its institutions | Formal register, procedure and precise public presentation |
    | #{ref :hab_worlder, "Hab-Worlder"} | Ring habs | Air sense, exit awareness and maintenance reciprocity |
    | #{ref :shearfolk, "Shearfolk"} | Salvage routes and claim stations | Current charts, visible work and rescue debt |
    | #{ref :sable_riverfolk, "Sable Riverfolk"} | Sable Crescent rivers and roads | Witnessed accounts, household names and route marks |
  PROSE
end

relate :rel_cultures_extends_hab_worlder, :extends, :cultures, :hab_worlder do
  prose "#{ref :hab_worlder, "Hab-worlder"} culture is one of the major registers catalogued here."
end
relate :rel_cultures_extends_sitharian, :extends, :cultures, :sitharian_culture do
  prose "So is #{ref :sitharian_culture, "Sitharian"} culture, the system's prestige register."
end
relate :rel_cultures_extends_shearfolk, :extends, :cultures, :shearfolk do
  prose "#{ref :shearfolk, "Shearfolk"} culture carries route knowledge and rescue obligations between salvage crews."
end
relate :rel_cultures_extends_sable_riverfolk, :extends, :cultures, :sable_riverfolk do
  prose "#{ref :sable_riverfolk, "Sable Riverfolk"} culture follows witnessed accounts and joined households along the Crescent's routes."
end
