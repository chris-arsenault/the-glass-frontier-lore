geographic_location :the_sun do
  name "The Sun"
  summary "The sun is the star at the center of the Kaleidos system and the common reference for its routes, clocks, light, and heat."
  log "2026-08-22 — Excluded as a chronicle location because it has no habitable local site at which a chronicle can begin."
  subkind :celestial_body
  status :complete
  tags :cosmology, :resonance, :navigation, :danger
  prominence :mythic
  custom_fact :classification, "Single star at the center of the Kaleidos system",
              label: "Classification"
  custom_fact :system_role, "Primary source of light, heat, and orbital reference",
              label: "System Role"
  custom_fact :principal_hazard, "Particle storms that disturb signal and kinetic resonance",
              label: "Principal Hazard"

  descriptive_identity(
    setting:
      "The single star at the system's center, followed by seven " \
      "intact planets and the remains of an eighth. Seen from " \
      "Kaleidos, the broken ring crosses its face as arcs and " \
      "isolated fragments, and fine debris catching direct light " \
      "gives the daytime sky its shifting colors.",
    activity:
      "Pilots, surveyors, and clock keepers from Crucible's mines to " \
      "the stations above Lithren take their common reference from " \
      "its position, and deep-system charts count distance outward " \
      "from it. Forecast offices weigh stellar observations against " \
      "outer-beacon measurements before issuing closures.",
    hazards:
      "Particle storms take the signal band down first and the " \
      "kinetic fields later: relays lose clarity, kite sails draw " \
      "unevenly, and exposed ringglass answers in tones outside its " \
      "ordinary profile. A strong front hits the inner worlds early " \
      "and hard, and around Kaleidos it forces traffic away from " \
      "dense debris where many small responses can couple."
  )

  prose <<~PROSE
    The sun is the central star of the #{ref :kaleidos_system, "Kaleidos system"}. Seven intact planets and the remains of an eighth world follow it. Pilots, surveyors, and clock keepers use its position as the common reference from the mines of Crucible to the stations above Lithren.

    On Kaleidos, the Glass Frontier crosses its face as arcs, broken lines, and isolated fragments. Fine ring debris catches direct light beyond the planet's atmosphere and gives the daytime sky its shifting colors.
  PROSE

  prose <<~PROSE, section: :resonance, heading: "Solar Weather"
    Solar particle storms disturb signal-band reception first and kinetic fields later. Long-range relays lose clarity; kite sails draw unevenly; exposed ringglass can answer with tones absent from its ordinary profile. Forecast offices compare stellar observations with measurements from outer beacons before issuing closures.

    A strong front reaches the inner worlds earlier and with greater force. Crucible's settlements maintain shield rooms and suspend surface lift work. Around Kaleidos, route keepers shift traffic away from dense ring debris where many small responses can couple.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Inner Reference"
    #{ref :span_nine, "Span Nine"} passes through Threshold Station at a stable point between the sun and Kaleidos. The filament's alignment remains exact even when conventional relays drift. No present workshop can reproduce its material or explain every correction it makes under solar load.

    Deep-system charts record distance outward from the sun and travel time from Kaleidos. The two measures keep routes comparable without treating the inhabited planet as the physical center of the system.
  PROSE

  gm_note :appears, "A solar front takes the signal band down first, so the earliest sign is a relay losing clarity and a forecast office issuing closures. Kite sails start drawing unevenly hours later, and route keepers push traffic out of dense ring debris until the front passes."
  gm_note :triggered_by, "Fly through a closure and the exposed ringglass on the hull answers in tones outside its own profile, worst inside dense debris where many small responses couple. Tuned gear aboard follows the storm instead of its settings until the front has gone by."
  gm_note :complicates, "Position and time across the system are settled against the sun, and deep-system charts count distance outward from it rather than from Kaleidos. A crew that gives a location relative to their home world has to have it converted before another port can act on it."
end

relate :rel_sun_part_of_kaleidos_system, :part_of, :the_sun, :kaleidos_system do
  prose "The sun is the central star of the Kaleidos system."
end
