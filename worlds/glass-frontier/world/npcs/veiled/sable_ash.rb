npc :sable_ash do
  name "Sable Ash"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Sable Ash hauls crucible brick from Ashvane to Crucible in a patched two-seat flitter."
end

relate :rel_sable_ash_at_crucible, :operates_in, :sable_ash, :crucible
relate :rel_sable_ash_at_ashvane, :operates_in, :sable_ash, :ashvane
