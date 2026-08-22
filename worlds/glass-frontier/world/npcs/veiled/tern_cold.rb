npc :tern_cold do
  name "Tern Cold"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Tern Cold audits heat loss at Coldside Bench, Crowncut Refinery, Crucible, and Dovra with four matched gauges."
end

relate :rel_tern_cold_at_coldside_bench, :operates_in, :tern_cold, :coldside_bench
relate :rel_tern_cold_at_crowncut_refinery, :operates_in, :tern_cold, :crowncut_refinery
relate :rel_tern_cold_at_crucible, :operates_in, :tern_cold, :crucible
relate :rel_tern_cold_at_dovra, :operates_in, :tern_cold, :dovra
