npc :daro_venn do
  name "Daro Venn"
  summary "Daro Venn is a senior route factor of the Pell Freight Assembly and the former Ratter captain who sponsored the Pell Cut array test."
  subkind :leader
  occupation "Senior route factor of the Pell Freight Assembly"
  type_of :humans
  belongs_to :culture, :hab_worlder
  descriptive_identity disposition:
    "Daro deals in particulars — which yard can make the repair, which " \
    "master will take a hard return load, which crew has spent its " \
    "tolerance for risk — and defends a past decision sooner than he " \
    "apologizes for it."
  tags :trade, :salvage, :transport, :resonance
  prominence :recognized

  prose <<~PROSE
    Senior route factor of the #{ref :pell_freight_assembly, "Pell Freight Assembly"}, former #{encyclopedia_ref :ratters, "Ratter"} captain, and the public sponsor of the four-array test at #{ref :pell_cut, "Pell Cut"}. Daro's case for the test was simple: machines should absorb the losses that crews had been carrying home.

    He knew the machinery and the people who worked it. That knowledge made the proposal credible, won the vote, and left him answerable when the synchronized arrays formed a boundary.
  PROSE
  prose <<~PROSE, section: :history, heading: "From Claims to Routes"
    Daro flew small claims before he brokered them. He earned a long-rat's trust by finding buyers who honored mass grades after delivery and by refusing contracts whose rescue coverage existed only on paper. When the Assembly formed, he brought in crews that would not otherwise have joined a freight institution.

    Route work suited him. He remembers which yard can repair an old cutter head, which master will accept a difficult return load, and which crew has already spent its tolerance for risk. His authority rests on those particulars. Assembly meetings become hostile when he treats a schedule as more important than one of them.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Pell"
    Daro argued that four synchronized arrays would finish the Pell claims quickly and reduce total exposure. He accepted the stop conditions proposed by the #{encyclopedia_ref :tuners, "Tuners"}, then let the test continue through early signs that separated receivers were answering in the same cadence. By the time he ordered shutdown, the pattern held without the arrays.

    During the closure he stayed at Pell Cut, opened the Assembly's records, and assigned its haulers and repair crews to the Council. Some members kept him in office because he did this. Others voted against him because it came after the decision that mattered.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Daro works from the Assembly yard in #{ref :glasswake, "Glasswake"} and spends every sixth shift at Pell. He signs each cordon payment before the route council releases ordinary freight accounts. He also continues to defend remote cutting, now with isolated clocks and local stop authority.

    Crews still take his contracts. They read the hazard lines more closely than they once did.
  PROSE

  gm_note :appears, "Route work runs through him, and so does the memory of which yard can repair an old cutter head, which master will take a difficult return load, " \
                    "and which crew has already spent its tolerance for risk. He is at the Glasswake yard five shifts in six and at Pell on the sixth."
  gm_note :complicates, "He signs each cordon payment before the route council releases ordinary freight accounts, " \
                        "so Assembly business a crew brings queues behind the bill for a boundary he sponsored."
  gm_note :triggered_by, "Raising the four-array test gets a defense of remote cutting with isolated clocks and local stop authority rather than an apology. " \
                         "Treating a schedule as more important than a member turns an Assembly meeting hostile, and some of the people in it voted against him."
end

relate :rel_daro_leads_pell_assembly, :leads, :daro_venn, :pell_freight_assembly, since: 2429 do
  prose "Daro is the Assembly's elected senior route factor and speaks for its five-seat route council."
end
relate :rel_daro_based_in_glasswake, :located_in, :daro_venn, :glasswake, since: 2416 do
  prose "He works from the common freight yard in #{ref :glasswake, "Glasswake"}."
end
relate :rel_daro_member_pell_assembly, :member_of, :daro_venn, :pell_freight_assembly, since: 2416 do
  prose "His voting share is the same size as any other working member's."
end
relate :rel_daro_participated_pell_four, :participated_in, :daro_venn, :pell_four do
  prose "He sponsored the synchronized test, delayed its shutdown, and directed Assembly support during the closure."
end
