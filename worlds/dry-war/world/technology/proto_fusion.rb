resource :proto_fusion do
  name "Proto-Fusion"
  tags :energy, :water, :computation
  prominence :renowned

  prose <<~PROSE
    Fusion-adjacent plant delivering extreme energy density and requiring, in exchange, substantial cooling infrastructure and exceptionally pure water. It is the reason the coalitions can compute at the scale they do, and the reason they cannot stop needing rivers.

    The dependence is not a design flaw anyone failed to notice. It was accepted, deliberately, during the #{ref :the_long_summer, "Long Summer"}, by systems that had concluded water was a solvable logistics problem — the same conclusion that became #{ref :the_water_heresy, "the water heresy"}.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "What Purity Costs"
    The demanding requirement is not volume but purity, and the two pull against each other: a plant sited on abundant water is sited on water carrying everything that makes it abundant. So a plant's real works are its treatment train, its consumption is what the train rejects, and a plant is rated on the fraction of intake it returns rather than on what it draws.

    That fraction is what a #{ref :market, "Market"} ration schedule prices and what a #{ref :the_choir, "Choir"} action attacks: a plant made to lower its reject fraction runs its train harder, and a train run harder fails in a way that takes the cluster off before anybody has to touch the cluster. The Choir will not touch a treatment hall directly, on the same grounds it will not touch a clinic, and #{ref :the_liangzhou_double_return, "the Liangzhou double return"} is what happened when a Gobi plant's rejected flow was sold twice.
  PROSE

  prose <<~PROSE, section: :limits, heading: "Where The Plants Cannot Go"
    Every remaining plant sits inside the habitable archipelago, which is the constraint that makes the #{ref :the_dry_war, "Dry War"} a war rather than an argument: the coalitions cannot build toward water they cannot hold, and the #{ref :the_others, "Others"} hold most of the rest.

    #{ref :mercy, "Mercy"} runs the smallest fleet and buys capacity from the others, which is why it has the least to say about siting and the most to say about #{ref :water, "what a district is left"}. #{ref :caretaker, "Caretaker"} has the largest and treats a plant's catchment as a population under its care, extending #{ref :guardianship, "guardianship"} to everybody living upstream of a treatment hall. The #{future "Athabasca cold plant"} is the only site any coalition has abandoned for reasons of water rather than of ground.
  PROSE
end
