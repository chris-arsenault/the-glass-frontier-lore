npc :korr_cold do
  name "Korr Cold"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Korr Cold audits temperature seals at Clearance Eight, Cold Lantern, Coldside Bench, and Crowncut Refinery."
end

relate :rel_korr_cold_at_clearance_eight, :operates_in, :korr_cold, :clearance_eight
relate :rel_korr_cold_at_cold_lantern, :operates_in, :korr_cold, :cold_lantern
relate :rel_korr_cold_at_coldside_bench, :operates_in, :korr_cold, :coldside_bench
relate :rel_korr_cold_at_crowncut_refinery, :operates_in, :korr_cold, :crowncut_refinery
