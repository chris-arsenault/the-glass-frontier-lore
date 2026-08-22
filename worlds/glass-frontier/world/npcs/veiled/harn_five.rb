npc :harn_five do
  name "Harn Five"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Harn Five repairs Holl freight cradles with locking jaws salvaged at Five Landing."
end

relate :rel_harn_five_at_holl, :operates_in, :harn_five, :holl
relate :rel_harn_five_at_five_landing, :operates_in, :harn_five, :five_landing
