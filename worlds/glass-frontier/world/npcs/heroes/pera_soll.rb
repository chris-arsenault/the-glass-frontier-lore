npc :pera_soll do
  name "Pera Soll"
  subkind :specialist
  occupation "Retired ringglass array foreman"
  specialty "Coupled-field maintenance"
  species "human"
  culture "Hab-Worlder"
  tags :resonance, :ringglass, :salvage
  prominence :marginal
  status :complete

  prose <<~PROSE
    The foreman who taught #{ref :lira_vashtenri, "Lira Vashtenri"} at #{ref :crowncut_refinery, "Crowncut Refinery"}. Pera Soll could not sense a drifting array as Lira did, but he believed her early warnings and gave her the maintenance time to prove them. Crowncut's unusually clean service books exist because he recorded her corrections instead of folding them into ordinary shift work.

    Soll retired to #{ref :korvath, "Korvath"} before the Silent Bloom. He keeps the original Crowncut log sheets and refuses Coremark offers for them. Council engineers visit when Lira's later methods need to be traced back to the refinery equipment that taught her.
  PROSE

  gm_note :appears, "Anyone tracing containment practice back to the equipment that taught it arrives at a retired foreman's house on #{ref :korvath, "Korvath"}, where the original Crowncut sheets are kept in order. Soll reads them out and explains what the gauges missed; the paper does not leave the room."
  gm_note :triggered_by, "Offer money for the log sheets and Soll sets the offer beside the ones #{ref :coremark, "Coremark"} has made. He goes on answering questions about the arrays and copies nothing afterwards, and Council engineers hear who asked on their next visit."
  gm_note :complicates, "Soll reads no field himself, so when an attuned character says an array is drifting he asks for a description, writes it down, and clears the maintenance time to act on it. The record other engineers argue with later says what the character said, not what the instruments showed."
end

relate :rel_pera_soll_located_in_korvath, :located_in, :pera_soll, :korvath do
  prose "Soll lives in retirement on #{ref :korvath, "Korvath"}."
end

relate :rel_pera_soll_employed_by_coremark, :employed_by, :pera_soll, :coremark, till: 2372 do
  prose "He ran Crowncut's array crews for Coremark until his retirement."
end

relate :rel_pera_soll_taught_lira, :taught, :pera_soll, :lira_vashtenri do
  prose "He taught Lira the refinery's array work and preserved the records that made her corrections legible to later engineers."
end
