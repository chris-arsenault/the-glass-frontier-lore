artifact :seven_tine_gauge do
  name "The Seven-Tine Gauge"
  summary "The Seven-Tine Gauge is a salvage-testing instrument used between Pell Cut and Crowncut Refinery. It identifies material that can be refined without releasing its trapped kinetic charge."
  subkind :instrument
  type_of :field_instrument
  status :complete
  prominence :marginal
  veiled "The Seven-Tine Gauge identifies salvage that Crowncut can refine without waking its trapped kinetic charge."
end

relate :rel_seven_tine_gauge_at_crowncut_refinery, :operates_in, :seven_tine_gauge, :crowncut_refinery
relate :rel_seven_tine_gauge_at_pell_cut, :operates_in, :seven_tine_gauge, :pell_cut
