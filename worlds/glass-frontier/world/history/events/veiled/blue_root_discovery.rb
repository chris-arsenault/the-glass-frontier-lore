incident :blue_root_discovery do
  name "The Blue-Root Discovery"
  subkind :discovery
  status :complete
  prominence :marginal
  veiled "A Lumenshard survey found living roots beneath a dry Sable recording vault and moved the first cuttings to Ledgerfall."
end

relate :rel_blue_root_discovery_at_lumenshard, :manifests_at, :blue_root_discovery, :lumenshard
relate :rel_blue_root_discovery_at_ledgerfall, :manifests_at, :blue_root_discovery, :ledgerfall
