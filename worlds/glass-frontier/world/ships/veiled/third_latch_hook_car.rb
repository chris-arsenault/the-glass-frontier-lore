transport :third_latch_hook_car do
  name "The Third Latch Hook-Car"
  summary "The Third Latch Hook-Car is a cargo vehicle used on damaged track around the Keel, Hinge Six, and Third Latch. It bites into old route ribs to swing loads past broken sections."
  subkind :transport
  type_of :keel_hook_car
  status :complete
  prominence :marginal
  veiled "The Third Latch Hook-Car swings cargo around damaged track by biting directly into the route's old ribs."
end

relate :rel_keel_hook_car_at_keel, :operates_in, :third_latch_hook_car, :keel
relate :rel_keel_hook_car_at_hinge_six, :operates_in, :third_latch_hook_car, :hinge_six
relate :rel_keel_hook_car_at_third_latch, :operates_in, :third_latch_hook_car, :third_latch
