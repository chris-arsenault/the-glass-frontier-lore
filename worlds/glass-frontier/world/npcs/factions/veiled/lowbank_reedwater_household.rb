faction :lowbank_reedwater_household do
  name "The Lowbank Reedwater Household"
  summary "The Lowbank Reedwater Household is one river family that builds seasonal homes from living reed mats and moves them when channels shift."
  type_of :household
  belongs_to :culture, :reedwater_people
  subkind :community
  status :complete
  prominence :marginal
  veiled "The Lowbank Reedwater Household is one river family that builds seasonal homes from living reed mats and moves them when channels shift."
end
relate :rel_reedwater_people_at_dovra, :manifests_at, :lowbank_reedwater_household, :dovra
relate :rel_reedwater_people_at_lowbank, :manifests_at, :lowbank_reedwater_household, :lowbank
relate :rel_reedwater_people_at_the_reed_door, :manifests_at, :lowbank_reedwater_household, :the_reed_door
relate :rel_reedwater_people_at_ninth_kiln, :manifests_at, :lowbank_reedwater_household, :ninth_kiln
