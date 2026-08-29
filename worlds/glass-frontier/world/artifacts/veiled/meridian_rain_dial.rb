artifact :meridian_rain_dial do
  name "Meridian Rain Dial"
  summary "Meridian Rain Dial is a weather instrument used at Hab Meridian and Glasswake. Its dry glass face turns green before a resonance shower capable of fouling crops."
  subkind :instrument
  type_of :field_instrument
  status :complete
  prominence :marginal
  veiled "Meridian's rain dial predicts a crop-fouling resonance shower by turning its dry glass face green."
end

relate :rel_meridian_rain_dial_at_hab_meridian, :operates_in, :meridian_rain_dial, :hab_meridian
relate :rel_meridian_rain_dial_at_glasswake, :operates_in, :meridian_rain_dial, :glasswake
