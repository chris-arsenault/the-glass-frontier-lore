artifact :gray_line_door_brace do
  name "The Gray-Line Door Brace"
  summary "The Gray-Line Door Brace is temporary passage infrastructure sourced around Xyloathax and Gray Line. It holds incompatible room edges apart while people and furniture move between them."
  subkind :artifact
  type_of :splint
  status :complete
  prominence :marginal
  veiled "The Gray-Line Door Brace holds two incompatible room edges apart while people and furniture pass between them."
end

relate :rel_displaced_door_brace_at_xyloathax, :sourced_from, :gray_line_door_brace, :xyloathax
relate :rel_displaced_door_brace_at_gray_line, :sourced_from, :gray_line_door_brace, :gray_line
