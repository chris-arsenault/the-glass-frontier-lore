npc :orr_senn do
  name "Orr Senn"
  summary "Orr Senn is the source-line reader who tracks pressure, tone, and delivery time through Eleven's main water system."
  subkind :specialist
  occupation "Source-line reader"
  specialty "Water pressure, heat drift, and coupled structural tone"
  species "human"
  culture "Hab-Worlder"
  status :complete
  tags :household, :resonance, :training
  prominence :marginal

  prose <<~PROSE
    Orr Senn reads the main water line at #{ref :eleven, "Eleven"}. He begins each shift at the source gate, records pressure and tone, then walks downstream until his readings match the outlet board. He carries a folding chart marked with the travel time between every valve and the name of the person working it.

    Senn trained at Shaft Nine and lives at Shaft Three. That position makes him useful during disputes over upstream adjustments: he can show when a change reached each cistern and how much came from heat, pumping, or ordinary household draw. His chart for the Shaft Two trial has a second machine ruled beside the first and every downstream valve left in pencil. During the same season he carries Eleven's readings to Five Landing, where Holl's moving-wall records expose errors that a fixed line does not.
  PROSE

  gm_note :appears, "Senn's folding chart names the person working every valve on the line as well as the travel time between them, which makes him the quickest way in #{ref :eleven, "Eleven"} to establish who touched something and at what hour."
  gm_note :triggered_by, "Blaming a pressure change on someone upstream gets it taken apart: Senn separates heat, pumping, and ordinary household draw, and gives the hour the change reached each cistern. He will not endorse a reading he has not walked from the source gate."
  gm_note :complicates, "During pipe exchanges he carries Eleven's readings to #{ref :five_landing, "Five Landing"}, where Holl's moving-wall records catch errors a fixed line hides, so a quiet dispute in one hab reappears in the other in front of two water boards."
end
relate :rel_orr_senn_located_in_eleven, :located_in, :orr_senn, :eleven, since: 2435 do
  prose "Orr Senn works the full source-to-outlet route through Eleven."
end


relate :rel_orr_senn_operates_holl, :operates_in, :orr_senn, :holl, since: 2435 do
  prose "Orr Senn joins Holl's water crews for seasonal readings along the moving wall."
end

relate :rel_orr_senn_attuned_to_resonance, :attuned_to, :orr_senn, :resonance do
  prose "Orr Senn separates structural-tone drift from pressure, heat, and household draw."
end
