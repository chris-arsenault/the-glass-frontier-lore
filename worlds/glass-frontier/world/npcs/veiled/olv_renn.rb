npc :olv_renn do
  name "Olv Renn"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Olv Renn tends the same strain of pale vine in Olven and Eleven and swaps their soil at each harvest."
end

relate :rel_olv_renn_at_olven, :operates_in, :olv_renn, :olven
relate :rel_olv_renn_at_eleven, :operates_in, :olv_renn, :eleven
