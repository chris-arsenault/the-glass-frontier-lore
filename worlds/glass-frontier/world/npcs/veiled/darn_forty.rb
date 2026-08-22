npc :darn_forty do
  name "Darn Forty"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Darn Forty carries Brake tow assignments to the cutting crews at Forty before each capture window."
end

relate :rel_darn_forty_at_lot_forty, :operates_in, :darn_forty, :lot_forty
relate :rel_darn_forty_at_brake, :operates_in, :darn_forty, :brake
