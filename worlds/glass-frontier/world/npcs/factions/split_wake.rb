faction :split_wake do
  name "Split Wake"
  summary "Split Wake was a mobile pirate crew of three armed cutters and a fast loader during the Contested Reach."
  subkind :community
  founded 2343
  tags :military, :salvage, :transport
  prominence :marginal
  status :complete
  omit_facts :leaders, :headquarters, :predecessors

  descriptive_identity(
    ideology:
      "Take what has already been refined and leave the raw field alone " \
      "— which meant its victims were always the people who had done the " \
      "work, down to a loaded transfer skiff drawing away from " \
      "Shardfall.",
    methods:
      "Three armed cutters and a fast loader approached on diverging " \
      "thrust lines, crossed the convoy's wake, and struck whichever " \
      "vessel turned to meet one of the threats. Pilots named the " \
      "pattern before the crews adopted it as their own.",
    presence:
      "Nothing has flown under the name since 2348. It survives as a " \
      "maneuver Shear convoy pilots still call out when they see it " \
      "forming behind them, and as drive records — pulled before the " \
      "surrendered ships were cut apart — that anchor every account of " \
      "the Shardfall battle."
  )

  prose <<~PROSE
    Split Wake was a mobile pirate crew of three armed cutters and a fast loader during the Contested Reach. Its ships approached on diverging thrust lines, crossed a convoy's wake, and struck the vessel that turned toward either threat. Pilots named the pattern first; the crews adopted it.

    The group stole refined loads and abandoned raw fields. At #{ref :shardfall, "Shardfall"}, intact-grade ringglass already sat in the local miners' transfer barges while corporate rigs filled more. Split Wake entered for the loaded material and fired on a transfer skiff drawing away from the field.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "Broken at Shardfall"
    The return fire trapped Split Wake between the linked arrays and the route home. Two cutters were destroyed during the battle. The loader lost pressure in the cascade, and its surviving crew surrendered at the hab's outer lock. The last cutter surrendered after its weapons mount failed.

    Split Wake did not operate again. Nine members died and fourteen entered Brake custody. The surviving ships were cut apart after the casualty hearings; their drive records supplied the sequence used in every later account of the battle.
  PROSE

  gm_note :appears, "The name is a maneuver before it is a crew: two thrust lines diverging across a convoy's wake, striking whichever ship turns to meet one of them. Shear convoy pilots still call the pattern out by name when they see it forming behind them."
  gm_note :triggered_by, "Any claim about the sequence of the #{ref :shardfall, "Shardfall"} battle can be checked against Split Wake's drive records, pulled before the ships were cut apart after the casualty hearings and used in every account written since."
  gm_note :complicates, "Split Wake went for refined loads and ignored raw fields, so its victims were whoever had already done the work. At Shardfall that meant the local miners' transfer barges and a skiff drawing away from the field, not the corporate rigs still cutting."
end

relate :rel_split_wake_operated_shear, :operates_in, :split_wake, :the_shear, since: 2343, till: 2348 do
  prose "The mobile crew raided refined salvage loads in the mid-drift Shear."
end
relate :rel_split_wake_participated_shardfall, :participated_in, :split_wake, :shardfall do
  prose "Split Wake attacked loaded vessels during the claim standoff and was broken in the resulting battle."
  descriptive_identity(
    aims:
      "It came for the loaded material only — ringglass already in the " \
      "Cutters' barges and Drossmark's skiffs — leaving the raw field " \
      "to the people fighting over it.",
    conduct:
      "Its ships approached on diverging thrust lines during the " \
      "standoff and opened fire on a transfer skiff drawing away from " \
      "the field, which set the escorts shooting across the marked work " \
      "line.",
    cost:
      "Two cutters destroyed, the loader holed in the cascade, nine " \
      "dead, fourteen taken into Brake custody — and nothing has flown " \
      "under the name since."
  )
end
relate :rel_shardfall_destroyed_split_wake, :destroyed, :shardfall, :split_wake do
  prose "Two ships were destroyed, two surrendered, and the pirate crew never operated again."
end

moment :split_wake_disbanded, year: 2348, of: :split_wake do
  summary "Split Wake ended in 2348 when its surviving crews surrendered after Shardfall."
  prose "The surviving Split Wake crews surrendered after Shardfall."
  effects { set :split_wake, standing: :disbanded }
end
