npc :tern_reed do
  name "Tern Reed"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Tern Reed compares airflow readings from the Dry Net, the Fracture, the Reed Door, and Latchhouse."
end

relate :rel_tern_reed_at_the_dry_net, :operates_in, :tern_reed, :the_dry_net
relate :rel_tern_reed_at_the_fracture, :operates_in, :tern_reed, :the_fracture
relate :rel_tern_reed_at_the_reed_door, :operates_in, :tern_reed, :the_reed_door
relate :rel_tern_reed_at_third_latch, :operates_in, :tern_reed, :third_latch
