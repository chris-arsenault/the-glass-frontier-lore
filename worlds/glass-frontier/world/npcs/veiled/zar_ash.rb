npc :zar_ash do
  name "Zar'ash"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Zar'ash brings Xyloathax tissue readings to Accord Shore, Ashenmaw, and Ashvane for independent comparison."
end

relate :rel_zar_ash_at_xyloathax, :operates_in, :zar_ash, :xyloathax
relate :rel_zar_ash_at_accord_shore, :operates_in, :zar_ash, :accord_shore
relate :rel_zar_ash_at_ashenmaw, :operates_in, :zar_ash, :ashenmaw
relate :rel_zar_ash_at_ashvane, :operates_in, :zar_ash, :ashvane
