creature :glass_burrower do
  name "Glass Burrower"
  subkind :creature
  status :complete
  prominence :marginal
  veiled "Glass burrowers tunnel through Vitrael crystal and surface where a cutting crew has begun to sing."
end

relate :rel_glass_burrower_in_vitrael, :inhabits, :glass_burrower, :vitrael
relate :rel_glass_burrower_in_ashenmaw, :inhabits, :glass_burrower, :ashenmaw
