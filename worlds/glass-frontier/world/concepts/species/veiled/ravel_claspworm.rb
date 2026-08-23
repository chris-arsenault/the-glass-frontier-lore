species :ravel_claspworm do
  name "Ravel Claspworm"
  subkind :species
  status :complete
  prominence :marginal
  veiled "Ravel claspworms knot themselves around loose water lines and release only when the pipe reaches full pressure."
end

relate :rel_ravel_claspworm_at_ravel, :inhabits, :ravel_claspworm, :ravel
relate :rel_ravel_claspworm_at_perch, :inhabits, :ravel_claspworm, :perch
