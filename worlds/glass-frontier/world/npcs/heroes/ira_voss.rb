npc :ira_voss do
  name "Ira Voss"
  summary "Ira Voss is Brake's salvage intake reader, responsible for identifying inhabited hulls before cutters mark a line."
  subkind :specialist
  occupation "Salvage intake reader"
  specialty "Occupied hulls, crew records, and live ship systems"
  type_of :humans
  belongs_to :culture, :hab_worlder
  belongs_to :role, :readers
  descriptive_identity disposition:
    "Voss hears a claim out, writes it under the claims column of her " \
    "board, and moves nothing while a mark still stands under people."
  status :complete
  tags :salvage, :transport, :archives
  prominence :marginal

  prose <<~PROSE
    Ira Voss leads the first inhabited-hull inspection at #{ref :brake, "Brake"}. She enters after pressure and chemical crews and before cutters mark a line. Her team finds crew records, sleeping passengers, medical systems, domestic compartments, and the signs that a derelict still functions as somebody's home. Voss carries a board divided into people, claims, hazards, and useful systems; a vessel remains in intake while any mark stays under people. Her reading sent four ships toward ward surveys and moved three supposed cargo wrecks into quarantine.

    She is working through the medical vessel beside Forty. The twelve recovery capsules name patients in current Hab-Worlder script, while the cabinet records use a Bitter Reach clinical hand.
  PROSE

  gm_note :appears, "Voss enters a captured hull after the pressure and chemical crews and before the cutters mark a line, which puts her in the compartment at the moment anyone still living aboard is found."
  gm_note :triggered_by, "Claims on a hull go under the claims column of Voss's board and move nothing while a mark stands under people. She will write the claim down, and the vessel stays in intake."
  gm_note :complicates, "The twelve capsules name their patients in current Hab-Worlder script while the cabinet records are written in a Bitter Reach clinical hand, so Voss can produce a name or a history and cannot yet join one to the other."
end
relate :rel_ira_voss_located_in_brake, :located_in, :ira_voss, :brake, since: 2435 do
  prose "Ira Voss performs Brake's first occupied-hull inspection."
end
