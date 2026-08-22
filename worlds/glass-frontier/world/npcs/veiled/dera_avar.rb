npc :dera_avar do
  name "Dera Avar"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Dera Avar carries machine parts among Avar, Thirty-One, Blue Step Works, and Carom in numbered crates."
end

relate :rel_dera_avar_at_avar, :operates_in, :dera_avar, :avar
relate :rel_dera_avar_at_bay_thirty_one, :operates_in, :dera_avar, :bay_thirty_one
relate :rel_dera_avar_at_blue_step_works, :operates_in, :dera_avar, :blue_step_works
relate :rel_dera_avar_at_carom, :operates_in, :dera_avar, :carom
