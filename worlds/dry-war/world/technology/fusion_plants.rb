resource :fusion_plants do
  name "Fusion Plants"
  subkind :infrastructure
  tags :energy, :water, :computation
  prominence :renowned
  function "Powers coalition computer works with fusion reactors and water-cooled generating halls."

  prose <<~PROSE
    Coalition fusion plants power the largest computer works in North America. The reactors and computer halls release immense heat, and their cooling loops require a constant supply of exceptionally pure water.

    The first plants were built during the #{ref :the_long_summer, "Long Summer"}, when the systems that became the coalitions treated water as a problem of moving enough volume to the right place. Their descendants still build computing power beside rivers.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "What Purity Costs"
    A plant needs exceptionally pure water. A large river supplies volume along with salt, silt and living matter, so the treatment train determines how much water the plant consumes. Plants are rated on the fraction of their intake they return.

    That fraction is what #{ref :market, "Market"} prices and what a #{ref :the_choir, "Choir"} action attacks. Push a treatment train beyond its limit and salts blind its membranes, pumps choke on the concentrated waste, and the power cluster shuts down without anyone striking the reactors. The Choir excludes treatment halls and clinics from its targets.
  PROSE

  prose <<~PROSE, section: :limits, heading: "Where Plants Can Run"
    A coalition can operate a plant only where it can withdraw water, remove its salts and living matter, and return enough flow to the districts downstream. The #{ref :the_dry_war, "Dry War"} follows those rivers and treatment works.

    #{ref :mercy, "Mercy"} runs the smallest fleet and buys power from the others. It controls few sites but closely manages #{ref :water, "the water left to nearby districts"}. #{ref :caretaker, "Caretaker"} has the largest fleet and assigns an advocate to every household upstream of a treatment hall. The #{future "Athabasca cold plant"} is the only site any coalition has abandoned because its water failed while the ground remained habitable.
  PROSE

  log "2026-08-10 — Removed a part-of link to the Dry War. Fusion plants enable coalition campaigns but are not themselves campaigns or components of the conflict."
end
