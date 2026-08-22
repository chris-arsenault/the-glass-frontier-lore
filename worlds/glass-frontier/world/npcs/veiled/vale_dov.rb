npc :vale_dov do
  name "Vale Dov"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Vale Dov tests fuel and furnace seals at Crowncut Refinery, Crucible, Dovra, and Eleven."
end

relate :rel_vale_dov_at_crowncut_refinery, :operates_in, :vale_dov, :crowncut_refinery
relate :rel_vale_dov_at_crucible, :operates_in, :vale_dov, :crucible
relate :rel_vale_dov_at_dovra, :operates_in, :vale_dov, :dovra
relate :rel_vale_dov_at_eleven, :operates_in, :vale_dov, :eleven
