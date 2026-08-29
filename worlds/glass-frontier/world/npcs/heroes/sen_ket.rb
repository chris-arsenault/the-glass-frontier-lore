npc :sen_ket do
  name "Sen'ket"
  summary "Sen'ket is the passive-array mechanic who maintains Issel's longest surviving receiver baseline."
  subkind :specialist
  occupation "Passive-array mechanic"
  specialty "Timing long receiver baselines through damaged ringglass"
  type_of :gnomes
  descriptive_identity disposition:
    "Sen'ket keeps a section comparison running while talking, so replies " \
    "arrive at the cart's pace and out of order. A question about a past " \
    "failure opens the numbered drawers beneath the array."
  status :complete
  tags :navigation, :archives, :"signal-freq", :training
  prominence :marginal

  prose <<~PROSE
    Sen'ket maintains the longest surviving receiver baseline at #{ref :issel, "Issel"}. They travel its length in a hand cart, comparing each section against a mechanical clock carried behind two layers of ceramic shielding.

    Their repair method pairs new cable with fragments cut from the failed section. The fragment retains the local signal response and lets the replacement settle into the same delay. Sen'ket stores each removed piece in a numbered drawer beneath the array, turning the repair history into a physical timing record. The first three isolated listening beads they placed along Issel's extended guide cable received the Long Note before their cables were connected to the dish.
  PROSE

  gm_note :appears, "Sen'ket is somewhere along the baseline with the hand cart and the shielded clock, and keeps a section comparison running while talking. " \
                    "Breaking the run costs that section's timing, so answers come at the cart's pace and out of order."
  gm_note :triggered_by, "Ask when a stretch of the array last failed and Sen'ket opens the numbered drawers beneath it, where every removed cable fragment is kept in order. " \
                         "The fragments date the repair and still hold the signal response of the run they were cut from."
  gm_note :complicates, "Sen'ket's first three listening beads took the #{ref :long_note, "Long Note"} before their cables reached the dish, so they will not accept a disconnected instrument as proof that nothing was heard. " \
                        "Any test a party proposes gains a disconnected control bead before Sen'ket will argue from its result."
end

relate :rel_sen_ket_located_in_issel, :located_in, :sen_ket, :issel, since: 2435 do
  prose "Sen'ket maintains Issel's longest passive receiver baseline."
end


relate :rel_sen_ket_studies_long_note, :studies, :sen_ket, :long_note, since: 2435 do
  prose "Sen'ket uses isolated listening beads to test the three paths preserved in the Long Note."
end
