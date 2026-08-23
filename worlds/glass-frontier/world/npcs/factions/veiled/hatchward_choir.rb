faction :hatchward_choir do
  name "Hatchward Choir"
  subkind :religious_order
  status :complete
  prominence :marginal
  veiled "Hatchward singers hold a continuous low note while damaged vessels pass through Keel docking joints."
end

relate :rel_hatchward_choir_at_keel, :operates_in, :hatchward_choir, :keel
relate :rel_hatchward_choir_at_hinge_six, :operates_in, :hatchward_choir, :hinge_six
relate :rel_hatchward_choir_at_cold_lantern, :operates_in, :hatchward_choir, :cold_lantern
relate :rel_hatchward_choir_at_third_latch, :operates_in, :hatchward_choir, :third_latch
