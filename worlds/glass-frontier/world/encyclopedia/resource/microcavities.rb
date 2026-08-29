encyclopedia :microcavities do
  title "Microcavities"
  kind :resource
  subkind :fuel
  status :complete
  summary "Microcavities are sealed ringglass cells cut to hold dense standing resonance and release it as portable high-energy fuel."
  reviewed "2026-03-19"
  topics :resonance, :trade, :materials
  prevalence :common
  available_globally

  cue "Most cells are thumbnail-sized or smaller and are traded in standardized racks."
  cue "A full rack looks like a tray of tiny glass seeds, each humming faintly if held close enough to feel."
  affordance "Cracking a cell's seal releases the stored energy as kinetic-band output, enough to restart a dead array or supply emergency thrust."
  pressure "A poorly sealed cell is a volatile hazard rather than a fuel source and can vent the whole stored charge without anyone choosing the moment."
  variation "The grade that holds charge best comes out of the Shear and costs accordingly."
  variation "Industrial processes use standardized cells where ambient resonance cannot supply enough power."

  descriptive_identity(
    appearance:
      "Sealed ringglass cells, most no bigger than a thumbnail, traded " \
      "in standardized racks — a full rack looks like a tray of tiny " \
      "glass seeds, each humming faintly when held close enough to " \
      "feel.",
    working:
      "Each cell's geometry locks a dense standing wave inside until " \
      "the seal is cracked, releasing the charge as one controlled " \
      "kinetic-band burst — the standard fuel where ambient resonance " \
      "falls short: deep Shear work, emergency thrust, heavy industry. " \
      "Refineries cut them to tight tolerances, so they are common " \
      "without being cheap, and the grade that holds charge best comes " \
      "out of the Shear at a price.",
    risks:
      "The whole stored charge goes at once, whether or not anyone " \
      "chose the moment — a loosely sealed cell bought cheap vents the " \
      "same energy as a good one restarting a dead array.",
  )

  prose <<~PROSE, section: :how_it_works, heading: "How It Works"
    Sealed #{encyclopedia_ref :ringglass, "ringglass"} cells engineered with internal chambers where standing resonant waves are maintained at high density. Each microcavity is a small, self-contained energy store — the resonance inside is locked in place by the cell's geometry and the integrity of its seal. Cracking the seal releases the stored energy in a controlled burst, converting standing waves into usable kinetic-band output far more efficiently than drawing from an ambient field.

    Microcavities are the standard high-energy fuel for applications where ambient resonance isn't sufficient — deep #{ref :the_shear, "Shear"} operations, emergency thrust, industrial processes that need more power than a kinetic array can draw from the local field. They are manufactured at ringglass refineries, where the precision cutting and tuning required to create stable internal chambers is part of the existing production infrastructure. Not rare, but not cheap — the engineering tolerances are tight and a poorly sealed cell is a volatile hazard rather than a fuel source.

    The cells are small — most are thumbnail-sized or smaller — and are traded in standardized racks. A full rack looks like a tray of tiny glass seeds, each one humming faintly if you hold it close enough to feel.
  PROSE

end
