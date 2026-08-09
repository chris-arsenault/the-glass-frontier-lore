faction :the_preservationists do
  name "The Preservationists"
  tags :resistance, :legitimacy, :governance
  prominence :recognized

  prose <<~PROSE
    The Gobi enclaves, and not guerrillas in any sense they would accept. Most Preservationists consider themselves the legitimate continuation of the Chinese state, holding it in trust until it can return.

    Their foundational claim is constitutional rather than biological: the network has broken the relationship between ruler and ruled, because a human official can no longer demonstrate that a decision originated in human judgement. A government that cannot distinguish its own intentions from another organism's does not possess authority. It possesses a process.
  PROSE

  prose <<~PROSE, section: :culture, heading: "Continuity"
    They maintain archives at a scale that makes no military sense: statutes, examination papers, census records, engineering manuals, Party documents, court rulings, classical texts. Much of it is held in #{ref :memory_ceramics, "memory ceramics"}, because a library that is alive can be reached. The largest holdings are at #{ref :juyan, "Juyan"}, where #{ref :entry_into_the_register, "a piece enters the register"} as an object — seal, mass, condition, shelf address — before anyone has read a line of it.

    Every settlement keeps bureaucratic ritual that looks absurd under siege. Household registration. Local assemblies. Written petitions. Examinations for public office, marked and filed. Documents issued in the name of institutions that may no longer exist anywhere else.

    A foreign observer sees pointless administration. The Preservationists see the thing itself, and treat the paperwork the way another culture would treat a flag.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "Who They Fight"
    Not, primarily, the #{ref :the_great_root, "Great Root"} — the desert does most of that. Their sharpest conflicts are with anyone proposing that the enclaves declare independence, with foreign intelligence services offering help on those terms, and with the #{ref :the_gatekeepers, "Gatekeepers"}, whose entire practice concedes that some symbiosis is useful.

    They also refuse, absolutely, to negotiate with the #{ref :the_brokers, "Pearl River brokers"}, while quietly depending on what the brokers move.
  PROSE
end
