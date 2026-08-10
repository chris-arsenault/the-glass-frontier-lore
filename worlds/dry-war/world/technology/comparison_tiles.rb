resource :comparison_tiles do
  name "Comparison Tiles"
  subkind :material
  aka "the set"
  tags :ecology, :military, :trade, :legibility
  prominence :marginal

  prose <<~PROSE
    Ten tiles in a copper case, used along the walls of #{ref :the_mediterranean_chain, "the Mediterranean Chain"} to judge what is growing on a wet surface. The low tiles are glazes cast at stated roughnesses, from a mirror up through the tooth a film will hold on. The high tiles carry cast relief: shell rings, tube mats and the calcareous crusts found on fouled gates and hulls.

    They are #{ref :sterile_machines, "sterile-machine"} work: copper body, fired glaze, no organic binder, and a case that doubles as an oven box. A set travels wet and is dragged across growth on gate seats, culverts and drone skins. The whole case can be baked before it moves to another enclave.
  PROSE

  prose <<~PROSE, section: :how_it_works, heading: "How The Tiles Wear"
    Each case bears the shop's mark and the season it was cast. Enclaves break the set after a year even when every tile looks sound.

    Contact wears every tile toward a safer reading. Mirror glazes take a tooth, fine glazes polish, and cast relief rounds at the edges a leather pad meets first. An old set makes anchored growth look like soft film. Nothing in the case shows how far its own surfaces have changed.

    The flaw cost three gates after #{ref :the_zonqor_drone, "the Żonqor drone"} was returned to the water against an old set. Sets are no longer repaired, reglazed or topped up. A retired case goes back to Kalkara and is broken on the stone.
  PROSE

  prose <<~PROSE, section: :limits, heading: "In The Field"
    A surveyor carries one set for a season and keeps the same case from wall to wall. To judge a surface, they hold the nearest tile beside it under a low lamp and drag a leather pad across both. A roughness that catches the pad can hold a living film; a crust that matches the high tiles can shelter a landing from the heat and salt outside the wall.

    Chain enclaves buy the sets by the dozen from the same shops that make their pumps. A surveyor who breaks a case in the field stops work until another reaches the quay.
  PROSE

  log "2026-08-09 — Retirement by date rather than by inspection comes from the wear of contact reference standards. It explains how the Żonqor surveyor could match the tiles correctly while returning a fouled drone to the water."
end
