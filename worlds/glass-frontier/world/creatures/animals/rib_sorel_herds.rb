creature :rib_sorel_herds do
  name "The Rib Sorel Herds"
  summary "The Rib Sorel Herds are the grazing animals bred and marked by Rib households to expose growth and load paths in the settlement's pressure reef. Cutters use their movement before opening new chambers."
  subkind :animal
  type_of :sorel
  status :complete
  tags :ecology, :resonance, :"structural-freq", :"ring-hab"
  prominence :marginal

  prose <<~PROSE
    #{ref :rib, "Rib"} households paint their #{encyclopedia_ref :sorel, "sorel"} with food-safe mineral stains and recognize individual animals by plate rhythm. Cutters bring a calm herd into a new chamber before opening it to habitation. The pattern of grazing shows where the shell is growing, carrying pressure, or enclosing warm water.

    A feeding herd spreads along one tone line, rests when the note shifts, then crosses together to the next band. Doors and people caught across that line receive the combined weight of the herd against the wall.
  PROSE

  gm_note :appears, "A cutter brings one marked herd into a new chamber before opening it, then reads cropped growth, untouched ridges, and where the animals settle."
  gm_note :triggered_by, "When the reef's note shifts, the whole herd crosses to the next tone line together, carrying anything standing across it into the wall."
  gm_note :complicates, "Away from Rib's reef, each animal needs a living shell pad and tuned brace; a failed pad swings the transport cradle toward the strongest structural tone aboard."
end

relate :rel_rib_sorel_herds_inhabit_rib, :inhabits, :rib_sorel_herds, :rib, since: 2435 do
  prose "Rib's marked sorel herds graze the living shell and expose its structural growth lines."
end
