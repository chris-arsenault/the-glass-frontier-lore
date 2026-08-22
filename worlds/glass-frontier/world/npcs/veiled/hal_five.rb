npc :hal_five do
  name "Hal Five"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Hal Five keeps the cargo lifts at Holl and Five Landing on one shared maintenance calendar."
end

relate :rel_hal_five_at_holl, :operates_in, :hal_five, :holl
relate :rel_hal_five_at_five_landing, :operates_in, :hal_five, :five_landing
