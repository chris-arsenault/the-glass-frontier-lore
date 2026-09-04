incident :miraeth_rootlight do
  name "Miraeth Rootlight"
  summary "Miraeth Rootlight is a blue pulse that travels through Miraeth soil and gathers beneath plants carrying damaged ringglass."
  type_of :miraeth_blue
  subkind :incident
  status :complete
  prominence :marginal
  veiled "Miraeth Rootlight is a blue pulse that travels through Miraeth soil and gathers beneath plants carrying damaged ringglass."
end
relate :rel_rootlight_at_lumenshard, :manifests_at, :miraeth_rootlight, :lumenshard
relate :rel_rootlight_at_miraeth, :manifests_at, :miraeth_rootlight, :miraeth
