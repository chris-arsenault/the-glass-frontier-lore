transport :keel_hook_car do
  name "Keel Hook-Car"
  subkind :transport
  status :complete
  prominence :marginal
  veiled "Keel hook-cars swing cargo around damaged track by biting directly into the route's old ribs."
end

relate :rel_keel_hook_car_at_keel, :operates_in, :keel_hook_car, :keel
relate :rel_keel_hook_car_at_hinge_six, :operates_in, :keel_hook_car, :hinge_six
relate :rel_keel_hook_car_at_third_latch, :operates_in, :keel_hook_car, :third_latch
