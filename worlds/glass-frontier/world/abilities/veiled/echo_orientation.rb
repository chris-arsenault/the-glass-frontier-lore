ability :echo_orientation do
  name "Echo Orientation"
  summary "Echo Orientation is an innate sense of physical scale that preserves balance when resonance recordings distort a corridor's apparent width."
  subkind :innate_ability
  status :complete
  prominence :marginal
  veiled "Echo-oriented children keep their footing when Sable recordings make a corridor sound wider than it is."
end

relate :rel_echo_orientation_at_sable_crescent, :manifests_at, :echo_orientation, :sable_crescent
relate :rel_echo_orientation_at_ledgerfall, :manifests_at, :echo_orientation, :ledgerfall
relate :rel_echo_orientation_at_thornvault, :manifests_at, :echo_orientation, :thornvault
