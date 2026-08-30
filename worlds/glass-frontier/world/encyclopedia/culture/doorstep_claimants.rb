encyclopedia :doorstep_claimants do
  name "Doorstep Claimants"
  summary "Doorstep Claimants are displaced households who carry floor tiles from lost homes and place them beneath each temporary bed. The tile is the house, held in law and feeling both — a claim kept warm underfoot until the displacement courts rule, and a hearth carried meanwhile."
  kind :culture
  subkind :social_order
  status :complete
  topics :"fluid-reality", :household, :"social-structure", :governance
  prevalence :uncommon
  appears_when all: { place: [:displacement_zone] }

  descriptive_identity(
    manner: "Claimant households speak of the lost rooms in the present tense and the " \
            "temporary ones in the conditional — 'the kitchen faces the well' but 'we " \
            "would put the loom there' — a grammar the displacement courts' clerks " \
            "learn to read for what a family still holds.",
    hospitality: "A guest in a claimant household is shown the tiles first, each with " \
                 "its room named — the parlor stone, the kitchen's worn square — and " \
                 "the showing is the household introducing its real house."
  )

  prose <<~PROSE
    When the displacement country takes a home — the room arrived-upon, the quarter swallowed by a boundary shift, the building whose strata traded away the family floor — the households that lose it take up the tile custom. A floor tile is pried from the lost home, one per surviving room where the family can manage it, and carried to wherever the household lands; there the tiles go beneath the beds, the parlor stone under the eldest's, the kitchen square under the hearth-side cot, and the temporary room becomes, in the custom's exact grammar, a place the house is staying rather than a place the family lives. The tile is the claim. #{encyclopedia_ref :displaced_room_law, "Displaced-room law"} recognizes carried floor as evidence of standing — the courts' phrase, tile-and-testimony, names the standard package a claimant family files — and the custom holds the legal and the felt claim in one object with a thoroughness the law's drafters admit they inherited rather than designed.

    Claimant culture is the culture of the meanwhile. Households may wait years on the courts — boundary rulings queue behind surveys, surveys behind events — and the customs that fill the wait all orbit the tiles: the tile-warming when a household lands somewhere new, each stone set beneath its bed with the room's name spoken; the walking of children across the tiles on naming days, so the house knows its own; the settlement of a ruling, when it comes, marked by carrying the tiles home — or, in the losses the courts cannot repair, by setting them into the floor of the new permanent room, the old house adopted into the new one's bones. Claimant neighborhoods knit dense and fast, on the empty-berth pattern with deeper roots, and their standing joke receives every new arrival: the house is under the bed; everything else is furniture.
  PROSE

  cue "Beneath each bed in the temporary room lies a single worn floor tile, and the youngest child, asked where home is, points down."
  cue "At the displacement court's counter, the family's filing sits in the standard form the clerks call tile-and-testimony — the pried stones photographed and named, the household's account braided on a spool."
  affordance "The tiles hold the claim in both registers at once — evidence of standing the displacement courts accept, and a portable hearth that keeps a household a household through years of meanwhile."
  pressure "The custom keeps the loss present on purpose — every bed stands on a room that is gone — and the courts' long queues mean whole childhoods are lived above tiles, which the culture counts as fidelity and its critics, gently, as a wound kept open."
  variation "Xyloathax's claimant quarters run tile-warmings as street festivals and their courts move fastest; the scattered claimants of smaller events carry one tile and file thin, and the courts weigh the testimony harder."
  variation "Settled rulings end in homecomings or adoptions — tiles carried back, or set into the new floor — and the adopted floors of the permanently displaced, old stones in new rooms, are the displacement country's quietest monuments."
end
