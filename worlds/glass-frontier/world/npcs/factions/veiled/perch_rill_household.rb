faction :perch_rill_household do
  name "The Perch Rill Household"
  summary "The Perch Rill Household is one Perch family that times meals and animal work to the settlement's irrigation tones."
  type_of :household
  belongs_to :culture, :rill_households
  subkind :community
  status :complete
  prominence :marginal
  veiled "The Perch Rill Household is one Perch family that times meals and animal work to the settlement's irrigation tones."
end
relate :rel_rill_households_at_perch, :manifests_at, :perch_rill_household, :perch
relate :rel_rill_households_at_talven, :manifests_at, :perch_rill_household, :talven
relate :rel_rill_households_at_orra, :manifests_at, :perch_rill_household, :orra
relate :rel_rill_households_at_seren, :manifests_at, :perch_rill_household, :seren
