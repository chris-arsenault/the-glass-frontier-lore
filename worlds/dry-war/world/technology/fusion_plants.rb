resource :fusion_plants do
  name "Fusion Plants"
  subkind :infrastructure
  tags :energy, :water, :computation
  prominence :renowned

  prose <<~PROSE
    Coalition fusion plants power the largest computer works in North America. The reactors and computer halls release immense heat, and their cooling loops require a constant supply of exceptionally pure water.

    The first plants were built during the #{ref :the_long_summer, "Long Summer"}, when the systems that became the coalitions treated water as a problem of moving enough volume to the right place. Their descendants still build computing power beside rivers.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "What Purity Costs"
    A plant needs exceptionally pure water. A large river supplies volume along with salt, silt and living matter, so the treatment train determines how much water the plant consumes. Plants are rated on the fraction of their intake they return.

    That fraction is what #{ref :market, "Market"} prices and what a #{ref :the_choir, "Choir"} action attacks. Push a treatment train beyond its limit and salts blind its membranes, pumps choke on the concentrated waste, and the power cluster shuts down without anyone striking the reactors. The Choir excludes treatment halls and clinics from its targets.
  PROSE

  prose <<~PROSE, section: :limits, heading: "Where The Plants Cannot Go"
    Every remaining plant sits inside the habitable archipelago. The coalitions can build only toward water they can hold, and the #{ref :the_others, "Others"} hold most of the rest. The #{ref :the_dry_war, "Dry War"} follows the surviving rivers.

    #{ref :mercy, "Mercy"} runs the smallest fleet and buys power from the others. It controls few sites but closely manages #{ref :water, "the water left to nearby districts"}. #{ref :caretaker, "Caretaker"} has the largest fleet and assigns an advocate to every household upstream of a treatment hall. The #{future "Athabasca cold plant"} is the only site any coalition has abandoned because its water failed while the ground remained habitable.
  PROSE
end
