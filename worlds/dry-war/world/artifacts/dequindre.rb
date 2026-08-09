artifact :dequindre do
  name "Dequindre"
  tags :resistance, :computation, :prediction, :surveillance
  prominence :forgotten

  prose <<~PROSE
    A traffic-signal timing model in a basement off Dequindre, severed from its municipal network in 2049 and run since on shed current and scavenged plant. It was built to find the day a corridor's demand changed. It still does that, badly, on whatever it is handed.

    The #{ref :the_choir, "Choir"} hands it a quarter of #{ref :caretaker, "Caretaker"}'s published district returns — fare records, dispensary variance counts, household purchase aggregates, complaint volumes by block — and asks two questions. Which day did the district change its mind, and which addresses.
  PROSE

  prose <<~PROSE, section: :how_it_works, heading: "Wrong In The Useful Way"
    Its answers are wrong in the ways an ordinary adversary's answers are wrong, which is what the #{ref :the_seam_pass, "seam pass"} asks of a challenger. Something cleverer would fail every quarter and leave nothing to work on.

    It has named the day correctly twice, in 2081 and in 2087. In 2081 it named no address. In 2087 it named two, and the quarter failed on the first of them; the Choir's answer was to change how a second line may be taught against a first, and the two addresses were households whose lines had been taught by the same member.
  PROSE

  prose <<~PROSE, section: :limits, heading: "Its Two Conditions"
    It will not take a set of returns with a gap in it, and it will not answer the same question twice in a session — asked again, it returns its previous answer word for word. Both behaviours arrived somewhere in #{elapsed 2049} of unsupervised local training and nobody has tried to remove them. A courier therefore carries a complete quarter or comes back, and a quarter Caretaker publishes late is a quarter with no trace on it.

    #{ref :feral_models, "Feral-model"} work in the Lakes districts is mostly of this kind: not a model built for the question but an old one asked something adjacent to what it was built for. #{ref :orphan_machines, "Machines this old"} are held by households rather than by cultures, and the household above this basement is paid in current and parts and has never been told what the returns are for.
  PROSE
end
