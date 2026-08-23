concept :red_distance do
  name "Red Distance"
  subkind :reference_concept
  status :complete
  prominence :marginal
  veiled "Red Distance measures a route by how long exposed cargo can survive its changing kinetic field."
end

relate :rel_red_distance_at_kesh, :manifests_at, :red_distance, :kesh
relate :rel_red_distance_at_mareth, :manifests_at, :red_distance, :mareth
