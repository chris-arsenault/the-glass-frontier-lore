faction :ring_collective do
  name "Ring Collective"
  summary "The Ring Collective is the standing assembly through which connected ring habitats present common positions without surrendering local law."
  subkind :civic_body
  status :complete
  tags :"ring-hab", :governance, :diplomacy, :trade
  prominence :recognized
  founded 2318
  mandate "Represent connected ring habitats in shared route, salvage, and sovereignty matters"
  omit_facts :leaders, :predecessors

  prose <<~PROSE
    The Ring Collective is the standing assembly through which connected ring habitats present common positions to surface governments, carriers, and the #{ref :tempered_accord, "Tempered Accord"}. It does not govern its members. Each hab keeps its own law and may reject a Collective resolution.

    Membership belongs to the habitat rather than its government. A hab sends one delegation under whatever local process it recognizes. Fermata's delegation receives instructions from a Session; Hab Meridian's is appointed through its civic offices. The Collective records both as one member and does not decide which procedure is more legitimate.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Delegations"
    Delegations meet at #{ref :hab_meridian, "Hab Meridian"}, whose relays can reach the largest number of member routes without passing through a surface capital. Each hab has one voice on sovereignty and contact. Freight and maintenance measures use declared population and traffic bands, so a major port carries more weight when it accepts more work.

    The two methods produce different coalitions. Small habs can block a contact rule they consider dangerous. Large ports can refuse a maintenance schedule they would have to fund. Most resolutions therefore pair a common minimum with voluntary service agreements among the members that need more.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Shared Work"
    The Collective maintains the register of habs that accept contact, those that require advance terms, and those that have withdrawn. It publishes compatible docking seals, quarantine notices, and route closures. It also appoints ring-hab delegates to Accord panels when a dispute affects habitats that are not direct parties.

    Shuttered habs are not members. The Collective records their last known contact rule and will relay a message if a recognized channel exists. It claims no right to open a hatch, inspect an interior, or recognize a replacement delegation sent by outsiders.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "Ports and Small Habs"
    Hab Meridian and other large ports provide most of the relay time, meeting space, and clerical staff. Smaller members argue that this makes a nominally equal assembly dependent on places whose economies benefit from every route it standardizes.

    The current dispute concerns emergency docking. Ports want authority to redirect a damaged vessel to any member with a compatible seal. Small habs insist that a receiving habitat must consent before the route notice goes out, even when delay leaves a ship under failing pressure.
  PROSE

  gm_note :appears, "An approach to any ring hab is checked against the Collective's register, which records who accepts contact, who requires terms agreed in advance, and who has withdrawn, alongside compatible docking seals, quarantine notices, and current route closures."
  gm_note :triggered_by, "Asking the Collective to make a member do something produces a resolution at most. Each hab keeps its own law and may reject one, and the assembly claims no right to open a hatch, inspect an interior, or seat a delegation outsiders have sent."
  gm_note :complicates, "A damaged vessel looking for a berth lands in the assembly's open dispute: large ports want authority to redirect it to any member with a compatible seal, small habs require the receiving hab's consent first, and the route notice waits on that argument."
end

relate :rel_ring_collective_headquartered_hab_meridian, :headquartered_in, :ring_collective, :hab_meridian, since: 2318 do
  prose "The Collective keeps its delegation rooms and route register at Hab Meridian."
end
relate :rel_ring_collective_cooperates_tempered_accord, :cooperates_with, :ring_collective, :tempered_accord, since: 2423 do
  prose "The Collective appoints ring-hab delegations to Accord panels and carries adopted standards back to its members."
end
relate :rel_fermata_member_ring_collective, :member_of, :fermata_station, :ring_collective do
  prose "Fermata sends a delegation instructed through its governing Sessions."
end
relate :rel_hab_meridian_member_ring_collective, :member_of, :hab_meridian, :ring_collective do
  prose "Hab Meridian is a member and hosts the Collective's standing rooms without governing the assembly."
end
