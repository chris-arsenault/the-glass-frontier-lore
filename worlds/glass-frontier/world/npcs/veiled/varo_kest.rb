npc :varo_kest do
  name "Varo Kest"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Varo Kest follows fracture glass from the Fracture through Vastine, Vitrael, and Ashenmaw to compare how each place alters it."
end

relate :rel_varo_kest_at_the_fracture, :operates_in, :varo_kest, :the_fracture
relate :rel_varo_kest_at_vastine, :operates_in, :varo_kest, :vastine
relate :rel_varo_kest_at_vitrael, :operates_in, :varo_kest, :vitrael
relate :rel_varo_kest_at_ashenmaw, :operates_in, :varo_kest, :ashenmaw
