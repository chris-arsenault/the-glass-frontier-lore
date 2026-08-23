phenomenon :rootlight do
  name "Rootlight"
  subkind :phenomenon
  status :complete
  prominence :marginal
  veiled "Rootlight moves through Miraeth soil as a blue pulse and gathers beneath plants carrying damaged ringglass."
end

relate :rel_rootlight_at_lumenshard, :manifests_at, :rootlight, :lumenshard
relate :rel_rootlight_at_miraeth, :manifests_at, :rootlight, :miraeth
