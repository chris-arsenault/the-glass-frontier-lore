faction :blue_meridian_soilworks do
  name "Blue Meridian Soilworks"
  subkind :company
  status :complete
  prominence :marginal
  veiled "Blue Meridian Soilworks leases tuned garden beds and repossesses only the frame when a harvest fails."
end

relate :rel_blue_meridian_soilworks_at_hab_meridian, :operates_in, :blue_meridian_soilworks, :hab_meridian
relate :rel_blue_meridian_soilworks_at_miraeth, :operates_in, :blue_meridian_soilworks, :miraeth
