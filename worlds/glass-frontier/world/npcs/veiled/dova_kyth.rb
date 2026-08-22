npc :dova_kyth do
  name "Dova Kyth"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Dova Kyth brings hardy seedlings from Kesh through Holl and Issel to exposed beds in Kyther Range."
end

relate :rel_dova_kyth_at_holl, :operates_in, :dova_kyth, :holl
relate :rel_dova_kyth_at_issel, :operates_in, :dova_kyth, :issel
relate :rel_dova_kyth_at_kesh, :operates_in, :dova_kyth, :kesh
relate :rel_dova_kyth_at_kyther_range, :operates_in, :dova_kyth, :kyther_range
