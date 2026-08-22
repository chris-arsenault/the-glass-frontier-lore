npc :venna_aleth do
  name "Venna Aleth"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Venna Aleth delivers Accord Shore rulings to Verathi and returns with the local annotations intact."
end

relate :rel_venna_aleth_at_verathi, :operates_in, :venna_aleth, :verathi
relate :rel_venna_aleth_at_accord_shore, :operates_in, :venna_aleth, :accord_shore
