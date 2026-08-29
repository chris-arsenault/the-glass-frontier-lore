creature :nine_knot do
  name "Nine-Knot"
  summary "Nine-Knot is a marked Ravel claspworm found in pressure lines at Ravel and Perch."
  subkind :creature
  status :complete
  prominence :marginal
  type_of :ravel_claspworm
  veiled "Nine-Knot appears in pressure lines at Ravel and Perch, always wrapped around the next pipe scheduled for replacement."
end

relate :rel_nine_knot_at_ravel, :inhabits, :nine_knot, :ravel
relate :rel_nine_knot_at_perch, :inhabits, :nine_knot, :perch
