npc :kest_bell do
  name "Kest Bell"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Kest Bell carries latch pins from Latch to Far Bell and returns with bell-metal filings."
end

relate :rel_kest_bell_at_latch, :operates_in, :kest_bell, :latch
relate :rel_kest_bell_at_far_bell, :operates_in, :kest_bell, :far_bell
