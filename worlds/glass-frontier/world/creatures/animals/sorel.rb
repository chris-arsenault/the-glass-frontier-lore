creature :sorel do
  name "Sorel"
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
end

relate :rel_sorel_inhabits_rib, :inhabits, :sorel, :rib, since: 2435 do
  prose "Sorel graze Rib's living shell and expose its structural growth lines."
end


relate :rel_sorel_attuned_to_resonance, :attuned_to, :sorel, :resonance do
  prose "A sorel's belly plate aligns its movement with the pressure reef's structural pulse."
end
