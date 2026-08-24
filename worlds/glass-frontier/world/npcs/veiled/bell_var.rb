npc :bell_var do
  name "Bell Var"
  summary "Bell Var is a Hinge Six berth official who closes docks when their echoes fall outside the safe count."
  subkind :official
  status :complete
  prominence :marginal
  veiled "Bell Var closes Hinge Six berths when their docking echoes fall outside the day's safe count."
end

relate :rel_bell_var_at_hinge_six, :operates_in, :bell_var, :hinge_six
relate :rel_bell_var_at_keel, :operates_in, :bell_var, :keel
