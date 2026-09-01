transport :blue_roadspider do
  name "Blue Spider"
  summary "Blue Spider is a six-legged freight vehicle used on broken Avar roads. Independently weighted legs carry loads between Blue Step Works and Marker House Twelve."
  subkind :transport
  type_of :roadspider
  status :complete
  prominence :marginal
  veiled "Blue Spider walks freight over broken Avar paving on six independently weighted legs."
end

relate :rel_blue_roadspider_at_avar, :operates_in, :blue_roadspider, :avar
relate :rel_blue_roadspider_at_blue_step_works, :operates_in, :blue_roadspider, :blue_step_works
relate :rel_blue_roadspider_at_marker_house_twelve, :operates_in, :blue_roadspider, :marker_house_twelve
