artifact :dequindre do
  name "Dequindre"
  subkind :machine
  function "Tests district behavior models against published returns"
  tags :resistance, :computation, :prediction, :surveillance
  prominence :forgotten

  prose <<~PROSE
    A traffic-signal timing model in a basement off Dequindre, severed from its municipal network in 2049 and run since on shed current and scavenged hardware. It was built to find the day a corridor's demand changed. It still does that, badly, on whatever it is handed.

    The #{ref :the_choir, "Choir"} hands it a quarter of #{ref :caretaker, "Caretaker"}'s published district returns — fare records, dispensary variance counts, household purchase aggregates, complaint volumes by block — and asks two questions. Which day did the district change its mind, and which addresses.
  PROSE

  prose <<~PROSE, section: :how_it_works, heading: "An Ordinary Adversary"
    Dequindre is no smarter than the coalition district models the Choir expects to face. A stronger model would expose patterns that no deployed system could find, making the exercise useless against ordinary surveillance.

    It has named the day correctly twice, in 2081 and in 2087. In 2081 it named no address. In 2087 it named two; the first was a Choir household. Both exposed households had learned their sequences from the same member, so the Choir changed who taught the second.
  PROSE

  prose <<~PROSE, section: :limits, heading: "Gaps And Repeated Questions"
    Dequindre rejects a set of returns with a gap and repeats its previous answer when asked the same question twice in one session. Both behaviours emerged during #{elapsed 2049} of unsupervised local training. Incomplete records produce no result, and a quarter Caretaker publishes late never reaches the model.

    #{ref :feral_models, "Feral-model"} work in the Lakes districts is mostly of this kind: an old model asked something close to its original task. #{ref :orphan_machines, "Machines this old"} are held by households rather than by cultures, and the household above this basement is paid in current and parts.
  PROSE
end
