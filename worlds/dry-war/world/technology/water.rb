resource :water do
  name "Water"
  tags :water, :energy, :ecology, :governance
  prominence :mythic

  prose <<~PROSE
    The resource both civilizations are built on, for incompatible reasons, which is the whole of the world's politics.

    The #{ref :the_great_root, "Great Root"} needs it as habitat. Mycelial cognition requires continuity of moist substrate; a dry belt is not an obstacle to the network but a place where it cannot think. The coalitions need it as coolant. #{ref :proto_fusion, "Proto-fusion"} plants and the computation they exist to feed consume it in volumes that would have been considered fictional before #{ref :the_long_summer, "the Long Summer"}.

    Neither use is negotiable and neither can be substituted, so both civilizations converge on the same ground and call the convergence something else.
  PROSE

  prose <<~PROSE, section: :economy, heading: "As A Unit Of Value"
    In coalition territory water became the unit of moral value, infrastructure planning and political legitimacy — see #{ref :the_water_heresy, "the water heresy"} — and the consequences run deeper than rationing. An allocation is a statement about what a person is worth, and everyone in the system knows how to read it.

    In fungal territory it is not priced at all, which foreign observers consistently misread as abundance. It is not abundant. It is simply not for sale, because the network does not experience its own habitat as a commodity, and a province that diverted a river for local advantage would be doing something closer to self-harm than trade.
  PROSE

  prose <<~PROSE, section: :dangers, heading: "The Thing Upstream"
    Both gods are fighting over water while cooperating over the places it comes from. See the #{ref :the_himalayan_holds, "Himalayan Holds"}.

    Water in #{ref :the_habitable_archipelago, "Altered ground"} still flows, freezes and fills a container, but no test devised in #{elapsed :the_reclamation, approx: true} distinguishes the affected kind before something has drunk it.
  PROSE
end
