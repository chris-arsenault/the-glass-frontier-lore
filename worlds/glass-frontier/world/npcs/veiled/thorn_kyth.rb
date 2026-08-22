npc :thorn_kyth do
  name "Thorn Kyth"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Thorn Kyth tracks the same migrating dust front through Kyther Range and Sable Crescent."
end

relate :rel_thorn_kyth_at_kyther_range, :operates_in, :thorn_kyth, :kyther_range
relate :rel_thorn_kyth_at_sable_crescent, :operates_in, :thorn_kyth, :sable_crescent
