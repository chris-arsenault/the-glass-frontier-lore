npc :vale_cold do
  name "Vale Cold"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Vale Cold audits furnace losses at Coldside Bench, Crowncut Refinery, Crucible, and Dovra."
end

relate :rel_vale_cold_at_coldside_bench, :operates_in, :vale_cold, :coldside_bench
relate :rel_vale_cold_at_crowncut_refinery, :operates_in, :vale_cold, :crowncut_refinery
relate :rel_vale_cold_at_crucible, :operates_in, :vale_cold, :crucible
relate :rel_vale_cold_at_dovra, :operates_in, :vale_cold, :dovra
