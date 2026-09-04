creature :the_blue_mirror_swarm do
  name "The Blue Mirror Swarm"
  summary "The Blue Mirror Swarm is a marked mirror-bee colony moving between the blue-loam beds of Lumenshard and Miraeth."
  subkind :creature
  status :complete
  prominence :marginal
  type_of :irides
  veiled "The Blue Mirror Swarm carries the same flower color between Lumenshard and Miraeth even when no matching bloom grows at the destination."
end

relate :rel_blue_mirror_swarm_at_lumenshard, :inhabits, :the_blue_mirror_swarm, :lumenshard
relate :rel_blue_mirror_swarm_at_miraeth, :inhabits, :the_blue_mirror_swarm, :miraeth
