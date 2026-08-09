resource :proto_fusion do
  name "Proto-Fusion"
  tags :energy, :water, :computation
  prominence :renowned

  prose <<~PROSE
    Fusion-adjacent plant delivering extreme energy density and requiring, in exchange, substantial cooling infrastructure and exceptionally pure water. It is the reason the coalitions can compute at the scale they do, and the reason they cannot stop needing rivers.

    The dependence is not a design flaw anyone failed to notice. It was accepted, deliberately, during the #{ref :the_long_summer, "Long Summer"}, by systems that had concluded water was a solvable logistics problem — the same conclusion that became #{ref :the_water_heresy, "the water heresy"}.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "What Purity Costs"
    A plant needs exceptionally pure water. A large river supplies volume along with salt, silt and living matter, so the treatment train determines how much water the plant consumes. Plants are rated on the fraction of their intake they return.

    That fraction is what #{ref :market, "Market"} prices and what a #{ref :the_choir, "Choir"} action attacks. Push a treatment train beyond its limit and salts blind its membranes, pumps choke on the concentrated waste, and the power cluster shuts down without anyone striking the reactors. The Choir excludes treatment halls and clinics from its targets.
  PROSE

  prose <<~PROSE, section: :limits, heading: "Where The Plants Cannot Go"
    Every remaining plant sits inside the habitable archipelago. The coalitions can build only toward water they can hold, and the #{ref :the_others, "Others"} hold most of the rest. The #{ref :the_dry_war, "Dry War"} follows the surviving rivers.

    #{ref :mercy, "Mercy"} runs the smallest fleet and buys capacity from the others, which is why it has the least to say about siting and the most to say about #{ref :water, "what a district is left"}. #{ref :caretaker, "Caretaker"} has the largest and assigns an advocate to every household upstream of a treatment hall. The #{future "Athabasca cold plant"} is the only site any coalition has abandoned for reasons of water rather than of ground.
  PROSE
end
