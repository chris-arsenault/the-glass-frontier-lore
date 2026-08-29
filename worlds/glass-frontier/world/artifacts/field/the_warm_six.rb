artifact :the_warm_six do
  name "The Warm Six"
  summary "The Warm Six are Nara Pell's matched blue-loam cultures, kept in separate rooms around Seren's warm axis after two stable medicinal forms appeared."
  subkind :artifact
  type_of :blue_loam
  status :complete
  tags :ecology, :materials, :trade
  prominence :marginal

  descriptive_identity(
    appearance: "Six matched cultures occupying separate warm beds around Seren's axis, each descended from the same sealed reserve.",
    handling: "Pell keeps the exchange lot closed while resident growers tend matched samples under the same water, temperature, and cultivation conditions.",
    risks: "One form calms damaged nerves and encourages slow regrowth; the other drives rapid sensation through scar tissue and prevents sleep. The two remain identical to the eye and in their recorded ancestry."
  )

  prose <<~PROSE
    Blue loam taken from two adjacent beds now produces different medicines. One calms damaged nerves and encourages slow regrowth. The other drives rapid sensation through scar tissue and leaves the patient unable to sleep. Both beds descend from the same sealed reserve and share water, temperature, and cultivation crews.

    Pell has closed the exchange lot and issued matched samples to six resident growers. Their first cultures divide along the same line as the trial beds. The difference travels with the loam.
  PROSE

  gm_note :appears, "The six cultures occupy separate rooms around Seren's warm axis while the exchange lot remains closed."
  gm_note :triggered_by, "Any patient treated from one of the cultures raises the question of which bed the stock came from: one form calms damaged nerves, while the other drives rapid sensation through scar tissue and prevents sleep."
  gm_note :complicates, "A cracked or swapped cultivation bar leaves appearance and recorded ancestry unable to distinguish the two forms."
end

relate :rel_the_warm_six_located_in_seren, :located_in, :the_warm_six, :seren do
  prose "Nara Pell keeps the six matched cultures in separate rooms around Seren's warm axis."
end

relate :rel_nara_pell_studies_the_warm_six, :studies, :nara_pell, :the_warm_six, since: 2435 do
  prose "Nara Pell runs the matched blue-loam cultures around Seren's axis."
end
