concept :sterile_machines do
  name "Sterile Machines"
  subkind :technology
  tags :resistance, :biotech
  prominence :recognized
  form "Electronics and mechanisms built from copper, fired ceramic, ultraviolet lamps, dry salt and heat-tolerant parts"
  function "Provides computation and mechanical work without giving living fungus a sheltered surface"
  operating_limit "Runs hot, wears quickly and must come apart so every piece can be baked or inspected"
  deployment "Built in dry settlements and sold at a premium to Mediterranean enclaves"
  legal_status "Preferred wherever living infrastructure could carry an unwanted fungal connection"
  custom_fact :serviceability, "Fasteners, housings and wiring remain exposed enough for repeated disassembly", label: "Serviceability"

  prose <<~PROSE
    Chinese resistance workshops build machines on which fungus has little to hold. Electronics run hot. Surfaces are copper and fired ceramic; cavities shine with ultraviolet light; bearings stay dry and salt moves through the cooling channels. Every piece comes apart for the oven.

    The rooms smell of hot salt and glaze. A #{ref :the_joined, "Joined"} visitor enters with no friendly growth in the walls, clothing or tools and often leaves quickly. Resistance engineers find the bare steel reassuring.
  PROSE

  prose <<~PROSE, section: :trade, heading: "The Export Trade"
    The largest customers for this work are the #{ref :the_mediterranean_chain, "Mediterranean"} enclaves, whose seawalls, gates, pumps and reef anchors stand in warm water that will grow anything. Their wet machinery is checked four times a year and sent to an oven whenever anchored growth takes hold.

    Anything that cannot be taken apart into bakeable pieces stays outside the wall. The enclaves buy from shops already building for the oven: dry bearings, open voids, fired glaze and no seated gasket anywhere in the assembly. They pay a premium for a maker who names what is inside every housing. The same shops cast the enclaves' #{ref :comparison_tiles, "tile sets"}, ten graded surfaces in a copper case that doubles as its own bake box.

    Gate crews in three of the four enclaves that use the #{ref :kalkara_bake_shed, "Kalkara shed"} avoid Chinese goods when they can. They still buy these machines because Kalkara's scrap heap shows which housings trapped living growth and failed the oven.
  PROSE
end
