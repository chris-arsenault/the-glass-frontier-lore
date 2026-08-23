artifact :seven_tine_gauge do
  name "The Seven-Tine Gauge"
  subkind :instrument
  status :complete
  prominence :marginal
  veiled "The Seven-Tine Gauge identifies salvage that Crowncut can refine without waking its trapped kinetic charge."
end

relate :rel_seven_tine_gauge_at_crowncut_refinery, :operates_in, :seven_tine_gauge, :crowncut_refinery
relate :rel_seven_tine_gauge_at_pell_cut, :operates_in, :seven_tine_gauge, :pell_cut
