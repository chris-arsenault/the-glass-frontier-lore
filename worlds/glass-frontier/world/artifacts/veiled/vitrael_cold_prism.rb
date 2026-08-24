artifact :vitrael_cold_prism do
  name "Vitrael Cold Prism"
  summary "Vitrael Cold Prism is a crystal-cutting instrument used at Vitrael and Ashenmaw. It clouds along every stressed plane to mark safe cuts through frozen crystal."
  subkind :instrument
  status :complete
  prominence :marginal
  veiled "The Vitrael Cold Prism marks safe cuts through frozen crystal by clouding along every stressed plane."
end

relate :rel_vitrael_cold_prism_at_vitrael, :operates_in, :vitrael_cold_prism, :vitrael
relate :rel_vitrael_cold_prism_at_ashenmaw, :operates_in, :vitrael_cold_prism, :ashenmaw
