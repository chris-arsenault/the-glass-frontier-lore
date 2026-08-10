resource :microcavities do
  name "Microcavities"
  subkind :material
  path "player/concepts/microcavities.md"
  reviewed "2026-03-19"
  tags :resonance, :trade, :materials
  prominence :recognized

  prose <<~PROSE, section: :how_it_works, heading: "How It Works"
    Sealed #{ref :ringglass, "ringglass"} cells engineered with internal chambers where standing resonant waves are maintained at high density. Each microcavity is a small, self-contained energy store — the resonance inside is locked in place by the cell's geometry and the integrity of its seal. Cracking the seal releases the stored energy in a controlled burst, converting standing waves into usable kinetic-band output far more efficiently than drawing from an ambient field.

    Microcavities are the standard high-energy fuel for applications where ambient resonance isn't sufficient — deep #{ref :the_shear, "Shear"} operations, emergency thrust, industrial processes that need more power than a kinetic array can draw from the local field. They are manufactured at ringglass refineries, where the precision cutting and tuning required to create stable internal chambers is part of the existing production infrastructure. Not rare, but not cheap — the engineering tolerances are tight and a poorly sealed cell is a volatile hazard rather than a fuel source.

    The cells are small — most are thumbnail-sized or smaller — and are traded in standardized racks. A full rack looks like a tray of tiny glass seeds, each one humming faintly if you hold it close enough to feel.
  PROSE
end

relate :rel_microcavities_derived_from_ringglass, :derived_from, :microcavities, :ringglass do
  prose "Microcavities are worked #{ref :ringglass, "ringglass"} — crystal cut to hold a dense charge of resonance in a small, stable space."
end
relate :rel_microcavities_sourced_from_the_shear, :sourced_from, :microcavities, :the_shear do
  prose "The grade that holds charge best comes out of the #{ref :the_shear, "Shear"}, which keeps the supply expensive and the salvage crews busy."
end
