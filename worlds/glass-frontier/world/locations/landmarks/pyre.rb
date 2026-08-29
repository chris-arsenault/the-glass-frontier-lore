installation :pyre do
  name "Pyre"
  summary "Pyre is a ruined Coremark ringglass refinery in the mid-drift Shear, now enclosed by the Bloom Zone that formed during the Silent Bloom."
  playable_as :chronicle_location
  context_tags :"realm:orbital"
  subkind :landmark
  type_of :refinery
  path "player/locations/landmarks/pyre.md"
  status :complete
  reviewed "2026-03-20"
  tags :orbital, :salvage, :danger, :resonance
  prominence :recognized

  descriptive_identity(
    setting:
      "The burned-out shell of a ringglass refinery in the mid-drift " \
      "Shear, holding a dead orbit inside one of the worst Bloom Zones in " \
      "the system. From outside the cordon the structure still reads as a " \
      "refinery; past it, space is badly warped and the interior keeps no " \
      "consistent geometry.",
    activity:
      "Containment crews work the cordon at all hours — their job is the " \
      "wall, not the wreck — while salvage runs slip into the periphery " \
      "guided by people who walked the refinery floor before it burned. " \
      "Duskgrain and Bloom relics leave the site at extraordinary prices.",
    access:
      "Every run in has to pass the Displacement Council crews holding " \
      "the boundary, and past the cordon line a guide's remembered layout " \
      "carries only so far inward before it stops matching anything. " \
      "Guides price the trip by where their knowledge ends.",
    hazards:
      "Spatial relationships inside are unreliable and resonance " \
      "frequencies stack in ways nobody can predict, so the distortion " \
      "that makes the relics also kills the careless. The boundary itself " \
      "holds only under constant containment."
  )

  prose <<~PROSE
    The ruin of a #{ref :coremark, "Coremark"} ringglass refinery in the mid-drift #{ref :the_shear, "Shear"}, and the origin point of the #{ref :the_silent_bloom, "Silent Bloom"} resonance cascade. Pyre sits inside a #{ref :bloom_zones, "Bloom Zone"} now — one of the worst ones. Space is badly warped. The refinery's structure is still recognizable from outside the containment cordon, but what's inside doesn't follow consistent geometry anymore.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Pyre is one of the most dangerous and valuable sites in the system. The Bloom Zone that formed around it contains some of the most severe reality distortion anywhere in Kaleidos orbit — spatial relationships are unreliable, resonance frequencies stack in unpredictable ways, and the boundary between the zone and normal space requires constant #{ref :displacement_council, "Displacement Council"} containment.

    It is also a rich source of #{encyclopedia_ref :bloom_relics, "Bloom relics"} and #{encyclopedia_ref :duskgrain, "duskgrain"}. The same reality distortion that makes Pyre lethal also produces artifacts of narrow-bandwidth power that don't exist anywhere else. #{ref :coremark, "Coremark"}'s black market operations include runs into Pyre's periphery — former employees who know the refinery's layout navigating the warped interior for salvage that commands extraordinary prices.

    The name is what Coremark crews called the facility. When the cascade hit and the refinery burned with pale resonance fire visible across the mid-drift, the name took on its other meaning. The name has carried both meanings since.
  PROSE

  gm_note :appears, "#{encyclopedia_ref :duskgrain, "Duskgrain"} and #{encyclopedia_ref :bloom_relics, "Bloom relics"} on any market trace back to a periphery run, and every such run was guided by someone who worked the refinery floor before it burned. Buying either leaves the party one question away from meeting that guide."
  gm_note :triggered_by, "Navigating by the refinery's remembered layout works inward from the cordon line and then stops, because the structure is recognizable from outside while the interior keeps no consistent geometry. The guides who sell that layout price a run by where their knowledge ends."
  gm_note :complicates, "Pyre's boundary holds only under constant #{ref :displacement_council, "Displacement Council"} containment, so the cordon is worked at all hours by crews whose job is the wall rather than the wreck. A run into the periphery has to pass them before it reaches anything salvageable."
end

relate :rel_pyre_caused_the_silent_bloom, :caused, :pyre, :the_silent_bloom do
  prose "Pyre is where it started: the refinery whose overload tipped the #{ref :the_silent_bloom, "Silent Bloom"} into cascade. Its name is a sentence now."
end
relate :rel_pyre_in_orbit_of_kaleidos, :in_orbit_of, :pyre, :kaleidos do
  prose "What's left of it holds a dead orbit of #{ref :kaleidos, "Kaleidos"}, a wreck nobody salvages and nobody approaches."
end

# --- history (moment) ---
moment :pyre_overload, year: 2378, of: :pyre do
  summary "Accumulated safety failures overloaded Coremark's Pyre refinery in 2378 and began the Silent Bloom."
  prose "Pyre was a mid-drift refinery — part of #{ref :coremark, "Coremark"}'s expansion beyond its deep-Shear niche in the 2340s–2350s, at peak one of the highest-throughput plants in the Shear. It ran in an environment already past its limits: decades of unrestrained harvesting had depleted the ambient resonance ecology, and the nearby #{ref :second_span_trial, "Second Span trial"} had left an aligned guide through local space. The overload was not one dramatic failure but a cascade of small negligences — safety margins treated as obstacles, precursor readings dismissed as noise by operators who lacked the #{encyclopedia_ref :elves, "elven"} knowledge to recognize them. The refinery burned with pale resonance fire visible across the mid-drift, and the #{ref :the_silent_bloom, "Silent Bloom"} began."
  effects { set :pyre, standing: :destroyed }
end
