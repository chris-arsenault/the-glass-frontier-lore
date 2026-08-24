transport :quiet_measure do
  name "Quiet Measure"
  subkind :vessel
  status :complete
  capacity "Eighteen crew, twenty-four rescued passengers, and two disabled-craft tow points"
  tags :transport, :salvage, :orbital, :danger, :resonance
  prominence :recognized

  prose <<~PROSE
    *Quiet Measure* is a rescue tender stationed at #{ref :pell_cut, "Pell Cut"} and maintained by the #{ref :pell_freight_assembly, "Pell Freight Assembly"}. Its long central hull carries a receiving lock at the bow, paired towing forks at the stern, and two pressure-independent treatment rooms between them. Orange shutters divide the interior into short sections. Every handle can be worked from either side.

    The tender serves claim rigs, freight kites, and survey craft working beyond a port's ordinary reach. It launches when a member crew calls for help, when another rescue pool buys coverage for a passage, or when a ship fails to report after accepting an Assembly mark. No one aboard needs to know who will pay before the rescue begins. The argument enters the ledger after the rescued vessel is secured.
  PROSE

  prose <<~PROSE, section: :history, heading: "A Hauler Rebuilt Around Casualties"
    The ship began as a short-haul ore carrier with a single open hold. Pell yards bought the hull after a receiver fire warped its original cargo rails. The scorched space became the main rescue lock. Workers left one blackened frame exposed behind clear sealant because its deformation gives a quick visual check on any new twist in the hull.

    The name predates the conversion. Its former crew used *quiet measure* for a clean cargo reading taken after the pumps stopped. Rescue crews kept the name because they use the same interval before opening a damaged vessel: drives idle, cutters cold, sounders listening for pressure and structural change.

    Ownership sits with the Assembly's common rescue fund. Member yards provide crew by rotation and contribute repairs according to the traffic they place under its coverage. The arrangement gives independent operators a tender none of them could keep ready alone.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Approach and Recovery"
    *Quiet Measure* approaches a casualty on passive instruments until the stricken ship's field pattern is understood. A rigid docking collar would transfer too much load across an unknown hull, so the tender uses two soft capture loops and a telescoping passage. The loops hold position. The passage carries people and equipment without becoming the strongest structural connection between the vessels.

    Rescue workers enter in pairs. One handles pressure and obstruction; the other watches the return path. Colored ties fixed along the passage show which direction leads home when smoke, darkness, or a shifted compartment hides the opening. Casualties enter the forward lock, surrender energized tools, and pass through a sounding frame before reaching treatment.

    The stern forks can hold a disabled craft for a slow tow. Each fork has its own kite field, breaker, and physical release. A vessel whose drive begins answering the tender can be dropped without sacrificing the other connection. Crews practice the release with weighted hulks near Pell Cut.
  PROSE

  prose <<~PROSE, section: :dangers, heading: "What Comes Aboard"
    A rescue tender accepts hazards that another crew has already failed to contain. Damaged ringglass may answer the tender's drive. Remote-cut cargo may carry a cutter wake. A frightened Tuner can keep sounding a compartment after being told to stop. The ship's treatment rooms therefore have separate air, clocks, and power, while the receiving lock can vent into a sacrificial capture bladder.

    The most difficult rescue is a vessel whose crew reports an ordinary mechanical failure while its hull gives a coherent return from somewhere else. *Quiet Measure* does not dock to such a ship. It sends a line, receives people one at a time, and leaves cargo behind. Several captains have objected from the safe side of the passage. The rescue lead's authority over the tender is absolute until separation.

    Nothing recovered from a casualty enters the clean lockers during the same voyage. Personal bags, tools, samples, and sealed cases remain tagged in the forward hold. Owners can reclaim them after Pell Cut sounds the lot.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Pell Watch"
    *Quiet Measure* currently covers the conditional branches around Pell and the outer approaches to Karet-3. Its route board lists which corridors have paid coverage, which the Assembly accepts under reciprocity, and which lie beyond the tender's declared reserve. Crews outside the list still call it when no other ship answers.

    A new distress pattern has appeared twice beyond the closed Pell array: three short carrier pulses followed by the tender's own acknowledgment tone. *Quiet Measure* did not transmit the acknowledgments recorded by the yard. The next patrol carries an isolated receiver to determine whether an old beacon, a damaged ship, or the sealed array is repeating the exchange.
  PROSE

  gm_note :appears, "The tender launches on a member crew calling, on coverage another rescue pool has bought, or on a ship failing to report after taking an Assembly mark. " \
                    "Who pays enters the ledger after the casualty is secured, so it arrives before the question is settled."
  gm_note :complicates, "Everything brought off a casualty is tagged into the forward hold for the voyage, energized tools included, and owners get it back only after Pell Cut sounds the lot. " \
                        "Rescued crews discover this at the receiving lock with the sounding frame in front of them."
  gm_note :triggered_by, "When a stricken hull gives a coherent return from somewhere else, the tender will not dock: a line goes across, people come over one at a time, and cargo stays. " \
                         "The rescue lead has final authority until separation, and captains have argued it from the far end of the passage."
end

relate :rel_pell_assembly_maintains_quiet_measure, :maintains, :pell_freight_assembly, :quiet_measure do
  prose "The Assembly's common rescue fund keeps *Quiet Measure* crewed and ready at Pell Cut."
end
relate :rel_quiet_measure_operates_pell_cut, :operates_in, :quiet_measure, :pell_cut do
  prose "*Quiet Measure* covers claim routes and conditional corridors from its berth at #{ref :pell_cut, "Pell Cut"}."
end
relate :rel_quiet_measure_depends_claim_rigs, :depends_on, :quiet_measure, :claim_rig do
  prose "The tender's locks and treatment rooms follow the isolated layout developed for claim rigs."
end
relate :rel_quiet_measure_active_corridor_disputes, :active_during, :quiet_measure, :the_corridor_disputes do
  prose "Its coverage board has become evidence in disputes over which routes carry a real rescue service."
end
