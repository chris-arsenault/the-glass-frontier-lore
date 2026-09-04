encyclopedia :wreaths do
  name "Wreaths"
  kind :phenomenon
  subkind :debris_belt
  status :complete
  log "2026-08-31 — Renamed Planetary Debris Belt to Wreaths; the orbital bands gain a Kaleidos term that covers both inhabited wreckage and the former planet's remains without a generic astronomy label."
  topics :orbital, :cosmology, :salvage, :navigation
  prevalence :common
  available_globally
  summary "Wreaths are planet-scale bands of fragments, dust, and drift following related orbits. The Glass Frontier is the inhabited wreck of Kaleidos's ring; the Fracture follows the former sixth planet's orbit as the remains of the world itself. Both produce changing traffic bands, dust seasons, collision wakes, and routes that depend on continuous survey."
  medium "A broad orbital band around a world or along a former planetary orbit, with mass ranging from fine dust through hull-sized drift to great fragments"
  nature "Collisions grind fragments into finer material, orbital resonances gather and disperse bands, and debris trains spread from major impacts; these changes run from a single afternoon's strike to centuries of slow spreading"
  hazard "Strike risk varies by band, fine glass dust scours hulls and feeds the surface showers, and larger drift changes course as each wreath evolves; registries continuously revise the routes around all three"
  known_forms "The dense trafficked bands where the fragments and the routes concentrate; the thin high bands of dust and small drift; and the debris trains — collision wakes traveling through a wreath as slow, charted processions"

  descriptive_identity(
    signs: "Survey buoys divide each wreath into current traffic and drift bands; " \
           "weather reports give strike grades, dust counts, and the predicted " \
           "passage of collision wakes.",
    effects: "Dust settles into bands, resonances gather and disperse drift, " \
             "and collision wakes spread as charted trains; routes, claims, " \
             "and settlements move as those patterns change.",
    hazards: "Strike grades set daily operations, dust seasons wear hulls and " \
             "instruments, and a debris train can close an established route " \
             "for years despite long published notice."
  )

  prose <<~PROSE
    A wreath contains the scattered mass of a planet-scale body in related orbits. The Glass Frontier formed from Kaleidos's broken orbital habitat ring: inhabited sections, empty hull, glass dust, and smaller drift still circle the world. #{ref :the_fracture, "The Fracture"} occupies the former sixth planet's orbit and contains exposed pieces of crust, mantle, and cooled core. Their compositions differ, but the same processes govern both. Collisions grind fragments finer, resonances gather and shed material, and collision wakes spread as debris trains.

    Dock and survey offices post strike grades, daily dust counts, and closure dates for known trains. Around Kaleidos, glass-dust seasons scour hulls and feed the surface's #{encyclopedia_ref :glassfall_showers, "glass showers"}. In the Fracture, migrating smaller debris can invalidate an approach map within one working season. Major train passages close routes for years, so settlements and salvage camps move stores and traffic before the published date. Recovered elven tables and current buoy surveys support #{encyclopedia_ref :rejoiners, "Rejoiner calendars"} and #{encyclopedia_ref :avulsion, "avulsion"} forecasts. Pilots carry the registry's current chart issue for either wreath.
  PROSE

  cue "The morning's wreath weather posts at the dock office — strike grading amber for the third band, dust season a week early, the Corven train's closure dates unchanged — and the day's routes assemble around it like any harbor's."
  cue "At a Fracture survey station, the approach map is withdrawn after a collision shifts the small debris between two metal-bearing bodies, and claim crews wait for the replacement issue."
  affordance "Strike grades, dust calendars, train forecasts, and surveyed fragment paths let routes, claims, and settlements operate inside both inhabited and salvage-worked wreaths."
  pressure "Bands spread and debris trains pass through established lanes, so every orbital institution pays a standing survey cost and pilots must carry the registry's current chart issue."
  variation "The Glass Frontier's dense bands hold permanent settlements and regular routes; the Fracture's separated wreath supports seasonal approach maps, moving salvage camps, and exposed mineral layers."
  variation "Thin dust bands receive survey traffic and speculative claims; collision trains are temporary dense wakes with their own closure dates and revised routes."
end
