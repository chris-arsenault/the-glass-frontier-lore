npc :ren_gray do
  name "Ren Gray"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Ren Gray resets signal latches along Gray Line and carries the failed catches back to Latch."
end

relate :rel_ren_gray_at_latch, :operates_in, :ren_gray, :latch
relate :rel_ren_gray_at_gray_line, :operates_in, :ren_gray, :gray_line
