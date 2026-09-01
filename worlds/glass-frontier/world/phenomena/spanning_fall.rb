phenomenon :spanning_fall do
  name "Spanning Fall"
  aka "The Spanning Fall"
  summary "Spanning Fall is the distributed directional-slip field tracked through the Shear, where scattered patches share one vector and send an entire connected mass falling when they join free edge to free edge."
  type_of :linked_slip
  subkind :physical_phenomenon
  status :complete
  tags :resonance, :orbital, :danger, :salvage
  prominence :recognized
  trigger "Directional-slip patches form one continuous route between two free edges of the same connected load-bearing mass"
  effect "The complete mass accelerates along the vector shared by the patches, carrying foundations, braces, anchors, cargo, and occupants with it"
  recurrence "Patches across the Shear retain one acceleration vector and answer with the same sharp double vibration whenever two boundaries join"
  ending "The acceleration stops when the spanning route is broken, the mass separates around it, or the surviving fragment leaves the active field"
  mitigation "Map and isolate each patch, preserve an untreated break between every pair of free edges, or cut away the affected section before the route closes"
  anchor_behavior "Each patch remains fixed to its load-bearing surface; when a spanned mass breaks, the active pattern follows the largest surviving fragment"
  medium "Rock, hulls, roads, decks, structural glass, and other connected load-bearing surfaces in the Shear"
  hazard "Several small worksite slicks can close into one route and abruptly move a rig, vessel, inhabited deck, or debris body as a single falling mass"

  descriptive_identity(
    signs: "A test block grips in three directions and runs freely in the fourth; separate slicks answer with a sharp double vibration when their marked boundaries meet.",
    effects: "An edge-to-edge chain makes the entire connected mass accelerate along the shared vector, carrying every support and anchor with it.",
    hazards: "The first stable resistance may be another vessel or debris body, and breaking the chain under acceleration can divide an occupied structure around its people."
  )

  prose <<~PROSE
    Shear crews call the field Spanning Fall after the condition that makes it move a claim. Its first patches are often hand-sized. A boot slips toward one wall and grips in every other direction. A tethered test block runs freely along the same vector. Separate patches can remain unchanged for weeks while a crew works around them.

    Two boundaries touching produce a sharp double vibration through both surfaces. When joined patches complete a route between free edges, the deck, vessel, rig, or debris body accelerates along their shared direction. Foundations and anchors travel with it. The distributed vector and answering vibration identify the same field across claims separated by open Shear.
  PROSE
  prose <<~PROSE, section: :operations, heading: "The Untreated Break"
    A claim crew tests every new slick with a block on a line, paints its boundary and direction, and copies it onto the shift map. The map matters less for the area covered than for the routes between free edges. Crews cut or plate an untreated break across every possible chain and inspect those breaks after drilling, cargo moves, or structural cracks change the surface.

    Once the double vibration runs uninterrupted from edge to edge, the crew must break the route or separate the moving mass around it. Internal braces cannot hold the claim in place because they accelerate with it. If the mass divides, the surviving field settles on the largest fragment, carrying its remaining patches onward.
  PROSE
  prose <<~PROSE, section: :applications, heading: "Moving the Claim"
    Salvagers sometimes complete a mapped route deliberately to move a debris body too large for their drives. Their recovery plan begins at the destination: another body, a prepared catch field, or open distance along the shared vector. A cut team rides beside the last joining strip and breaks it before the claim reaches what the crew came to recover.

    The threshold also permits violence. One narrow strip can complete a route across an enemy hull and throw the vessel from formation. An occupied structure can cut away its affected district and let that section fall clear, preserving the remainder at the cost of everyone and everything still across the cut.
  PROSE

  gm_note :triggered_by, "Joining two marked slicks can complete the free-edge route and send the entire connected mass falling along their shared vector, including anchors, supports, cargo, and occupants."
end

relate :rel_spanning_fall_manifests_shear, :manifests_at, :spanning_fall, :the_shear
