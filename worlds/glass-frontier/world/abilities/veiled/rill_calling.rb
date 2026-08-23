ability :rill_calling do
  name "Rill Calling"
  subkind :ability
  status :complete
  prominence :marginal
  veiled "Rill callers guide herd animals through Perch by tapping a pitch that carries along irrigation pipes."
end

relate :rel_rill_calling_at_perch, :manifests_at, :rill_calling, :perch
relate :rel_rill_calling_at_talven, :manifests_at, :rill_calling, :talven
relate :rel_rill_calling_at_seren, :manifests_at, :rill_calling, :seren
