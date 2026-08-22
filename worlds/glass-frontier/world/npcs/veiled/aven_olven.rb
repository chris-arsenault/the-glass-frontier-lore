npc :aven_olven do
  name "Aven Olven"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Aven Olven moves seed and archive parcels among Old Campus, Olven, Orra, and Pelhari."
end

relate :rel_aven_olven_at_old_campus, :operates_in, :aven_olven, :old_campus
relate :rel_aven_olven_at_olven, :operates_in, :aven_olven, :olven
relate :rel_aven_olven_at_orra, :operates_in, :aven_olven, :orra
relate :rel_aven_olven_at_pelhari, :operates_in, :aven_olven, :pelhari
