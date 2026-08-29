encyclopedia :cultures do
  name "Cultures"
  summary "Cultures in the Kaleidos system are identities shaped chiefly by place, upbringing, and shared practice rather than species."
  kind :culture
  subkind :overview
  status :draft
  reviewed "2026-03-18"
  topics :"social-structure"
  prevalence :common
  available_globally
  registry true

  log "2026-08-22 — Classified as a reference article because it is the culture registry, not a culture in the world."

  prose <<~PROSE
    Cultures in the Kaleidos system are orthogonal to species. A Sitharian orc and a Sitharian human share more cultural identity — language patterns, naming conventions, visual aesthetics, clothing — than a Sitharian human and a Hab-Worlder human. Species determines biology. Culture determines how you introduce yourself.

    Cultures are not ideologies or governments. A single culture can contain many political factions, governance structures, and belief systems. What a culture provides is the surface layer: how people talk, how they dress, how they name their children, and how they recognize each other across a crowded station.

    Each culture defines distinct naming patterns — the primary species-agnostic cultural signal. Name generation follows patterns defined in `../the-canonry` name-forge for lexographic consistency.
  PROSE
  prose <<~PROSE, section: :perception, heading: "Reading a Stranger"
    Twelve generations under different gravity, light, and work have made the system's peoples visibly distinct. A body is a reliable record of where a person grew up — a docker's shoulders, a low-spin frame, skin darkened by glasslight — and an unreliable record of everything else. Bodies in Kaleidos announce origin; they do not announce trade, standing, or intent.

    Those are read from what a person carries and wears. Government officials wear uniforms, some of them elaborate. The trade guilds are known by the instruments of their craft, carried openly — a Tuner's kit, a courier's sealed case, a reader's references. Criminal organizations are not outwardly identifiable at all; their people read as any other crew until a ledger says otherwise.

    The standard mistake is reading the body when the instruments are what count. A stranger sees a Shear-built frame and assumes a salvager, and the woman is a surgeon whose grandparents left the Shear before she was born. The signs are legible everywhere and misread constantly, and every culture keeps its own stock of confident wrong conclusions about the others.
  PROSE
  prose <<~PROSE, section: :sources, heading: "Culture Registry"
    | Culture | Home and movement | Shared practice |
    |---------|-------------------|-----------------|
    | #{encyclopedia_ref :sitharian_culture, "Sitharian"} | Sithari and its institutions | Formal register, procedure and precise public presentation |
    | #{encyclopedia_ref :hab_worlder, "Hab-Worlder"} | Ring habs | Air sense, exit awareness and maintenance reciprocity |
    | #{encyclopedia_ref :shearfolk, "Shearfolk"} | Salvage routes and claim stations | Current charts, visible work and rescue debt |
    | #{encyclopedia_ref :sable_riverfolk, "Sable Riverfolk"} | Sable Crescent rivers and roads | Witnessed accounts, household names and route marks |
  PROSE
end
