geographic_location :spreading_front do
  name "The Spreading Front"
  summary "The Spreading Front is the Glassfall shower stream currently shifting across Keelward's inner approaches, opening a cool-cycle lane before spreading laterally as the upper atmosphere warms."
  subkind :hazardous_zone
  type_of :glassfall_showers
  status :complete
  tags :orbital, :ringglass, :resonance, :danger
  prominence :recognized
  nature "A moving stream of fine ring debris whose safe lane changes with upper-atmosphere temperature"
  containment_status "Surveyed by Rainline and published as a shortened conditional lane"

  descriptive_identity(
    setting: "A moving stream of fine ring debris crossing the inner approaches to Keelward and the crowded paths of the Shear.",
    activity: "Rainline lays temporary marker strings through its cool-cycle lane while Prismwell revises the published opening after each pass.",
    hazards: "The stream spreads laterally as the upper atmosphere warms, and one intact marker has returned ahead of the vessel that dropped it."
  )

  prose <<~PROSE
    #{ref :rainline, "*Rainline*"} is charting the shower stream that has moved traffic from Keelward's inner fields. Its markers show a passable lane during the cool part of the surface cycle, followed by a sudden lateral spread as the upper atmosphere warms. #{ref :prismwell_kite_guild, "Prismwell"} publishes both observations and has shortened the lane's open mark.

    One lamp from the latest string has returned to Glasswake ahead of the ship that dropped it. Its casing is intact, its clock agrees with the yard, and its record shows an ordinary deployment followed by a second release from a point inside the mid-drift. *Rainline* carries the replacement marker on its next survey.
  PROSE

  gm_note :appears, "The published lane opens during the cool part of the surface cycle and shortens as the front spreads laterally above it."
  gm_note :triggered_by, "Following Rainline's marker string reaches the lamp recorded as released twice, once by the survey kite and once from inside the mid-drift."
  gm_note :complicates, "The forecast can remain correct while a narrow dense strand moves across the marked lane between survey passes."
end

relate :rel_glassfall_caused_spreading_front, :caused, :the_glassfall, :spreading_front do
  prose "The Spreading Front is one of the recurring debris streams left by the shattered ring."
end
relate :rel_spreading_front_part_of_shear, :part_of, :spreading_front, :the_shear do
  prose "The front crosses the crowded orbital paths of the Shear before reaching the inner approaches."
end

relate :rel_spreading_front_manifests_in_shear, :manifests_at, :spreading_front, :the_shear do
  prose "The Spreading Front is the current named shower stream crossing the Shear."
end
