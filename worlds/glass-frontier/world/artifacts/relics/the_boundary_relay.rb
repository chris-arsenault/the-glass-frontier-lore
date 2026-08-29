artifact :the_boundary_relay do
  name "The Boundary Relay"
  subkind :relic
  type_of :bloom_relics
  status :shell
end

relate :rel_bloom_relics_manifests_at_bloom_zones, :manifests_at, :the_boundary_relay, :bloom_zones do
  prose "The distorted reality of the #{ref :bloom_zones, "Bloom Zones"} produces Bloom relics. Each one's properties must be tested separately because no general model predicts them."
end
