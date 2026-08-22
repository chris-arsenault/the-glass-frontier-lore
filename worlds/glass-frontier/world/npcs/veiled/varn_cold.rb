npc :varn_cold do
  name "Varn Cold"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Varn Cold checks thermal gauges at Cold Lantern, Coldside Bench, Crowncut Refinery, and Crucible."
end

relate :rel_varn_cold_at_cold_lantern, :operates_in, :varn_cold, :cold_lantern
relate :rel_varn_cold_at_coldside_bench, :operates_in, :varn_cold, :coldside_bench
relate :rel_varn_cold_at_crowncut_refinery, :operates_in, :varn_cold, :crowncut_refinery
relate :rel_varn_cold_at_crucible, :operates_in, :varn_cold, :crucible
