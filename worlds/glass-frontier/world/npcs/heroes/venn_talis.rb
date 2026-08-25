npc :venn_talis do
  name "Venn Talis"
  summary "Venn Talis is a retired contact surveyor and the sole surviving member of the team that forced entry into Hab Coriolis."
  subkind :npc
  status :complete
  tags :isolation, :diplomacy, :archives
  prominence :recognized
  occupation "Retired contact surveyor and witness to the Coriolis Breach"
  species "human"
  identity_source :species, :humans
  descriptive_identity disposition:
    "Venn engages only through written questions carried by an archive " \
    "office, never in person and never at short notice. Each reply " \
    "separates observation from inference and leaves unanswered what the " \
    "record cannot support."
  omit_facts :based_in

  prose <<~PROSE
    Venn Talis is the sole surviving member of the team that forced entry into Hab Coriolis during the Contested Reach. Their testimony established that the sealed community had its own law, food system, obligations, and account of the surrounding world. The contact team entered as rescuers and appeared inside that account as an invasion.

    Venn gave the complete statement once to a public inquiry and answered technical questions during the first sovereignty hearings. They then left survey work, refused office, and stopped appearing at commemorations held in the dead team's name.
  PROSE

  prose <<~PROSE, section: :history, heading: "The Coriolis Record"
    The surviving record combines Venn's spoken testimony, suit telemetry, the team's entry plan, and the outer-hatch recording. Venn required later copies to preserve all four. The suit record shows the team's fear and confusion. The plan shows that the faction had already described the inhabitants as stranded people unable to consent.

    Accord mediators study the record before approaching a community that restricts contact. Venn permits that use and refuses condensed versions that turn Coriolis into a warning about hostile habs.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Limited Correspondence"
    Venn answers written questions from mediators and closed-community delegates through the Echo Ledger Conclave's Sithari archive office. The replies distinguish observation from inference and leave questions unanswered when the record does not support an answer.

    Requests to identify the faction that mounted the entry receive the same response: its later name matters less than the authority it claimed at the hatch. Venn has not joined the effort to remove the name from sealed inquiry records.
  PROSE

  gm_note :appears, "Venn is reached by written question through the #{ref :echo_ledger_conclave, "Echo Ledger Conclave"}'s Sithari archive office, never in person and never at short notice. The reply separates what the record shows from what Venn inferred, and leaves anything the record cannot support unanswered."
  gm_note :triggered_by, "Asking which faction mounted the entry produces the same sentence every time: the name matters less than the authority it claimed at the hatch. The name survives in the sealed inquiry records, and there is a standing effort to strike it that Venn has neither joined nor opposed."
  gm_note :complicates, "Venn refuses condensed versions of the Coriolis record, so a party wanting a quick briefing gets all four parts or none: the spoken testimony, the suit telemetry, the team's entry plan, and the outer-hatch recording."
end

relate :rel_venn_talis_cooperates_with_conclave, :cooperates_with, :venn_talis, :echo_ledger_conclave do
  prose "The Conclave's Sithari office carries Venn's complete replies to mediators and preserves their supporting record."
  descriptive_identity(
    basis:
      "Written questions in, written answers out, with the archive " \
      "office holding all four parts of the Coriolis record — " \
      "testimony, suit telemetry, entry plan, and hatch recording — " \
      "intact under Venn's copy conditions.",
    limits:
      "The office is a channel, not an agent. Venn meets no one, " \
      "answers on no schedule, and the Conclave may not issue the " \
      "condensed versions its readers keep requesting — the record " \
      "travels whole or it does not travel."
  )
end

relate :rel_venn_talis_taught_accord, :taught, :venn_talis, :tempered_accord do
  prose "Venn's testimony taught the Accord's early mediators to treat a closed community's own law as the first fact of contact."
end
