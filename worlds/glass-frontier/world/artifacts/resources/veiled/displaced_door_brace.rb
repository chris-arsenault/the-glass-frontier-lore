resource :displaced_door_brace do
  name "Displaced-Door Brace"
  subkind :infrastructure
  status :complete
  prominence :marginal
  veiled "A displaced-door brace holds two incompatible room edges apart while people and furniture pass between them."
end

relate :rel_displaced_door_brace_at_xyloathax, :sourced_from, :displaced_door_brace, :xyloathax
relate :rel_displaced_door_brace_at_gray_line, :sourced_from, :displaced_door_brace, :gray_line
