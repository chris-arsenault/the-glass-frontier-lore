npc :jorin_meraleth do
  name "Jorin Meraleth"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Jorin Meraleth carries Accord notices through Ashenmaw, Ashvane, and Avar with the local replies bound beneath each seal."
end

relate :rel_jorin_meraleth_at_accord_shore, :operates_in, :jorin_meraleth, :accord_shore
relate :rel_jorin_meraleth_at_ashenmaw, :operates_in, :jorin_meraleth, :ashenmaw
relate :rel_jorin_meraleth_at_ashvane, :operates_in, :jorin_meraleth, :ashvane
relate :rel_jorin_meraleth_at_avar, :operates_in, :jorin_meraleth, :avar
