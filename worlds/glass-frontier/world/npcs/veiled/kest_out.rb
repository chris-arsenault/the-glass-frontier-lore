npc :kest_out do
  name "Kest Out"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Kest Out moves archive and seed parcels among Old Campus, Olven, Orra, and Outside."
end

relate :rel_kest_out_at_old_campus, :operates_in, :kest_out, :old_campus
relate :rel_kest_out_at_olven, :operates_in, :kest_out, :olven
relate :rel_kest_out_at_orra, :operates_in, :kest_out, :orra
relate :rel_kest_out_at_outside, :operates_in, :kest_out, :outside
