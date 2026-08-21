npc :sen_ket do
  name "Sen'ket"
  subkind :specialist
  occupation "Passive-array mechanic"
  specialty "Timing long receiver baselines through damaged ringglass"
  species "gnome"
  culture "Gnomish"
  status :complete
  tags :navigation, :archives, :"signal-freq", :training
  prominence :marginal

  prose <<~PROSE
    Sen'ket maintains the longest surviving receiver baseline at #{ref :issel, "Issel"}. They travel its length in a hand cart, comparing each section against a mechanical clock carried behind two layers of ceramic shielding.

    Their repair method pairs new cable with fragments cut from the failed section. The fragment retains the local signal response and lets the replacement settle into the same delay. Sen'ket stores each removed piece in a numbered drawer beneath the array, turning the repair history into a physical timing record. The first three isolated listening beads they placed along Issel's extended guide cable received the Long Note before their cables were connected to the dish.
  PROSE
end

relate :rel_sen_ket_located_in_issel, :located_in, :sen_ket, :issel, since: 2435 do
  prose "Sen'ket maintains Issel's longest passive receiver baseline."
end


relate :rel_sen_ket_studies_long_note, :studies, :sen_ket, :long_note, since: 2435 do
  prose "Sen'ket uses isolated listening beads to test the three paths preserved in the Long Note."
end

relate :rel_sen_ket_attuned_to_resonance, :attuned_to, :sen_ket, :resonance do
  prose "Sen'ket matches replacement cable to the signal response retained by the failed section."
end
