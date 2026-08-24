creature :sorel do
  name "Sorel"
  summary "Sorel are broad, low grazing animals bred at Rib to keep the pressure reef's passages open. Their rasping mouths remove soft mineral growth while leaving mature load-bearing ridges intact."
  subkind :animal
  status :complete
  tags :ecology, :resonance, :"structural-freq", :"ring-hab"
  prominence :marginal

  prose <<~PROSE
    Sorel are broad, low grazers bred at #{ref :rib, "Rib"} to keep the pressure reef's passages open. Four gripping feet hold them against steep shell. A rasping mouth removes soft mineral growth and leaves mature load-bearing ridges untouched.

    A hard oval plate covers each animal's belly. The plate vibrates against the reef and aligns the animal with its structural pulse. A feeding herd spreads along one tone line, rests when the note shifts, then crosses together to the next band. Doors and people caught across that line receive the combined weight of the herd against the wall.

    Rib households paint their sorel with food-safe mineral stains and recognize individual animals by plate rhythm. Cutters bring a calm herd into a new chamber before opening it to habitation. The pattern of grazing shows where the shell is growing, carrying pressure, or enclosing warm water.

    Away from the reef, a sorel's plate loses alignment within a few hours. Transport cradles carry a living shell pad under each animal and one tuned brace against its belly. A failed pad leaves the animal disoriented and turns the cradle toward the strongest structural tone aboard the carrier.
  PROSE

  gm_note :appears, "A feeding herd holds one tone line, then crosses to the next band together when the note shifts. Whatever door, rail, or person stands across that line takes the combined weight of every animal in the herd."
  gm_note :triggered_by, "Watching where the herd feeds and where it will not gives a party the shell survey for nothing: cropped soft mineral marks new growth, untouched ridges are carrying load, and a herd that settles and stays has found warm water behind the wall."
  gm_note :complicates, "Off the reef the belly plate loses alignment within a few hours, and a cradle whose living shell pad has failed swings the disoriented animal toward the strongest structural tone aboard, which on most carriers is its own arrays."
end

relate :rel_sorel_inhabits_rib, :inhabits, :sorel, :rib, since: 2435 do
  prose "Sorel graze Rib's living shell and expose its structural growth lines."
end


relate :rel_sorel_attuned_to_resonance, :attuned_to, :sorel, :resonance do
  prose "A sorel's belly plate aligns its movement with the pressure reef's structural pulse."
end
