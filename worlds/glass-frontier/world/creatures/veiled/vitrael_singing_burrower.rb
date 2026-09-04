creature :vitrael_singing_burrower do
  name "The Vitrael Singing Burrower"
  summary "The Vitrael Singing Burrower is a crystal-dwelling creature ranging between Vitrael and Ashenmaw. It tunnels through Vitrael crystal and surfaces where a cutting crew begins to sing."
  subkind :creature
  type_of :ringglass_burrower
  status :complete
  prominence :marginal
  veiled "The Vitrael Singing Burrower tunnels through Vitrael crystal and surfaces where a cutting crew has begun to sing."
end

relate :rel_glass_burrower_in_vitrael, :inhabits, :vitrael_singing_burrower, :vitrael
relate :rel_glass_burrower_in_ashenmaw, :inhabits, :vitrael_singing_burrower, :ashenmaw
