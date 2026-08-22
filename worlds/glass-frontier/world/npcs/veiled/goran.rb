npc :goran do
  name "Goran"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Goran brings preserved Kesh roots to Mareth and returns with sterile growing trays."
end

relate :rel_goran_at_kesh, :operates_in, :goran, :kesh
relate :rel_goran_at_mareth, :operates_in, :goran, :mareth
