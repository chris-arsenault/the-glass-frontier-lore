npc :aven_talis do
  name "Aven Talis"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Aven Talis reconciles Avar cargo marks with the older impressions stored at Marker House Twelve."
end

relate :rel_aven_talis_at_marker_house_twelve, :operates_in, :aven_talis, :marker_house_twelve
relate :rel_aven_talis_at_avar, :operates_in, :aven_talis, :avar
