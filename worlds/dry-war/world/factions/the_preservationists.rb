faction :the_preservationists do
  name "The Preservationists"
  tags :resistance, :legitimacy, :governance
  prominence :recognized

  prose <<~PROSE
    The Gobi enclaves, and not guerrillas in any sense they would accept. Most Preservationists consider themselves the legitimate continuation of the Chinese state, holding it in trust until it can return.

    Their foundational claim is constitutional rather than biological: the network has broken the relationship between ruler and ruled, because a human official can no longer demonstrate that a decision originated in human judgement. A government whose decisions may come from the Great Root has no authority.
  PROSE

  prose <<~PROSE, section: :culture, heading: "Continuity"
    Their archives hold statutes, examination papers, census records, engineering manuals, Party documents, court rulings and classical texts. Most have no military use. Much of it is held in #{ref :memory_ceramics, "memory ceramics"}, because a living library can be reached. The largest holdings stand in the #{ref :juyan_ceramic_vault, "ceramic vault at Juyan"}, where more than ninety thousand pieces wait in salt-sealed coffers.

    Every settlement still holds local assemblies and examinations for public office. Births, marriages and deaths remain part of a continuous public record even when the paper must cross a desert to reach the next town. The institutions named at the top of those pages may no longer exist anywhere else.

    They keep these records because a state survives only while people can name who acted in its name and challenge what they did.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "Who They Fight"
    Not, primarily, the #{ref :the_great_root, "Great Root"} — the desert does most of that. Their sharpest conflicts are with anyone proposing that the enclaves declare independence, with foreign intelligence services offering help on those terms, and with the #{ref :the_gatekeepers, "Gatekeepers"}, whose entire practice concedes that some symbiosis is useful.

    They prohibit direct negotiation with the #{ref :the_brokers, "Pearl River brokers"} and still depend on goods the same houses carry through Yumen.
  PROSE
end
