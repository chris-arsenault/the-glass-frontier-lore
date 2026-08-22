npc :pel_lith do
  name "Pel Lith"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Pel Lith sets Lithren footing stone beneath Pelhari pressure frames and signs each seated block."
end

relate :rel_pel_lith_at_pelhari, :operates_in, :pel_lith, :pelhari
relate :rel_pel_lith_at_lithren, :operates_in, :pel_lith, :lithren
