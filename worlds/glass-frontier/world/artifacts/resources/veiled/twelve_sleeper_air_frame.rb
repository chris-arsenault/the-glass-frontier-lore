artifact :twelve_sleeper_air_frame do
  name "The Twelve-Sleeper Air Frame"
  summary "The Twelve-Sleeper Air Frame is a Bellhouse air frame sourced through Fourth Bell House, Five Landing, Holl, and Eleven. It sustains twelve sleepers in a sealed room through a dock closure."
  subkind :artifact
  type_of :harbor
  status :complete
  prominence :marginal
  veiled "The Twelve-Sleeper Air Frame unfolds across a sealed room and sustains twelve sleepers through a dock closure."
end

relate :rel_bellhouse_air_frame_at_fourth_bell_house, :sourced_from, :twelve_sleeper_air_frame, :fourth_bell_house
relate :rel_bellhouse_air_frame_at_five_landing, :sourced_from, :twelve_sleeper_air_frame, :five_landing
relate :rel_bellhouse_air_frame_at_holl, :sourced_from, :twelve_sleeper_air_frame, :holl
relate :rel_bellhouse_air_frame_at_eleven, :sourced_from, :twelve_sleeper_air_frame, :eleven
