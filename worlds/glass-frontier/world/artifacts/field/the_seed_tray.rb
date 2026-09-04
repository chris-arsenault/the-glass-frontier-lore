artifact :the_seed_tray do
  name "The Seed Tray"
  summary "The Seed Tray is a standardized rack of Shear-grade microcavity fuel carried aboard Steady Return."
  subkind :artifact
  type_of :seed
  resource :ringglass
  status :complete
  tags :resonance, :trade, :materials, :transport
  prominence :marginal

  descriptive_identity(
    appearance: "A seed-tray-sized rack of thumbnail cells that look like tiny glass seeds and hum faintly when held close enough to feel.",
    handling: "Each cell releases its standing charge as one controlled kinetic-band burst when its seal is cracked.",
    risks: "The Shear-grade cells hold charge well, but a loose seal vents the same energy as a deliberate release without anyone choosing the moment."
  )

  prose <<~PROSE
    The Seed Tray is a standardized rack of microcavities aboard #{ref :steady_return, "*Steady Return*"}. Its cells are thumbnail-sized or smaller and look like tiny glass seeds, each one humming faintly if held close enough to feel.

    The tray carries the grade that holds charge best, brought out of #{ref :the_shear, "the Shear"}. Cracking one seal releases the whole stored charge as kinetic-band output, enough to restart a dead array or supply emergency thrust.
  PROSE

  gm_note :appears, "The rack is the size of a seed tray, so it fits in an ordinary shipboard locker despite carrying high-energy fuel."
  gm_note :triggered_by, "Cracking one cell's seal releases the whole stored charge at once as kinetic-band output."
  gm_note :complicates, "A loosely sealed cell vents the same energy without anyone choosing the moment."
end

relate :rel_the_seed_tray_sourced_from_the_shear, :sourced_from, :the_seed_tray, :the_shear do
  prose "The tray carries the grade that holds charge best, brought out of the Shear."
end

relate :rel_steady_return_carries_the_seed_tray, :carries, :steady_return, :the_seed_tray do
  prose "Steady Return carries the standardized rack as valuable industrial cargo and reserve fuel."
end
