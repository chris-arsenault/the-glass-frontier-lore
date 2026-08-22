npc :tarn_ash do
  name "Tarn Ash"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Tarn Ash carries refinery samples among Ashenmaw, Ashvane, Avar, and Thirty-One in sealed metal tubes."
end

relate :rel_tarn_ash_at_ashenmaw, :operates_in, :tarn_ash, :ashenmaw
relate :rel_tarn_ash_at_ashvane, :operates_in, :tarn_ash, :ashvane
relate :rel_tarn_ash_at_avar, :operates_in, :tarn_ash, :avar
relate :rel_tarn_ash_at_bay_thirty_one, :operates_in, :tarn_ash, :bay_thirty_one
