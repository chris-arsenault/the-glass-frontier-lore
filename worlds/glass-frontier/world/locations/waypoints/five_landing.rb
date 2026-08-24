installation :five_landing do
  name "Five Landing"
  playable_as :chronicle_location
  subkind :station
  status :complete
  tags :"ring-hab", :transport, :trade, :household
  prominence :marginal
  omit_facts :maintained_by

  prose <<~PROSE
    Five Landing is the broadest continuous deck in #{ref :holl, "Holl"}. Its name comes from the five routes that meet there: the upper cargo lift, two spring-level ladders, the lower cable gallery, and a narrow bridge across the open wall. Colored bands continue from each route across the floor, so a traveler can follow one through a crowd.

    Freight occupies the center beneath a traveling hoist. Food stalls, repair tables, and water taps line the wall. The outer rail carries removable benches during public meetings and clears for lift loads at a bell from the hoist operator.

    The new temporary stair from the upper pressure door now terminates beside the blue route. Its traffic has filled the landing with survey crews and residents inspecting the chamber above. Market sellers have already extended their awnings over the unpainted part of the floor.
  PROSE

  gm_note :appears, "Directions on this deck are colors, not turns — each of the five routes runs its band across the floor and through the crowd. Follow the wrong band and you arrive at the upper cargo lift instead of the spring-level ladders."
  gm_note :triggered_by, "The hoist operator's bell clears the outer rail for a lift load. Benches come off, a public meeting stops where it stands, and whatever was being negotiated moves to the water taps along the wall until the freight is down."
  gm_note :complicates, "The temporary stair from the upper pressure door lands beside the blue route, so the deck now holds survey crews, residents going up to see the chamber, and market awnings already staked over floor nobody has painted a band across."
end
relate :rel_five_landing_located_in_holl, :located_in, :five_landing, :holl, since: 2435 do
  prose "Five Landing joins Holl's principal ladders, lift, cable gallery, and cross-wall bridge."
end


relate :rel_orr_senn_operates_five_landing, :operates_in, :orr_senn, :five_landing, since: 2435 do
  prose "Orr Senn uses Five Landing for joint water-board readings during Holl's pipe exchanges with Eleven."
end


relate :rel_five_landing_hosts_orr_senn, :hosts, :five_landing, :orr_senn, since: 2435 do
  prose "Five Landing hosts Orr Senn's public comparison of Holl and Eleven flow records."
end
