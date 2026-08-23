concept :warm_route do
  name "The Warm Route"
  subkind :technology
  status :complete
  prominence :marginal
  veiled "The Warm Route keeps ore above its brittle point from Crucible's lifts to Ashvane's shaded workshops."
end

relate :rel_warm_route_at_crucible, :manifests_at, :warm_route, :crucible
relate :rel_warm_route_at_ashvane, :manifests_at, :warm_route, :ashvane
relate :rel_warm_route_at_shadewell, :manifests_at, :warm_route, :shadewell
relate :rel_warm_route_at_coldside_bench, :manifests_at, :warm_route, :coldside_bench
