resource :gate_moss do
  name "Gate-Moss"
  aka "关苔"
  tags :biotech, :medicine, :symbiosis, :trade
  prominence :recognized

  prose <<~PROSE
    A #{ref :severed_strains, "severed strain"} cultivated by the #{ref :the_gatekeepers, "Gatekeepers"} for one purpose: it turns from grey-green to wet black where it meets living network tissue, in a spreading front, within a quarter-hour. It does nothing else. It cannot signal, cannot repair, and dies within a day of leaving its bed.

    Every crossing between the connected and unconnected worlds runs on plates of it. The Gatekeepers grow all of it themselves and keep it inside the corridor. Control of the moss gives them control of the mark that clears a traveller.
  PROSE

  prose <<~PROSE, section: :how_it_works, heading: "Cultivation"
    Gate-moss grows in fired ceramic beds. At every transfer the Gatekeepers prune it below the mass where a network begins to hold information across itself. After four months they break the bed and fire the pieces.

    Older beds turn black faster but also creep toward the mass the pruning is meant to prevent. The Gatekeepers break them at four months even when the crossings are crowded. Beds pulled early read slowly and produce contested crossings; #{ref :ma_renqing, "Ma Renqing"} rules on those herself.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "Who Objects"
    The #{ref :the_great_root, "Great Root"} regards gate-moss as a mutilated part of itself put to work at a border.

    The #{ref :the_preservationists, "Preservationists"} consider any living organism pressed to a traveller's skin a connection, regardless of what it can do. Their couriers pay for a slower scraping read against reference samples, priced at four times the plate.
  PROSE
end
