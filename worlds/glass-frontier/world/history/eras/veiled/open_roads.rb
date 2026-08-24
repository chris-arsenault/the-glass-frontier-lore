era :open_roads do
  name "The Open Roads"
  summary "The Open Roads were the period when independent crews restored regular passage between the outer ports and surface archives."
  subkind :historical_period
  status :complete
  prominence :marginal
  veiled "The Open Roads began when independent crews restored regular passage between outer ports and the surface archives."
end

relate :rel_open_roads_at_korvath, :manifests_at, :open_roads, :korvath
relate :rel_open_roads_at_verathi, :manifests_at, :open_roads, :verathi
relate :rel_open_roads_at_sable_crescent, :manifests_at, :open_roads, :sable_crescent
relate :rel_open_roads_at_hab_meridian, :manifests_at, :open_roads, :hab_meridian
