npc :ravik do
  name "Ravik"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Ravik fits Ravel sailcloth to Tanel cargo frames and keeps the offcuts for pressure patches."
end

relate :rel_ravik_at_tanel, :operates_in, :ravik, :tanel
relate :rel_ravik_at_ravel, :operates_in, :ravik, :ravel
