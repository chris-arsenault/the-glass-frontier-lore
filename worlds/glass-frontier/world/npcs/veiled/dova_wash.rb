npc :dova_wash do
  name "Dova Wash"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Dova Wash carries cleaned pressure cloth from Wash Four to Thirty-One in sealed reed cases."
end

relate :rel_dova_wash_at_bay_thirty_one, :operates_in, :dova_wash, :bay_thirty_one
relate :rel_dova_wash_at_wash_four, :operates_in, :dova_wash, :wash_four
