npc :shai_dry do
  name "Shai Dry"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Shai Dry services airflow markers in the Dry Net, the Fracture, the Reed Door, and Latchhouse."
end

relate :rel_shai_dry_at_the_dry_net, :operates_in, :shai_dry, :the_dry_net
relate :rel_shai_dry_at_the_fracture, :operates_in, :shai_dry, :the_fracture
relate :rel_shai_dry_at_the_reed_door, :operates_in, :shai_dry, :the_reed_door
relate :rel_shai_dry_at_third_latch, :operates_in, :shai_dry, :third_latch
