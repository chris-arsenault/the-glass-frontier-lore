transport :claim_rig do
  name "Claim Rig"
  subkind :vessel
  status :complete
  capacity "Three to twelve crew, one to four remote cutters, and isolated receiving rooms"
  tags :transport, :salvage, :resonance, :orbital, :danger, :trade
  prominence :recognized

  prose <<~PROSE
    A claim rig is a salvage vessel built to receive material from unstable debris without bringing its crew alongside the claim. It carries one or more unmanned cutters, a separate receiver for each cutter, and enough processing rooms to decide what has come back before opening it to the rest of the ship. #{ref :ratters, "Ratters"} call almost every vessel they fly a skiff. A claim rig is the kind of skiff whose interior is arranged around doors that may need to close quickly.

    Some rigs began as cargo craft, survey hulls, or old passenger kites. Others were built for remote work. Their outward forms vary. The repeated features are visible inside: short passages, heavy shutters, cleanable walls, exposed manual breakers, and instrument runs that do not share a clock.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "The Receiving Side"
    A cutter couples a selected seam to the rig through #{ref :remote_cutting, "remote cutting"}. The returned material enters an outer bay lined with replaceable plates. Loose dust settles first. Mechanical screens separate large stock from fragments that could reach a valve or door track. A second room receives useful material only after the outer bay has been sounded, sampled, and brought inside the rig's pressure limits.

    Each active cutter has its own receiver, clock, power break, and record. Painted routes on the deck show which controls belong together. The separation consumes space and cable, yet it prevents one coherent return from using the ship itself as a path into another claim. Crews adopted the layout after #{ref :pell_four, "Pell Four"}; shared clocks disappeared from licensed rigs within a season.

    The shutters can be driven from the bridge and released by hand beside each opening. The hand wheel is slow because speed matters less than certainty after the powered system has given a false safe reading. A closed room carries a physical tally outside it: pressure, heat, field response, last entry, and the name of the person who may reopen it.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Working a Claim"
    A rig approaches only close enough to maintain a clear cutter path. The crew maps local debris, places retreat marks, and sounds the receiving rooms before launching anything. A Tuner chooses the seam response. A cutter operator flies the machine in, fixes the anchor head, and confirms that every return path ends in the intended bay. Nobody starts the tone until the deck lead reads back the room state.

    Once material begins arriving, the vessel handles heat, pressure, waste, and resonance load that the claim no longer carries. The pilot keeps the rig oriented while the receiving crew trims the flow. A good cut looks uneventful from the bridge and exhausting in the process rooms. The most valuable stock may arrive in minutes; cooling, separation, and cleaning can occupy the rest of the watch.

    Crews treat cutters as expendable and protect the route home before the machine. A rig that drops a receiver, shears its cutter line, and leaves with empty holds may still have completed the job correctly.
  PROSE

  prose <<~PROSE, section: :dangers, heading: "Cutter Wakes"
    Remote returns sometimes carry living things. Deckmouths arrive in trapped pressure. Flintjacks follow active current. Small shear-jellies cling to loose material and open when the receiving atmosphere thickens. Crews call the intrusion a cutter wake and train for it as part of ordinary remote work.

    The first response is to close the room and turn off every tone beyond it. Barriers and tuned deck weapons remain inside the bay so nobody has to carry equipment through the threatened door. A wake becomes difficult when a beast crosses into a shared service passage or when an operator keeps a downstream machine active. The intruder follows the strongest useful signal, which is often the equipment the crew most wants to save.

    Older rigs are judged by how well they were rebuilt after wakes. Scrape marks around a shutter, mismatched wall plates, and a breaker moved within easier reach carry more information than a clean sales record.
  PROSE

  prose <<~PROSE, section: :people, heading: "A Small Working Vessel"
    A two-cutter rig usually carries a pilot, cutter operator, Tuner, deck lead, and two or three process hands. On a small crew those jobs overlap until the first live return, when every person must remain at one station. Larger rigs add repair staff and separate watches rather than placing more people in the receiving line.

    The crew lives close to the work. Cabins occupy the clean end of the hull beyond the bridge, with the galley and air plant between habitation and processing. Boots, tools, and outer clothing do not cross that division until they have been washed and sounded. A crew that relaxes the rule soon learns why the previous owners wrote it on the door.

    Independent crews own many rigs outright or owe on them through a broker, yard, or flotilla debt. The #{ref :pell_freight_assembly, "Pell Freight Assembly"} maintains shared receivers and finances rebuilds for its members. A rig remains its crew's vessel under those arrangements. The Assembly can deny a berth to unsafe work; it does not take the helm.
  PROSE

  gm_note :appears, "Buyers, hirers, and berth masters read a rig's history off its repairs. Scrape marks around a shutter, mismatched wall plates, and a breaker moved within easier reach carry more about what the vessel has survived than its sales record does."
  gm_note :triggered_by, "Someone asks the bridge whether a closed receiving room is safe to open. The whole layout exists because a powered system once read safe when it was not, so the answer is a person standing at the opening with a deliberately slow hand wheel and the tally beside it."
  gm_note :complicates, "Jobs overlap freely on a small rig until the first live return, and then pilot, cutter operator, Tuner, deck lead, and process hands are each fixed to one station. Anything needing a spare pair of hands while the tone runs costs whichever station is left empty."
end

relate :rel_claim_rig_depends_remote_cutting, :depends_on, :claim_rig, :remote_cutting do
  prose "The receiving rooms and cutter cradles of a #{ref :claim_rig, "claim rig"} are built around #{ref :remote_cutting, "remote cutting"}."
end
relate :rel_claim_rig_operates_deep_shear, :operates_in, :claim_rig, :deep_shear do
  prose "Claim rigs work the unstable seams of the #{ref :deep_shear, "Deep Shear"} from stand-off range."
end
relate :rel_ratters_designed_claim_rig, :designed, :ratters, :claim_rig do
  prose "Ratter crews turned skiffs and cargo hulls into the first claim rigs, then kept revising the receiving rooms after each recorded failure."
end
relate :rel_pell_assembly_maintains_claim_rigs, :maintains, :pell_freight_assembly, :claim_rig, since: 2416 do
  prose "Assembly yards maintain member claim rigs and the isolated receivers required after Pell."
end
relate :rel_claim_rig_resonates_farborn, :resonates_with, :claim_rig, :farborn do
  prose "A claim rig's return tone can draw small Farborn into its outer bay."
end
