encyclopedia :ring do
  name "The Ring"
  kind :technology
  subkind :orbital_habitat_ring
  status :complete
  topics :"ring-era", :"ring-hab", :orbital, :rebuilding
  prevalence :common
  available_globally
  summary "The Ring was a continuous inhabited band around Kaleidos, with spin-graded districts, garden decks, freight galleries, signal lines, and environmental systems built as one machine. It broke in the Glassfall; its surviving sections still operate at reduced load, and postfall builders reuse their section standards."
  function "Planet-scale habitation: a spin-graded, self-provisioning inhabited band integrating housing, agriculture, freight, signal, and environmental control into one continuous structure"
  classes "The Kaleidos ring itself, the pattern's one full expression here; the surviving fragments, sections running independently at every size; and the ring-pattern habs — postfall construction built to the recovered section standards, the design continuing under new management"
  operating_environments "Orbit as designed; surviving Kaleidos sections now also operate on the surface and at intermediate attitudes, with crews adapting spin, gardens, freight, and air systems to each placement"
  operating_limit "Sections drew balance, redundancy, and supplies from the continuous band; isolated fragments run fewer systems at reduced load and replace missing services locally or through exchange"
  capacity "The intact ring housed civilization at planetary scale; a great fragment carries a city, a small one a village, and new construction reuses section standards down to corridor scale"

  descriptive_identity(
    appearance: "In the sky, the bright broken arc that gives the Glass " \
                "Frontier its name; underfoot, the pattern everywhere — the " \
                "long curved decks, the spin-graded districts, the garden " \
                "strata and freight galleries repeating at every scale from " \
                "city-fragment to corridor.",
    working: "A section works as a slice of the whole: spin for weight, " \
             "garden decks for food and air, freight and signal galleries " \
             "for circulation, the fabric's own accounting for position and " \
             "balance — and a fragment's institutions are largely the crews " \
             "that keep each layer of the slice alive.",
    risks: "Individual sections were designed to draw balance, redundancy, and " \
           "supplies from the continuous band; isolated fragments must reduce " \
           "loads, replace missing subsystems, and trade for what adjacent " \
           "sections once provided."
  )

  prose <<~PROSE
    The elven Ring combined a continuous inhabited band with the systems that supported it. Rotation supplied graded working weight; garden strata supplied food and air; freight and signal galleries circulated goods and information; position-keeping systems held the band in orbit. It carried a planetary population throughout the ring age. Its section plans remain the reference standards used to identify, repair, and extend surviving fragments.

    The band was assembled in sections, each carrying a subset of the whole's systems. After the Glassfall, many sections continued independently at reduced load in orbit, on the surface, and between. Their crews maintain spin, air, gardens, structure, and circulation while replacing functions formerly supplied by neighboring sections. A working #{encyclopedia_ref :graft, "garden deck"}, for example, now depends on graft exchange and outside water agreements. New ring-pattern habitats use recovered section dimensions and service layouts so parts, tools, and trained crews can move between old and new construction.
  PROSE

  cue "The night sky carries the bright broken arc end to end, and the child's first cosmology lesson is the local version of the same sentence everywhere: we live in a piece of that."
  cue "The new hab's framing goes up to the recovered section standards — spin grade, garden stratum, freight gallery in the old proportions — and the raising crew's toast at the topping is the builders', borrowed: to the band."
  affordance "Recovered section standards give builders shared dimensions, service layouts, and repair practices that scale from city fragments to new corridor habitats."
  pressure "Each fragment operates only a subset of the integrated design and must obtain missing redundancy, stock, and living material through local replacements and exchange."
  variation "Great fragments run near-complete sections as cities; small ones keep villages alive on one or two working layers; ring-pattern habitats built since the Rekindling use the same service dimensions in new construction."
  variation "Regions use the broken arc as map, salvage source, historical monument, and weather marker; local dialects give the band their own everyday names."
end
