encyclopedia :avar_road_people do
  name "Avar Road People"
  summary "Avar Road People are the mobile households of Avar's shifting surface routes, keeping their stores in chests that can move when a road changes course. Their year runs on the resurvey, their homes on the chest-count, and their standing on knowing where the roads have gone."
  kind :culture
  subkind :cultural_identity
  status :complete
  topics :surface, :"social-structure", :navigation, :household
  prevalence :uncommon
  appears_when all: { place: [:surface, :unstable_route] }

  descriptive_identity(
    manner: "Road People reckon everything in chests and days — a household is 'eleven " \
            "chests,' a move is 'a two-day lift' — and greet by exchanging road news " \
            "before names, which among them is the courtesy and among settled folk gets " \
            "them a reputation for nosiness they regard as rich.",
    attire: "Layered travel dress with the household's chest-mark stitched at the " \
            "shoulder, and the walking staff shod for crust-sounding, carried by " \
            "everyone old enough to walk point.",
    hospitality: "A stopped household stakes its awning wide as the invitation: road " \
                 "custom feeds any traveler who brings news of a route, priced " \
                 "frankly by how fresh the news turns out to be."
  )

  prose <<~PROSE
    Avar's roads move — the glass sheets breathe, the strike seasons redraw the fords, and a route that carried carts for a decade can shrug itself into scree between seasons — and the Road People are the culture that stopped fighting it. Their households live in chests: standardized, numbered, sized to a barrow and a spider sling, so that home is a count rather than a place. Eleven chests is a household; forty is a compound; and the great road families run to counts that take two drover fairs to move. When the resurvey posts each season's routes, the Road People read it the way farmers read weather, and the households lift, walk, and re-stake along whatever line the ground has decided to permit.

    The chest is the culture's whole philosophy made furniture. Everything owned must earn its place against the question 'does it travel,' inheritance is settled in chests to the visible count, and the worst thing one Road person says of another is that their goods have rooted. What the chests exclude, the culture carries otherwise: the road knowledge itself, held in trained memory and traded at the staking-grounds, where households returning from different lines pool the season's ground truth. Settled Avar pays for that knowledge — the resurvey offices hire Road People as line-walkers, and the #{encyclopedia_ref :roadspider, "spider"} crews buy their grades — and the relationship between the settled towns and the moving households runs on the old mixed current of dependence and doubt.
  PROSE

  cue "A household compound stands staked beside the route — numbered chests in neat ranks under awnings, barrows racked, everything visibly ready to be elsewhere in two days."
  cue "At the staking-ground fire, returning households trade the season's ground truth line by line, and a listener with a resurvey office satchel writes fast and buys rounds."
  affordance "The Road People hold the freshest map of Avar's actual roads — traded at the staking-grounds, sold to the resurvey, and available to any traveler who feeds a household news it can check."
  pressure "The chest-count measures everything, so the culture is permanently arguing with its own edges — the daughter whose loom is worth rooting for, the household grown too big to lift, the settled town offering one family a road office and a foundation."
  variation "The great road families move on spider trains and winter at the fairs; small households walk their counts behind a single barrow and are prouder for it."
  variation "Chest-marks are stitched, painted, and inherited like brands, and a chest found astray on the roads is walked to the next staking-ground unopened — a custom enforced by everyone who owns chests, which is everyone."
end
