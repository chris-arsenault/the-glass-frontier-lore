artifact :mareth_red_table do
  name "The Mareth Red Table"
  summary "The Mareth Red Table measures freight-route risk by how long exposed cargo can survive a route's changing kinetic field."
  type_of :road_and_freight_law
  subkind :record
  status :complete
  prominence :marginal
  veiled "The Mareth Red Table measures freight-route risk by how long exposed cargo can survive a route's changing kinetic field."
end

relate :rel_red_distance_at_kesh, :manifests_at, :mareth_red_table, :kesh
relate :rel_red_distance_at_mareth, :manifests_at, :mareth_red_table, :mareth
