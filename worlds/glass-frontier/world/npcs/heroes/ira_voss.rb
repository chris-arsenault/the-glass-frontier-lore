npc :ira_voss do
  name "Ira Voss"
  subkind :specialist
  occupation "Salvage intake reader"
  specialty "Occupied hulls, crew records, and live ship systems"
  species "human"
  culture "Hab-Worlder"
  status :complete
  tags :salvage, :transport, :archives
  prominence :marginal

  prose <<~PROSE
    Ira Voss leads the first inhabited-hull inspection at #{ref :brake, "Brake"}. She enters after pressure and chemical crews and before cutters mark a line. Her team finds crew records, sleeping passengers, medical systems, domestic compartments, and the signs that a derelict still functions as somebody's home. Voss carries a board divided into people, claims, hazards, and useful systems; a vessel remains in intake while any mark stays under people. Her reading sent four ships toward ward surveys and moved three supposed cargo wrecks into quarantine.

    She is working through the medical vessel beside Forty. The twelve recovery capsules name patients in current Hab-Worlder script, while the cabinet records use a Bitter Reach clinical hand.
  PROSE
end
relate :rel_ira_voss_located_in_brake, :located_in, :ira_voss, :brake, since: 2435 do
  prose "Ira Voss performs Brake's first occupied-hull inspection."
end
