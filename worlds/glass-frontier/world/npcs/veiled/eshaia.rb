npc :eshaia do
  name "Eshaia"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Eshaia measures the warmth retained by Vitrael glass after it crosses into Ashenmaw."
end

relate :rel_eshaia_at_vitrael, :operates_in, :eshaia, :vitrael
relate :rel_eshaia_at_ashenmaw, :operates_in, :eshaia, :ashenmaw
