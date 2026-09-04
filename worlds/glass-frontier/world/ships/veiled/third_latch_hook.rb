transport :third_latch_hook do
  name "The Third Latch Hook"
  summary "The Third Latch Hook is a cargo vehicle used on damaged track around the Keel, Hinge Six, and Third Latch. It bites into old route ribs to swing loads past broken sections."
  subkind :transport
  type_of :hook
  status :complete
  prominence :marginal
  veiled "The Third Latch Hook swings cargo around damaged track by biting directly into the route's old ribs."
end

relate :rel_keel_hook_car_at_keel, :operates_in, :third_latch_hook, :keel
relate :rel_keel_hook_car_at_hinge_six, :operates_in, :third_latch_hook, :hinge_six
relate :rel_keel_hook_car_at_third_latch, :operates_in, :third_latch_hook, :latchhouse
