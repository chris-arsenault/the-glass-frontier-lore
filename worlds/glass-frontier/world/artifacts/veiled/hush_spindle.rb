artifact :hush_spindle do
  name "The Hush Spindle"
  summary "The Hush Spindle is a recording instrument used at the Choir Fragment and Fermata Station. It isolates one voice from a layered record and burns the removed harmonics into its axle."
  subkind :instrument
  type_of :field_instrument
  status :complete
  prominence :marginal
  veiled "The Hush Spindle draws one voice out of a layered recording and burns the removed harmonics into its axle."
end

relate :rel_hush_spindle_at_the_choir_fragment, :operates_in, :hush_spindle, :the_choir_fragment
relate :rel_hush_spindle_at_fermata_station, :operates_in, :hush_spindle, :fermata_station
