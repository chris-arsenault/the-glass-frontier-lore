installation :pyre do
  name "Pyre"
  path "player/locations/landmarks/pyre.md"
  tags :orbital, :salvage, :danger, :resonance
  prominence :recognized

  prose <<~PROSE
    The ruin of a #{ref :coremark, "Coremark"} ringglass refinery in the mid-drift #{ref :the_shear, "Shear"}, and the origin point of the #{future "Silent Bloom"} resonance cascade. Pyre sits inside a #{future "Bloom Zone"} now — one of the worst ones. Space is badly warped. The refinery's structure is still recognizable from outside the containment cordon, but what's inside doesn't follow consistent geometry anymore.
  PROSE
  prose <<~PROSE, section: :origin, heading: "Origin"
    Pyre was a mid-drift extraction and processing facility — part of Coremark's expansion beyond their deep Shear niche during the 2340s–2350s. The refinery processed raw ringglass from the surrounding debris field, cutting and tuning aggregate into refined product on-site. At its peak it was one of the highest-throughput refineries in the Shear.

    The facility operated in an environment that was already stressed. Decades of unrestrained harvesting had depleted the ambient resonance ecology of the surrounding region. The nearby #{future "Span replication experiment"} had fractured local space. Pyre's ringglass arrays were running at capacity in a medium that nobody recognized was already past its limits.

    The overload wasn't a single dramatic failure. It was a cascade of small negligences: a culture of complacency, safety margins treated as bureaucratic obstacles, readings that looked like normal fluctuation because the operators had seen similar readings before and nothing happened. The resonance ecology was a system running without supervision — the elves who designed it were gone, the knowledge that would have identified the precursors was gone, and the indicators that would have screamed "cascade imminent" to an elven engineer looked like noise to everyone else.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Pyre is one of the most dangerous and valuable sites in the system. The Bloom Zone that formed around it contains some of the most severe reality distortion anywhere in Kaleidos orbit — spatial relationships are unreliable, resonance frequencies stack in unpredictable ways, and the boundary between the zone and normal space requires constant #{ref :displacement_council, "Displacement Council"} containment.

    It is also a rich source of #{ref :bloom_relics, "Bloom relics"} and #{ref :duskgrain, "duskgrain"}. The same reality distortion that makes Pyre lethal also produces artifacts of narrow-bandwidth power that don't exist anywhere else. #{ref :coremark, "Coremark"}'s black market operations include runs into Pyre's periphery — former employees who know the refinery's layout navigating the warped interior for salvage that commands extraordinary prices.

    The name is what Coremark crews called the facility. When the cascade hit and the refinery burned with pale resonance fire visible across the mid-drift, the name took on its other meaning. The name has carried both meanings since.
  PROSE
end
