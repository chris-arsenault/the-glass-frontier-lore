npc :lith_vask do
  name "Lith Vask"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Lith Vask cuts replacement footing from Lithren stone for pressure frames in Vastine."
end

relate :rel_lith_vask_at_vastine, :operates_in, :lith_vask, :vastine
relate :rel_lith_vask_at_lithren, :operates_in, :lith_vask, :lithren
