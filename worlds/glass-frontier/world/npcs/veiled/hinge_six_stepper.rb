npc :hinge_six_stepper do
  name "The Hinge Six Stepper"
  summary "The Hinge Six Stepper crosses a moving docking joint during its brief unloaded beat."
  type_of :hinge_step
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Hinge Six Stepper crosses a moving docking joint during its brief unloaded beat."
end
relate :rel_hinge_step_at_hinge_six, :manifests_at, :hinge_six_stepper, :hinge_six
relate :rel_hinge_step_at_keel, :manifests_at, :hinge_six_stepper, :keel
