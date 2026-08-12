faction :the_preservationists do
  name "The Preservationists"
  subkind :resistance_network
  tags :resistance, :legitimacy, :governance
  prominence :recognized
  membership "Gobi enclaves that claim continuity with the Chinese state"
  organization "Local assemblies, examinations, archives and a continuous civil record"
  operating_method "Keeps institutions and records on paper and memory ceramic beyond the Great Root's reach"
  objective "Hold the Chinese state in trust until human officials can exercise accountable authority again"
  principal_risk "Their settlements prohibit direct broker dealings while depending on goods the same houses carry"

  prose <<~PROSE
    Gobi enclaves that consider themselves the legitimate continuation of the Chinese state. They hold its institutions in trust until the state can return.

    They hold that the network broke the relationship between ruler and ruled. A human official can no longer show which decisions began in human judgement, so the Preservationists grant those decisions no authority.
  PROSE

  prose <<~PROSE, section: :culture, heading: "Continuity"
    Their archives hold statutes, examination papers, census records, engineering manuals, Party documents, court rulings and classical texts. Most have no military use. Much of it is held in #{ref :memory_ceramics, "memory ceramics"}, because a living library can be reached. The largest holdings stand in the #{ref :juyan_ceramic_vault, "ceramic vault at Juyan"}, where more than ninety thousand pieces wait in salt-sealed coffers.

    Every settlement still holds local assemblies and examinations for public office. Births, marriages and deaths remain part of a continuous public record even when the paper must cross a desert to reach the next town. The institutions named at the top of those pages may no longer exist anywhere else.

    They keep these records because a state survives only while people can name who acted in its name and challenge what they did.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "Who They Fight"
    The desert keeps the #{ref :the_great_root, "Great Root"} out of most enclave ground. The Preservationists fight secessionists who want a new desert state, foreign intelligence services offering help on those terms, and the #{ref :the_gatekeepers, "Gatekeepers"}, whose medicine concedes that some symbiosis is useful.

    They prohibit direct negotiation with the #{ref :the_brokers, "Pearl River brokers"} and still depend on goods the same houses carry through Yumen.
  PROSE
end
