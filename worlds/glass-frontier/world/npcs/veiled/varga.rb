npc :varga do
  name "Varga"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Varga installs pressure steps in Kesh, Korvath, Kyther Range, and Ladderwell."
end

relate :rel_varga_at_kesh, :operates_in, :varga, :kesh
relate :rel_varga_at_korvath, :operates_in, :varga, :korvath
relate :rel_varga_at_kyther_range, :operates_in, :varga, :kyther_range
relate :rel_varga_at_ladderwell, :operates_in, :varga, :ladderwell
