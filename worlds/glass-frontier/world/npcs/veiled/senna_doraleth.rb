npc :senna_doraleth do
  name "Senna Doraleth"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Senna Doraleth checks Verathi freight seals against the copies held in Sithari."
end

relate :rel_senna_doraleth_at_verathi, :operates_in, :senna_doraleth, :verathi
relate :rel_senna_doraleth_at_sithari, :operates_in, :senna_doraleth, :sithari
