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
    manner: "Road People reckon households in chests and moves in days — 'eleven " \
            "chests,' 'a two-day lift.' Greetings exchange current road news before " \
            "names, giving both parties the condition of the route ahead.",
    attire: "Layered travel dress with the household's chest-mark stitched at the " \
            "shoulder, and the walking staff shod for crust-sounding, carried by " \
            "everyone old enough to walk point.",
    hospitality: "A stopped household stakes its awning wide as the invitation: road " \
                 "custom feeds any traveler who brings news of a route, priced " \
                 "frankly by how fresh the news turns out to be."
  )

  prose <<~PROSE
    Avar's roads move: the glass sheets breathe, strike seasons redraw the fords, and a route that carried carts for a decade can become scree between surveys. Road People organize their households for that movement. Their standardized, numbered chests fit a barrow or a spider sling, making household size a visible count. Eleven chests is a household; forty is a compound; the great road families run to counts that take two drover fairs to move. When the resurvey posts each season's routes, households lift, walk, and re-stake along the open lines.

    Chests govern stores and inheritance. Each possession is weighed against whether the household can move it, and saying that someone's goods have rooted means their count has outgrown their route. Road knowledge travels in trained memory instead. At staking-grounds, households returning from different lines pool the season's ground truth. Settled Avar buys that knowledge: resurvey offices hire Road People as line-walkers, and #{encyclopedia_ref :spiders, "spider"} crews buy their grades.
  PROSE

  cue "A household compound stands staked beside the route — numbered chests in neat ranks under awnings, barrows racked, everything visibly ready to be elsewhere in two days."
  cue "At the staking-ground fire, returning households trade the season's ground truth line by line, and a listener with a resurvey office satchel writes fast and buys rounds."
  affordance "The Road People hold the freshest map of Avar's actual roads — traded at the staking-grounds, sold to the resurvey, and available to any traveler who feeds a household news it can check."
  pressure "At each move a household must fit its count to the available barrows and spider slings; a fixed loom, a household grown too large to lift, or a road-office post changes what remains in the traveling count."
  variation "The great road families move in spider convoys and winter at the fairs; small households walk their counts behind a single barrow and are prouder for it."
  variation "Chest-marks are stitched, painted, and inherited like brands, and a marked chest found astray is walked unopened to the next staking-ground."
end
