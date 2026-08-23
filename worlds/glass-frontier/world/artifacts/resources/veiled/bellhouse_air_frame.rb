resource :bellhouse_air_frame do
  name "Bellhouse Air Frame"
  subkind :infrastructure
  status :complete
  prominence :marginal
  veiled "Bellhouse air frames unfold across a sealed room and sustain twelve sleepers through a dock closure."
end

relate :rel_bellhouse_air_frame_at_fourth_bell_house, :sourced_from, :bellhouse_air_frame, :fourth_bell_house
relate :rel_bellhouse_air_frame_at_five_landing, :sourced_from, :bellhouse_air_frame, :five_landing
relate :rel_bellhouse_air_frame_at_holl, :sourced_from, :bellhouse_air_frame, :holl
relate :rel_bellhouse_air_frame_at_eleven, :sourced_from, :bellhouse_air_frame, :eleven
