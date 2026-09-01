encyclopedia :tripline_kiln do
  name "Kavra"
  summary "Kavra are river-clay ovens suspended amidships from four tuned lines on Korvath barges. The suspension converts ground tremors and groundsong into a slow swing that the hot firing load can survive. Line-setters tune the loaded kiln by ear, watch its telltales through the firing, and sign each batch beside the potter."
  kind :technology
  subkind :technology
  status :complete
  log "2026-08-31 — Renamed Tripline Kiln to Kavra; the Korvath potters' working word names the suspended firing vessel without turning one component or the regional groundsong into its title."
  topics :materials, :resonance, :"structural-freq", :trade
  prevalence :uncommon
  appears_when all: { place: [:waterway] }
  function "Fires Korvath river clay to ware and brick through the region's tremors — the suspension turns ground shock into slow swing, and the load cools crack-free"
  classes "The barge standard, one kiln amidships on four triplines; the double-hung freight pattern for brick runs; and the small cradle kilns potters sling from a jetty frame for household ware"
  operating_environments "The Korvath waterways — moored mid-channel over deep water for firings, clear of the bed's worst singing reaches by the same charts the pilots use"
  operating_limit "The lines protect against the ground and answer to the weather — a firing rides out tremors that crack shore kilns cold, and stands down for the storms that would swing the load past what the tuning damps"

  descriptive_identity(
    appearance: "A round-bellied clay kiln hanging amidships in a barge's open " \
                "frame, slung on four heavy tuned lines with their turnbuckles " \
                "and telltales, smoking gently over the water on firing days " \
                "like a lantern in a gimbal.",
    working: "The load is packed afloat, the lines are tuned to the kiln's " \
             "firing weight — plucked and listened to, line by line — and the " \
             "firing runs its schedule while the river and the ground do as " \
             "they like; the kiln swings slow, the telltales are watched, and " \
             "the load comes out whole.",
    risks: "The craft lives in the tuning: lines set wrong turn damping into " \
           "amplification at exactly the firing weight they were plucked for, " \
           "so the tuning is done loaded, checked at heat, and signed by the " \
           "line-setter — whose name rides with the batch like a potter's mark."
  )

  prose <<~PROSE
    Korvath potters call the suspended firing vessel a *kavra*. River clay fires well, but the region's tremors and #{encyclopedia_ref :korvath_groundsong, "groundsong"} crack ware during the long middle heat in a fixed kiln. A kavra hangs in a barge's open frame on four tuned lines while the vessel is moored over deep water. Ground shock reaches the load through the hull and suspension as a slow swing. The round-bellied vessel moves like a gimballed lantern while its hot ware remains supported evenly.

    Line-setters tune the kiln at its loaded weight, plucking each line and adjusting turnbuckles until the suspension damps the local spectrum. They check stretch and telltale position again as the kiln heats, and their sign travels with the batch beside the potter's mark. Pilot charts place firing moorings away from the bed's strongest singing reaches. Crews suspend firings during storms because wind and current can drive the kiln beyond its damped swing. Barge kilns produce brick, storage ware, and fine Korvath blackware; small cradle patterns hang from jetty frames for household loads.
  PROSE

  cue "Firing day: the barge stands out to the channel mooring, the line-setter plucks each line at load and brings the last turnbuckle a half-turn true, and the kavra smokes gently over the water while the shore's crockery rattles through a tremor that reaches the hanging ware as a slow, harmless swing."
  cue "In the ware town the buyer turns a blackware bowl to read both marks — the potter's and the line-setter's — and pays the mid-channel price."
  affordance "The tuned suspension lets river yards fire whole brick and ware batches through tremor season, including fine blackware that fixed foundations crack."
  pressure "The suspension is sensitive to storms and exact loaded tuning, so line-setters check it at heat and crews postpone firings when wind or current exceeds the mooring table."
  variation "Barge standards fire ware and brick on the channel moorings; double-hung freight patterns run bulk brick for the building seasons; cradle kilns on jetty frames give households the same physics at soup-pot scale."
  variation "Line-setting is its own recognized craft with its own marks, and the setters' bench at a river yard adjudicates cracked-batch disputes by reading the lines before anyone blames the clay."
end
