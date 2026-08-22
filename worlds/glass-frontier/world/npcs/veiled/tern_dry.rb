npc :tern_dry do
  name "Tern Dry"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Tern Dry maps airflow changes in the Dry Net, the Fracture, the Reed Door, and Latchhouse."
end

relate :rel_tern_dry_at_the_dry_net, :operates_in, :tern_dry, :the_dry_net
relate :rel_tern_dry_at_the_fracture, :operates_in, :tern_dry, :the_fracture
relate :rel_tern_dry_at_the_reed_door, :operates_in, :tern_dry, :the_reed_door
relate :rel_tern_dry_at_third_latch, :operates_in, :tern_dry, :third_latch
