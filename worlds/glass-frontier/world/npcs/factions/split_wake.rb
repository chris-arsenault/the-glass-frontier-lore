faction :split_wake do
  name "Split Wake"
  subkind :community
  founded 2343
  tags :military, :salvage, :transport
  prominence :marginal
  status :complete
  omit_facts :leaders, :headquarters, :predecessors

  prose <<~PROSE
    Split Wake was a mobile pirate crew of three armed cutters and a fast loader during the Contested Reach. Its ships approached on diverging thrust lines, crossed a convoy's wake, and struck the vessel that turned toward either threat. Pilots named the pattern first; the crews adopted it.

    The group stole refined loads and abandoned raw fields. At #{ref :shardfall, "Shardfall"}, intact-grade ringglass already sat in the local miners' transfer barges while corporate rigs filled more. Split Wake entered for the loaded material and fired on a transfer skiff drawing away from the field.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "Broken at Shardfall"
    The return fire trapped Split Wake between the linked arrays and the route home. Two cutters were destroyed during the battle. The loader lost pressure in the cascade, and its surviving crew surrendered at the hab's outer lock. The last cutter surrendered after its weapons mount failed.

    Split Wake did not operate again. Nine members died and fourteen entered Brake custody. The surviving ships were cut apart after the casualty hearings; their drive records supplied the sequence used in every later account of the battle.
  PROSE
end

relate :rel_split_wake_operated_shear, :operates_in, :split_wake, :the_shear, since: 2343, till: 2348 do
  prose "The mobile crew raided refined salvage loads in the mid-drift Shear."
end
relate :rel_split_wake_participated_shardfall, :participated_in, :split_wake, :shardfall do
  prose "Split Wake attacked loaded vessels during the claim standoff and was broken in the resulting battle."
end
relate :rel_shardfall_destroyed_split_wake, :destroyed, :shardfall, :split_wake do
  prose "Two ships were destroyed, two surrendered, and the pirate crew never operated again."
end

moment :split_wake_disbanded, year: 2348, of: :split_wake do
  prose "The surviving Split Wake crews surrendered after Shardfall."
  effects { set :split_wake, standing: :disbanded }
end
