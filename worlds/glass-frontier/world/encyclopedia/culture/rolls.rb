encyclopedia :rolls do
  name "The Rolls"
  kind :culture
  subkind :governance
  status :complete
  topics :"ring-era", :archives, :governance, :rebuilding
  prevalence :common
  available_globally
  summary "The Rolls are the registries that govern access to surviving elven installations. Each listed site receives a condition survey, an access regime, a responsible party, and one of four classes: worked, kept, sealed, or watched."
  integration "Regional registries use a shared survey and access procedure while retaining responsibility for their own sites, plates, renewal calendars, and petitions"
  formal_register "A site is worked, kept, sealed, or watched; each plate records its condition grade, access regime, responsible party, registry, and renewals in that order"

  descriptive_identity(
    appearance: "A boundary plate records condition grade, access regime, " \
                "registry, responsible party, and renewal punches. Surface " \
                "registries stamp iron, hab registries etch bulkheads, and " \
                "debris-field registries mark claim buoys.",
    manner: "Registrars grade what is present, assign one of the four regimes, " \
            "name the responsible party, and suspend access whenever material " \
            "change makes the recorded survey unreliable.",
    hospitality: "Visitors enter through the regime on the plate: a license at " \
                 "a worked site, the responsible keeper at a kept one, a " \
                 "recorded exception at a sealed one, or the standing docket " \
                 "that governs a watched site."
  )

  prose <<~PROSE
    The Rolls govern surviving installations of the #{encyclopedia_ref :elves, "elven"} orbital civilization that are treated as places. They include fallen spans, intact chambers in orbital fragments, buried freight galleries, and inhabited structures built from ring fabric. A survey records a site's condition and hazards, assigns an access regime, and names the party responsible for its boundary. Those fields appear on the survey plate and in the responsible registry.

    Worked sites allow licensed recovery. Kept sites remain in use or reserve and receive maintenance against their condition grade. Sealed sites close for a recorded hazard or to preserve intact fabric. Watched sites answer to standing dockets above the local registry. Regional plates differ in material — stamped iron on the surface, etched bulkheads in habs, marked claim buoys in debris fields — but record the same fields in the same order.

    Survey calendars set the ordinary renewal. A flood, structural change, or newly exposed system triggers an immediate survey and suspends the current access regime. An intact system found under a worked license can move the site to kept, sealed, or watched status before recovery resumes. Settlements may petition to open sealed fabric during a shortage, while preservation dockets and existing license holders argue from the same survey record. Registrar training reduces the procedure to three instructions: grade what is present, seal what requires it, and record the decision.
  PROSE

  cue "A salvage gallery ends at a survey plate carrying the sealed code, the responsible registry, and a renewal punch two seasons old."
  cue "Market stalls line the roof of a buried freight gallery while its iron boundary plates record the grade and access regime below."
  affordance "The Rolls give crews and residents a condition survey, an access regime, and a responsible party for recovery, research, maintenance, or settlement work."
  pressure "Flood, structural change, or a new discovery suspends the current regime until a fresh survey resolves access and responsibility."
  variation "Worked sites admit licensed recovery; kept sites remain in use or reserve; sealed sites close for a recorded reason; watched sites answer to standing dockets."
  variation "Surface registries stamp iron plates, hab registries etch bulkheads, and debris-field registries mark claim buoys with the same fields."
end
