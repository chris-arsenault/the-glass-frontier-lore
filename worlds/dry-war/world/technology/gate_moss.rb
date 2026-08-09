resource :gate_moss do
  name "Gate-Moss"
  aka "关苔"
  tags :biotech, :medicine, :symbiosis, :trade
  prominence :recognized

  prose <<~PROSE
    A #{ref :severed_strains, "severed strain"} cultivated by the #{ref :the_gatekeepers, "Gatekeepers"} for one purpose: it turns from grey-green to wet black where it meets living network tissue, in a spreading front, within a quarter-hour. It does nothing else. It cannot signal, cannot repair, and dies within a day of leaving its bed.

    Every crossing between the connected and unconnected worlds runs on plates of it. The Gatekeepers grow all of it themselves and sell none, and the refusal is a matter of policy rather than capacity.
  PROSE

  prose <<~PROSE, section: :how_it_works, heading: "Cultivation"
    Fired ceramic beds, four months to a bed, then broken and replaced. The strain is pruned at every transfer to keep any single bed under the mass where a network begins to hold information across it, and the transfer records go into the same case room as the fee trays.

    A bed that has been allowed to run long produces faster, sharper readings, which is the recurring temptation and the reason the four-month cycle is a rule rather than a guideline. Beds pulled early read slowly and produce contested cards; #{ref :ma_renqing, "Ma Renqing"} rules on those herself.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "Who Objects"
    The #{ref :the_great_root, "Great Root"} regards gate-moss as a mutilated part of itself put to work at a border, and has never issued anything a person could call an objection.

    The #{ref :the_preservationists, "Preservationists"} object at length and in writing. Their position is that a living organism pressed to a traveller's skin is a connection regardless of what the organism can do, and their couriers pay a surcharge for the alternative — a scraping read against reference cards, slower and less certain, which the schedule prices at four times the plate.
  PROSE
end
