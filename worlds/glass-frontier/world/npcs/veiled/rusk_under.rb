npc :rusk_under do
  name "Rusk Under"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Rusk Under repairs hoists at Thornvault, Three Arms Yard, Threshold Station, and the Underlayers."
end

relate :rel_rusk_under_at_thornvault, :operates_in, :rusk_under, :thornvault
relate :rel_rusk_under_at_three_arms_yard, :operates_in, :rusk_under, :three_arms_yard
relate :rel_rusk_under_at_threshold_station, :operates_in, :rusk_under, :threshold_station
relate :rel_rusk_under_at_underlayers, :operates_in, :rusk_under, :underlayers
