npc :nara_velis do
  name "Nara Velis"
  summary "Nara Velis is a legal courier carrying sealed witness accounts between Accord Shore and Verathi."
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Nara Velis carries sealed witness accounts between Accord Shore and Verathi in a case chained to her wrist."
end

relate :rel_nara_velis_at_accord_shore, :operates_in, :nara_velis, :accord_shore
relate :rel_nara_velis_at_verathi, :operates_in, :nara_velis, :verathi
