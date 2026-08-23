npc :rings_twice do
  name "Rings-Twice"
  subkind :npc
  status :complete
  prominence :marginal
  veiled "Rings-Twice trades stories for spare parts and repeats each story differently at Wash Four and Carom."
end

relate :rel_rings_twice_at_wash_four, :operates_in, :rings_twice, :wash_four
relate :rel_rings_twice_at_carom, :operates_in, :rings_twice, :carom
