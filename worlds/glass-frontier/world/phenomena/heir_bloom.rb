phenomenon :heir_bloom do
  name "The Heir Bloom"
  summary "The Heir Bloom grows branching signal paths through an overworked network and transfers its entire living pattern to any formally designated successor."
  type_of :signal_overgrowth
  subkind :physical_phenomenon
  status :complete
  tags :resonance, :"signal-freq", :navigation, :governance
  prominence :recognized
  trigger "A signal network carries more simultaneous purposes than its route structure can resolve"
  effect "Luminous branches grow through every available signal path, duplicating access and unresolved instructions until the whole bloom transfers to the successor"
  recurrence "The bloom never divides; each succession kills every old branch and recreates the complete pattern around the new bearer, office, vessel, or system"
  ending "It becomes dormant when no valid successor exists and no part of the current network can issue a recognized designation"
  mitigation "Restrict designation authority, isolate unused channels, or name a prepared empty system as successor before the active network is overwhelmed"
  anchor_behavior "Attaches to formally recognized succession rather than hardware, moving whole across incompatible machines and jurisdictions"
  medium "Signal networks, command protocols, route beacons, and formal succession records"
  hazard "The bloom grants access faster than its bearer can understand it and carries every unresolved command into the successor's systems"

  descriptive_identity(
    signs: "Luminous branching paths appear across signal glass, old instructions answer from new channels, and every branch dies at once when a successor is named.",
    effects: "The bloom creates new signal routes around every conflict until formal succession transfers the complete route pattern and its unresolved traffic to a new host.",
    hazards: "The successor inherits working access to systems they do not understand, contradictory orders still seeking completion, and attention from every party that used the former network."
  )

  prose <<~PROSE
    The Heir Bloom first appears as a luminous fork where one signal should be. Each unresolved demand grows another path. Locked controls answer through maintenance channels. Old route beacons begin carrying private traffic. A command refused by one machine arrives at three others as if all three had always held the authority to obey it.

    The bloom is one continuing pattern rather than an infection copied between networks. At succession, every old branch goes dark in the same instant and the whole arrangement unfolds around the named heir. Branch count, unresolved instructions, and access state transfer intact even when the new host uses different machines.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Inheritance at Hinge Six"
    #{ref :hinge_six, "Hinge Six"} keeps a blank signal frame outside its route authority for the sole purpose of inheritance. When the station's branches multiply faster than controllers can trace them, the frame is formally designated successor. The bloom moves into it, carrying every unresolved route request, disputed command, and unauthorized opening, and can be disconnected before those instructions find working machinery.

    Designation is also a weapon. A hostile vessel recognized as successor inherits the bloom's access and confusion. A trapped crew can name a portable frame and carry every open path out with them. The danger lies in the inheritance that seemed useful: control of a sealed door may arrive beside dormant weapons, unpaid obligations, and commands whose issuers are still waiting for an answer.
  PROSE

  gm_note :triggered_by, "Naming a successor moves every illicit route and unresolved command into that person, vessel, office, or machine at once; the old network becomes clean and the heir becomes dangerously capable."
end

relate :rel_heir_bloom_manifests_hinge_six, :manifests_at, :heir_bloom, :hinge_six
