species :dwarves do
  name "Dwarves"
  playable_as :species
  origin_blurb "Compact and heat-steady, dwarves read fine vibration and layered material through touch."
  subkind :sapient_species
  status :complete
  tags :species, :materials, :resonance
  prominence :recognized
  origin "Alien arrivals during the ring era"
  biology "Compact frame, slow heat exchange, and highly sensitive fingertips"
  lifespan "Usually a little longer than humans"
  resonance_relation "Fine signal-frequency vibration is legible through sustained touch"

  prose <<~PROSE
    Dwarves entered the Kaleidos system during the ring era and now live throughout its surface towns and habs. Their bodies retain heat slowly, their hands distinguish very small changes in texture and vibration, and their compact frames tolerate abrupt changes in acceleration well.
  PROSE

  prose <<~PROSE, section: :biology, heading: "Biology"
    A dwarf's fingertips contain dense beds of pressure and vibration receptors. Sustained contact with worked glass, cloth, metal, or ceramic can separate a coherent signal trace from the ordinary noise of wear. The sense has limits. It gives no direction at a distance and cannot identify a pattern the reader has never encountered. Gloves, callus, cold, and fatigue all reduce its precision.

    Dwarven skin exchanges heat slowly. A comfortable body remains comfortable through short exposure to a hot workroom or a cold transfer lock, while a dangerous change can arrive before discomfort becomes urgent. Dwarven crews use timed exposure rules and surface thermometers rather than trusting sensation alone.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Dwarves have no species homeland and belong to the cultures in which they were raised. Their tactile sense is common in trace work, fine fitting, inspection, and instrument repair, but most dwarves work elsewhere. #{ref :tess_orr, "Tess Orr"} uses it at Wash Four to separate route and handling impressions held in repaired cloth.
  PROSE
end

relate :rel_dwarves_inhabit_frontier, :inhabits, :dwarves, :the_glass_frontier, since: 2050 do
  prose "Dwarves have lived throughout the inhabited ring fragments since the ring era."
end

relate :rel_dwarves_inhabit_wash_four, :inhabits, :dwarves, :wash_four, since: 2305 do
  prose "Wash Four's trace laundries employ dwarven readers in textile inspection and layered recovery."
end

relate :rel_dwarves_inhabit_carom, :inhabits, :dwarves, :carom, since: 2305 do
  prose "Dwarven households live across Carom's three rotating segments and work its sorting floors and transfer drums."
end
