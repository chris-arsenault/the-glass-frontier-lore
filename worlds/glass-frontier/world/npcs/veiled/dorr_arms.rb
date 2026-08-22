npc :dorr_arms do
  name "Dorr Arms"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Dorr Arms repairs lifting gear at Thornvault, Three Arms Yard, Threshold Station, and the Underlayers."
end

relate :rel_dorr_arms_at_thornvault, :operates_in, :dorr_arms, :thornvault
relate :rel_dorr_arms_at_three_arms_yard, :operates_in, :dorr_arms, :three_arms_yard
relate :rel_dorr_arms_at_threshold_station, :operates_in, :dorr_arms, :threshold_station
relate :rel_dorr_arms_at_underlayers, :operates_in, :dorr_arms, :underlayers
