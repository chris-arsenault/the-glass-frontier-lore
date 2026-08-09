installation :conowingo_sluice_yard do
  name "The Conowingo Sluice Yard"
  tags :trade, :identity, :water, :energy
  prominence :marginal

  prose <<~PROSE
    The work yard below Conowingo dam on the lower Susquehanna, open from the first low water in July until the ice. Sediment barges lie along the inner wall, trash-rack teeth stand in bundles beside the crane track and the intake galleries open behind steel doors wet with spray.

    Between three and four hundred people work here in a season. Roughly a third appear in no other Market record. Gang bosses bring a crew name, a body count and whatever tools the work requires; the yard counts who enters and pays for the completed job under the crew name.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Chalk Board"
    A plank office stands at the head of the yard with a serving window and a chalk board visible from the barges. Rates change while crews are working, but a crew that enters in the morning keeps the figure that stood beside its job at first bell. Photographs of the board settle the only number in the yard that almost nobody disputes.

    The hard dispute begins after the work. Market receives the full price. A worker with a recognized identity is paid after registered dependents. An unregistered crew may direct up to two-fifths to a parent, child, sibling or grandparent at a standing address; the rest stays in reserve with no recognized person able to receive it.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Long Grass"
    Travelling #{ref :the_pilgrims, "Pilgrim"} groups use the yard because it hires bodies under a temporary crew name. In 2089 Market raised the gallery rate before Long Grass returned, using the fixed addresses and payment days of four relatives named the previous season to predict when travelling crews would reach the corridor.

    Long Grass had chosen the crossing by dice. They took the work anyway. See #{ref :the_long_grass_return, "the Long Grass Return"}.
  PROSE

  log "2026-08-09 — Replaced the Engagement Counter with the sluice yard it served. Sediment is the yard's standing work because the reservoir behind the dam filled with it; low water sets the season, and the work explains why crews are hired by number."
end
