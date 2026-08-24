phenomenon :cold_archive_weather do
  name "Cold Archive Weather"
  summary "Cold Archive Weather is a resonance phenomenon that lays readable frost on sealed hulls near the passage of a Lithren text."
  subkind :phenomenon
  status :complete
  prominence :marginal
  veiled "Cold archive weather lays readable frost across sealed hulls when a Lithren text passes nearby."
end

relate :rel_cold_archive_weather_at_lithren, :manifests_at, :cold_archive_weather, :lithren
relate :rel_cold_archive_weather_at_vastine, :manifests_at, :cold_archive_weather, :vastine
relate :rel_cold_archive_weather_at_pelhari, :manifests_at, :cold_archive_weather, :pelhari
relate :rel_cold_archive_weather_at_vitrael, :manifests_at, :cold_archive_weather, :vitrael
