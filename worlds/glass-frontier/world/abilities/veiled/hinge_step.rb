ability :hinge_step do
  name "Hinge Step"
  subkind :ability
  status :complete
  prominence :marginal
  veiled "Hinge steppers cross a moving docking joint by placing each foot during its brief unloaded beat."
end

relate :rel_hinge_step_at_hinge_six, :manifests_at, :hinge_step, :hinge_six
relate :rel_hinge_step_at_keel, :manifests_at, :hinge_step, :keel
