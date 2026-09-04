phenomenon :heir_bloom do
  name "The Heir Bloom"
  summary "The Heir Bloom is the singular signal overgrowth recorded at Hinge Six: conflicting demands make it branch through unintended channels, and a succession accepted by the active network transfers the complete pattern to its heir."
  type_of :signal_growth
  subkind :physical_phenomenon
  status :complete
  tags :resonance, :"signal-freq", :navigation, :governance
  prominence :recognized
  trigger "A signal network must reconcile simultaneous route, command, or custody demands that its existing paths cannot carry together"
  effect "Each unresolved instruction opens a luminous branch through another authorized channel; an accepted succession recreates every branch, access state, and queued instruction on the heir"
  recurrence "The bloom never buds or divides; at succession every old branch dies in the same instant and the complete current pattern appears around one accepted heir"
  ending "The pattern becomes dormant when the active host recognizes no successor and retains no authority path able to designate one"
  mitigation "Restrict designation authority, isolate unused channels, or transfer the bloom to a prepared empty frame before its branches reach working machinery"
  anchor_behavior "Follows the host's recognized transfer of authority rather than its hardware, carrying one continuous pattern across machines, offices, vessels, and jurisdictions"
  medium "Signal networks, route beacons, command channels, access records, and succession protocols"
  content "The branch topology, access state, and unresolved instructions accumulated by every host in the current succession"
  hazard "An heir receives working access before they can trace it, along with contradictory commands and obligations still seeking completion"

  descriptive_identity(
    signs: "One instruction lights several branching paths across signal glass; locked controls answer through maintenance channels, and a transfer extinguishes every old branch on the same clock beat.",
    effects: "Unresolved demands keep opening authorized paths until the active network accepts a succession and recreates the complete branch ledger around the heir.",
    hazards: "The heir acquires illicit access, contradictory orders, unpaid obligations, and callers who still expect the former network to answer."
  )

  prose <<~PROSE
    The route keepers at #{ref :hinge_six, "Hinge Six"} call it the Heir Bloom because every unresolved demand opens another luminous fork and the entire growth passes to a recognized heir. Locked controls begin answering through maintenance channels. Old route beacons carry private traffic. A command refused by one machine reaches three others through authority each machine already possesses.

    Every confirmed transfer preserves the order of the forks, their access state, and the queue of instructions that produced them. The old branches go dark on one clock beat; the heir's frame reproduces their order on the next. This continuity holds across replaced machinery and disputed jurisdictions. The records establish what the bloom accepts operationally: the current host must register the handover through an authority path it already uses. Later legal objections do not draw the pattern back.
  PROSE
  prose <<~PROSE, section: :operations, heading: "The Empty Frame"
    Hinge Six keeps a blank signal frame outside its route authority for the sole purpose of inheritance. Each watch maintains a branch ledger beside it, marking the instruction behind every new fork and the channel through which that fork found access. When new branches multiply faster than the watch can trace them, the route room designates the empty frame through the same marked authority used for an ordinary handover.

    The transfer clears the live route network and moves every unresolved request, disputed command, and unauthorized opening into the empty frame. Keepers disconnect it before those instructions find machinery, then read the inherited queue against the branch ledger. Restricting designation marks and isolating idle channels slows the next growth; it does not erase commands already carried into the bloom.

    A trapped crew can carry every open path into a portable frame. A hostile vessel accepted as successor inherits useful access and the entire unresolved queue beside it: a sealed door may arrive with dormant weapons, unpaid obligations, and callers still waiting for the former host to answer.
  PROSE

  gm_note :triggered_by, "A handover accepted by the active network extinguishes every branch there and recreates the complete bloom on the heir, including illicit access and every unresolved command."
end

relate :rel_heir_bloom_manifests_hinge_six, :manifests_at, :heir_bloom, :hinge_six
