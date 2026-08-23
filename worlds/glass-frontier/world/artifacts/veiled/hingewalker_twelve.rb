artifact :hingewalker_twelve do
  name "Hingewalker Twelve"
  subkind :machine
  status :complete
  prominence :marginal
  veiled "Hingewalker Twelve crawls along loaded docking joints and replaces one bearing without stopping traffic."
end

relate :rel_hingewalker_twelve_at_hinge_six, :operates_in, :hingewalker_twelve, :hinge_six
relate :rel_hingewalker_twelve_at_keel, :operates_in, :hingewalker_twelve, :keel
relate :rel_hingewalker_twelve_at_third_latch, :operates_in, :hingewalker_twelve, :third_latch
