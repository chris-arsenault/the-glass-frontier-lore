phenomenon :spanning_fall do
  name "The Spanning Fall"
  summary "The Spanning Fall is a distributed set of frictionless patches that drives an entire mass along one vector when the patches connect edge to edge."
  type_of :linked_slip
  subkind :physical_phenomenon
  status :complete
  tags :resonance, :orbital, :danger, :salvage
  prominence :recognized
  trigger "Separate slick patches form one continuous path between two free edges of the same connected mass"
  effect "The whole mass loses resistance to one fixed direction and accelerates along it regardless of braces, traction, or local gravity"
  recurrence "Patches throughout the Shear share one acceleration vector and answer one another with a sharp double vibration when joined"
  ending "The fall stops only when the spanning path is broken, the moving mass separates around it, or the mass leaves the active field"
  mitigation "Map and isolate every patch, preserve an untreated gap between free edges, or cut away the spanned section before connection completes"
  anchor_behavior "Individual patches remain fixed to load-bearing surfaces and transfer to the largest surviving fragment when a spanned mass breaks"
  medium "Rock, hulls, roads, decks, structural glass, and other connected load-bearing surfaces"
  hazard "A harmless set of isolated slicks can abruptly move a fortress, asteroid, vessel, or inhabited deck as one falling body"

  descriptive_identity(
    signs: "Scattered surfaces become perfectly slick along one direction and produce a sharp double vibration whenever two patches connect.",
    effects: "Once a continuous path reaches between two free edges, the complete connected mass accelerates along the shared vector as if every support had become a slope.",
    hazards: "Anchors, foundations, and internal braces move with the mass rather than resisting it, while breaking the path may split occupied structure under acceleration."
  )

  prose <<~PROSE
    The first patches of the Spanning Fall are inconvenient and often small. A boot slips in one direction and grips in every other. A crate moves across a deck only when pushed toward a particular wall. Separate patches can remain unchanged for weeks.

    The fall begins when those patches join in one continuous path between two free edges of the same mass. A deck, vessel, fortress, or asteroid then accelerates along the direction shared by every patch. Foundations and anchors travel with it. In open space the name remains accurate: the mass chooses a down that the surrounding orbit does not share.
  PROSE
  prose <<~PROSE, section: :applications, heading: "Completing the Span"
    Shear crews mark each patch and cut an untreated gap around it. If the gap closes, the only reliable stop is to break the spanning path or separate the moving mass around it. Both acts are harder after acceleration begins.

    The same threshold makes the phenomenon a weapon. One narrow strip can complete a path across an enemy hull and throw the whole vessel from formation. A trapped settlement can cut away the affected district and let it fall clear. Salvagers can move a debris body too large for their engines, provided they know where its new down will carry it and can break the path before it strikes what they came to recover.
  PROSE

  gm_note :triggered_by, "Joining two harmless slick patches completes an edge-to-edge path and sends the entire connected mass falling along their shared direction, supports and occupants included."
end

relate :rel_spanning_fall_manifests_shear, :manifests_at, :spanning_fall, :the_shear
