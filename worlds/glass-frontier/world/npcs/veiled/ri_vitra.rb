npc :ri_vitra do
  name "Ri'vitra"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Ri'vitra tests material traces from Vitrael, Wash Four, Whitefoot, and Xyloathax on one resonant bench."
end

relate :rel_ri_vitra_at_vitrael, :operates_in, :ri_vitra, :vitrael
relate :rel_ri_vitra_at_wash_four, :operates_in, :ri_vitra, :wash_four
relate :rel_ri_vitra_at_whitefoot, :operates_in, :ri_vitra, :whitefoot
relate :rel_ri_vitra_at_xyloathax, :operates_in, :ri_vitra, :xyloathax
