npc :kela_orra do
  name "Kela Orra"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Kela Orra carries seed receipts between Orra and Seren in a waxed sleeve tied to her wrist."
end

relate :rel_kela_orra_at_orra, :operates_in, :kela_orra, :orra
relate :rel_kela_orra_at_seren, :operates_in, :kela_orra, :seren
