faction :noll_rootward_household do
  name "The Noll Rootward Household"
  summary "The Noll Rootward Household is one garden-hab family that raises children among rotating crops and gives each child a living graft to maintain."
  type_of :household
  belongs_to :culture, :rootward_households
  subkind :community
  status :complete
  prominence :marginal
  veiled "The Noll Rootward Household is one garden-hab family that raises children among rotating crops and gives each child a living graft to maintain."
end
relate :rel_rootward_households_at_noll, :manifests_at, :noll_rootward_household, :noll
relate :rel_rootward_households_at_rib, :manifests_at, :noll_rootward_household, :rib
relate :rel_rootward_households_at_vey, :manifests_at, :noll_rootward_household, :vey
relate :rel_rootward_households_at_lung_three, :manifests_at, :noll_rootward_household, :lung_three
