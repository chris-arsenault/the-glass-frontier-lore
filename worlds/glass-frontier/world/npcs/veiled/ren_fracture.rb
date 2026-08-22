npc :ren_fracture do
  name "Ren Fracture"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Ren Fracture replaces damaged route markers at the Fracture, the Reed Door, Latchhouse, and Thornvault."
end

relate :rel_ren_fracture_at_the_fracture, :operates_in, :ren_fracture, :the_fracture
relate :rel_ren_fracture_at_the_reed_door, :operates_in, :ren_fracture, :the_reed_door
relate :rel_ren_fracture_at_third_latch, :operates_in, :ren_fracture, :third_latch
relate :rel_ren_fracture_at_thornvault, :operates_in, :ren_fracture, :thornvault
