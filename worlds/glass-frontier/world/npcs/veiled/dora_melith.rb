npc :dora_melith do
  name "Dora Melith"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Dora Melith cleans Accord hearing pools and pockets the metal petitions that sink before they are read."
end

relate :rel_dora_melith_at_accord_shore, :operates_in, :dora_melith, :accord_shore
