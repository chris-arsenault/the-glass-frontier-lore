npc :venn_talis do
  name "Venn Talis"
  subkind :npc
  status :complete
  tags :isolation, :diplomacy, :archives
  prominence :recognized
  occupation "Retired contact surveyor and witness to the Coriolis Breach"
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
    Venn answers written questions from mediators and closed-community delegates through an archive office. The replies distinguish observation from inference and leave questions unanswered when the record does not support an answer.

    Requests to identify the faction that mounted the entry receive the same response: its later name matters less than the authority it claimed at the hatch. Venn has not joined the effort to remove the name from sealed inquiry records.
  PROSE
end
