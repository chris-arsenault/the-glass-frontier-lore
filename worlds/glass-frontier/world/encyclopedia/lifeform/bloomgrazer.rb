encyclopedia :bloomgrazer do
  name "Bloomgrazer"
  summary "Bloomgrazers are low armored animals descended from elven seal-maintenance stock. They feed in loose lines along Bloom cordons, cropping heat-softened sealant, and retreat together when the local light reaches the red warning band."
  kind :lifeform
  subkind :animal
  status :complete
  log "2026-08-31 — Renamed Grazers to Bloomgrazer; the title distinguishes this Bloom-cordon animal."
  topics :ecology, :danger, :"ring-era"
  prevalence :uncommon
  appears_when all: { place: [:bloom_adjacent] }
  origin "Descended from the elves' seal-maintenance grazers — bred to crop failed sealant off the ring's works and to quit hazardous light on a hard threshold; the boundary populations kept both instincts"
  biology "A low, plated grazer the size of a bootbox, mouthparts built for shearing cured and heat-softened sealant, gut flora that digest it; forages in loose lines along seams and joints, dense wherever cordon works run"
  lifespan "#{duration 8}; boundary populations turn over quickly wherever long cordon runs provide steady forage"
  function "Feral maintenance and living alarm at once: the grazing strips failing sealant before it fouls the works, and the threshold retreat — the whole line quitting at red-band light — is warning the crews log beside their instruments"
  resonance_relation "The retreat threshold reads the Bloom's emission directly — the animals quit at the red band with a consistency the cordon services have measured against their own gauges and describe, in the literature, as enviable"

  descriptive_identity(
    appearance: "Bootbox-sized plated grazers in seam-gray, moving in loose " \
                "lines along the cordon works with their mouthparts down — " \
                "unlovely, unhurried, and present wherever sealant is failing.",
    behavior: "They crop heat-softened and failing sealant off seams and " \
              "joints, moving in loose feeding lines along the works, and quit — " \
              "the whole line at once, on one bearing, away from the light — " \
              "when the local emission touches the red band.",
    threat: "Their shearing mouths strip repairs that have not finished " \
            "curing. Crews sheet fresh seams until the sealant hardens and " \
            "drive a crowd off with vibration through the work surface.",
    senses: "They read the Bloom's light on the bred-in threshold and read " \
            "sealant's condition by taste — cropping the failing and leaving " \
            "the sound, which is the half of the inheritance the crews " \
            "appreciate on inspection days.",
    risks: "The synchronized retreat begins only at the bred red-band " \
           "threshold. Cordon crews census each grazing line so they know " \
           "where the behavior can be observed and where ordinary gauges " \
           "stand alone."
  )

  prose <<~PROSE
    The #{encyclopedia_ref :elves, "elves"} bred bloomgrazers for the ring's maintenance galleries. Each is a bootbox-sized animal under overlapping gray plates, with shearing mouthparts and gut flora that digest cured sealant. Loose feeding lines follow seams and joints, crowding wherever heat has softened the surface and moving on once they reach sound material. They shelter under cordon housings between feeding periods and return along familiar runs. Fresh repairs draw them as readily as failed ones, so crews sheet uncured work and use vibration through the seam to move a crowd without handling it.

    The same breeding fixed a hard retreat response. When Bloom emission reaches the red warning band, every animal in a feeding line stops, turns away from the light, and leaves on the same bearing. Cordon services have measured the threshold against their gauges and record each departure on the watch floor. The behavior is specific to the red band; bloomgrazers continue feeding through lower emission.

    Grazing also exposes weak work: hard feeding marks sealant that inspection later finds heat-damaged. Crews map feeding runs, count the populations at each cordon, and use those observations beside ordinary instruments. The animals remain feral. They choose forage, shelter, and routes for themselves, and a district with few bloomgrazers gains neither their cropping nor their visible retreat.
  PROSE

  cue "The grazing line works the cordon seam all morning, then quits at noon all at once on one bearing away from the light; the watch floor logs the departure beside the gauge reading."
  cue "Inspection day: the seams the bloomgrazers grazed hard are the seams that fail the tap test, and the crew chief marks the resealing list by where the animals have been eating."
  affordance "Feeding lines expose heat-softened sealant and crop it from the works; their synchronized retreat gives the watch floor a separate observed sign when emission reaches the red band."
  variation "Boundary populations run dense along the standing cordons and thin on the farm lines; the hab corridor populations graze bulkhead seams and quit into the ductwork, which the maintenance trades have mapped as carefully as the animals have."
  variation "Grazing patterns mark likely seal failure before a tap test. Morning rounds record where a line fed, where it sheltered, and which runs have gone empty."
end
