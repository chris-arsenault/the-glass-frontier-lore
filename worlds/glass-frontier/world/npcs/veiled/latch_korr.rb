npc :latch_korr do
  name "Latch Korr"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Latch Korr resets Latchhouse arrestors with cable fittings brought from the Keel."
end

relate :rel_latch_korr_at_third_latch, :operates_in, :latch_korr, :third_latch
relate :rel_latch_korr_at_keel, :operates_in, :latch_korr, :keel
