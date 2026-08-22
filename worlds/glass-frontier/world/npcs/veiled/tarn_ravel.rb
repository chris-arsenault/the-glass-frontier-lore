npc :tarn_ravel do
  name "Tarn Ravel"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Tarn Ravel repairs heatproof rigging in Pyre, Ravel, Rib, and Sable Crescent."
end

relate :rel_tarn_ravel_at_pyre, :operates_in, :tarn_ravel, :pyre
relate :rel_tarn_ravel_at_ravel, :operates_in, :tarn_ravel, :ravel
relate :rel_tarn_ravel_at_rib, :operates_in, :tarn_ravel, :rib
relate :rel_tarn_ravel_at_sable_crescent, :operates_in, :tarn_ravel, :sable_crescent
