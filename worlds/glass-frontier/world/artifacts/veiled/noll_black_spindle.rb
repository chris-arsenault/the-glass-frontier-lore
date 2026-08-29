artifact :noll_black_spindle do
  name "Noll Black Spindle"
  summary "Noll Black Spindle is a fibre-working tool used among Noll, Rib, and Vey. It twists shed root fibre into cable that tightens when a habitat loses spin."
  subkind :artifact
  type_of :field_instrument
  status :complete
  prominence :marginal
  veiled "The Noll Black Spindle twists shed root fibre into a cable that tightens when its habitat loses spin."
end

relate :rel_noll_black_spindle_at_noll, :operates_in, :noll_black_spindle, :noll
relate :rel_noll_black_spindle_at_rib, :operates_in, :noll_black_spindle, :rib
relate :rel_noll_black_spindle_at_vey, :operates_in, :noll_black_spindle, :vey
