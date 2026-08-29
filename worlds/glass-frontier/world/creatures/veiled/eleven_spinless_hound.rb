creature :eleven_spinless_hound do
  name "The Eleven Spinless Hound"
  summary "The Eleven Spinless Hound is a gravity-following anomaly ranging among Holl, Eleven, and Five Landing. It runs across ceilings when a habitat's gravity changes and drags loose cargo behind it."
  subkind :anomaly
  type_of :spinless_hound
  status :complete
  prominence :marginal
  veiled "The Eleven Spinless Hound runs across ceilings when a habitat's gravity changes and drags loose cargo behind it."
end

relate :rel_spinless_hound_in_holl, :inhabits, :eleven_spinless_hound, :holl
relate :rel_spinless_hound_in_eleven, :inhabits, :eleven_spinless_hound, :eleven
relate :rel_spinless_hound_in_five_landing, :inhabits, :eleven_spinless_hound, :five_landing
