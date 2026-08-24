phenomenon :room_rain do
  name "Room Rain"
  summary "Room Rain is a displacement catastrophe in Xyloathax that drops furniture and wall panels from shifted chambers into occupied streets."
  subkind :catastrophe
  status :complete
  prominence :marginal
  veiled "Room Rain drops furniture and wall panels from displaced chambers into occupied Xyloathax streets."
end

relate :rel_room_rain_at_xyloathax, :manifests_at, :room_rain, :xyloathax
relate :rel_room_rain_at_gray_line, :manifests_at, :room_rain, :gray_line
