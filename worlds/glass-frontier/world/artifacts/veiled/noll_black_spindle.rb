artifact :noll_black_spindle do
  name "Noll Black Spindle"
  subkind :artifact
  status :complete
  prominence :marginal
  veiled "The Noll Black Spindle twists shed root fibre into a cable that tightens when its habitat loses spin."
end

relate :rel_noll_black_spindle_at_noll, :operates_in, :noll_black_spindle, :noll
relate :rel_noll_black_spindle_at_rib, :operates_in, :noll_black_spindle, :rib
relate :rel_noll_black_spindle_at_vey, :operates_in, :noll_black_spindle, :vey
