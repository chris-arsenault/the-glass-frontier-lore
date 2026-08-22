npc :kor_vigil do
  name "Kor Vigil"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Kor Vigil carries storm closures from Vigil Breach to Kyther Range before the public signal boards change."
end

relate :rel_kor_vigil_at_vigil_breach, :operates_in, :kor_vigil, :vigil_breach
relate :rel_kor_vigil_at_kyther_range, :operates_in, :kor_vigil, :kyther_range
