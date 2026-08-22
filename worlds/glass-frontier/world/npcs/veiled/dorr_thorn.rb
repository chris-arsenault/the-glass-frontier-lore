npc :dorr_thorn do
  name "Dorr Thorn"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Dorr Thorn services cargo rails at Thornvault, Three Arms Yard, Threshold Station, and the Underlayers."
end

relate :rel_dorr_thorn_at_thornvault, :operates_in, :dorr_thorn, :thornvault
relate :rel_dorr_thorn_at_three_arms_yard, :operates_in, :dorr_thorn, :three_arms_yard
relate :rel_dorr_thorn_at_threshold_station, :operates_in, :dorr_thorn, :threshold_station
relate :rel_dorr_thorn_at_underlayers, :operates_in, :dorr_thorn, :underlayers
