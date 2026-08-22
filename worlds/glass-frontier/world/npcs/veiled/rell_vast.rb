npc :rell_vast do
  name "Rell Vast"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Rell Vast recovers pressure maps from Vastine and verifies their oldest marks against Lithren stone."
end

relate :rel_rell_vast_at_vastine, :operates_in, :rell_vast, :vastine
relate :rel_rell_vast_at_lithren, :operates_in, :rell_vast, :lithren
