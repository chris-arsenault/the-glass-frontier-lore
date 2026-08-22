npc :tern_bell do
  name "Tern Bell"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Tern Bell carries fresh Fracture survey strips to Far Bell before the edges can shed more glass."
end

relate :rel_tern_bell_at_the_fracture, :operates_in, :tern_bell, :the_fracture
relate :rel_tern_bell_at_far_bell, :operates_in, :tern_bell, :far_bell
