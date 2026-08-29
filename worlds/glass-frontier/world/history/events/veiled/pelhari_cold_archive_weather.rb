incident :pelhari_cold_archive_weather do
  name "Pelhari Cold Archive Weather"
  summary "Pelhari Cold Archive Weather is a resonance phenomenon that lays readable frost on sealed hulls near the passage of a Lithren text."
  type_of :cold_archive_weather
  subkind :incident
  status :complete
  prominence :marginal
  veiled "Pelhari Cold Archive Weather is a resonance phenomenon that lays readable frost on sealed hulls near the passage of a Lithren text."
end
relate :rel_cold_archive_weather_at_lithren, :manifests_at, :pelhari_cold_archive_weather, :lithren
relate :rel_cold_archive_weather_at_vastine, :manifests_at, :pelhari_cold_archive_weather, :vastine
relate :rel_cold_archive_weather_at_pelhari, :manifests_at, :pelhari_cold_archive_weather, :pelhari
relate :rel_cold_archive_weather_at_vitrael, :manifests_at, :pelhari_cold_archive_weather, :vitrael
