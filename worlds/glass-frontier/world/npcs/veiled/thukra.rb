npc :thukra do
  name "Thukra"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Thukra fits Ninth Kiln firebrick into Korvath pressure ovens and takes payment in unglazed bowls."
end

relate :rel_thukra_at_ninth_kiln, :operates_in, :thukra, :ninth_kiln
relate :rel_thukra_at_korvath, :operates_in, :thukra, :korvath
