transport :narrow_wake do
  name "Narrow Wake"
  summary "Narrow Wake is a courier kite serving Accord Shore, Verathi, and Keelward. Its hull records every course correction as a bright scar."
  subkind :vessel
  status :complete
  prominence :marginal
  veiled "Narrow Wake is a courier kite whose hull records every course correction as a bright scar."
end

relate :rel_narrow_wake_at_accord_shore, :operates_in, :narrow_wake, :accord_shore
relate :rel_narrow_wake_at_verathi, :operates_in, :narrow_wake, :verathi
relate :rel_narrow_wake_at_keelward, :operates_in, :narrow_wake, :keelward
