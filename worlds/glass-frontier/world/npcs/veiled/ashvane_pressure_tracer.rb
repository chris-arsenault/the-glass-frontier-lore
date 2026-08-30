npc :ashvane_pressure_tracer do
  name "The Ashvane Pressure Tracer"
  summary "The Ashvane Pressure Tracer retraces a pressure front hours after it crosses a sealed room."
  type_of :pressure_memory
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Ashvane Pressure Tracer retraces a pressure front hours after it crosses a sealed room."
end

relate :rel_pressure_memory_at_shadewell, :manifests_at, :ashvane_pressure_tracer, :shadewell
relate :rel_pressure_memory_at_south_shade, :manifests_at, :ashvane_pressure_tracer, :south_shade
