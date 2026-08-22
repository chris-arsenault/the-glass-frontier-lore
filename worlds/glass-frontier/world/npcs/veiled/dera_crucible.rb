npc :dera_crucible do
  name "Dera Crucible"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Dera Crucible carries furnace bids among Crucible, Dovra, Eleven, and Rattle."
end

relate :rel_dera_crucible_at_crucible, :operates_in, :dera_crucible, :crucible
relate :rel_dera_crucible_at_dovra, :operates_in, :dera_crucible, :dovra
relate :rel_dera_crucible_at_eleven, :operates_in, :dera_crucible, :eleven
relate :rel_dera_crucible_at_exchange_c, :operates_in, :dera_crucible, :exchange_c
