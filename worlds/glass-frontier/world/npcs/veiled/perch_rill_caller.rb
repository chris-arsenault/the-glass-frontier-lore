npc :perch_rill_caller do
  name "The Perch Rill Caller"
  summary "The Perch Rill Caller guides herd animals through Perch by tapping a pitch that carries along irrigation pipes."
  type_of :specialist_practitioner
  belongs_to :practice, :rill_calling
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Perch Rill Caller guides herd animals through Perch by tapping a pitch that carries along irrigation pipes."
end
relate :rel_rill_calling_at_perch, :manifests_at, :perch_rill_caller, :perch
relate :rel_rill_calling_at_talven, :manifests_at, :perch_rill_caller, :talven
relate :rel_rill_calling_at_seren, :manifests_at, :perch_rill_caller, :seren
