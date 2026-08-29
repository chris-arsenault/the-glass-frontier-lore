encyclopedia :hushmaw do
  name "Hushmaw"
  summary "Hushmaws are Deep Shear predators that follow the resonance changes made by active perception. A Tuner reaching into the field gives one a path, first marked by a clean absence in the Deep's weak background."
  kind :lifeform
  subkind :anomaly
  status :complete
  topics :orbital, :danger, :resonance, :salvage, :mystery
  prevalence :uncommon
  appears_when all: { place: [:"realm:orbital"] }

  descriptive_identity(
    appearance: "A broad central membrane folded around a cord of muscle and clear cartilage, with lines of " \
                "sealed eyes across the outer surface. Near an active field the eyes open from the center " \
                "outward and the membrane spreads into a shallow dish facing the source; fed and folded, it " \
                "simply drifts.",
    behavior: "It waits in the Deep Shear's weak background and follows repeated acts of attention — a Tuner " \
              "rechecking one bearing, an array sweeping on a single cadence, a beacon sending an unchanged " \
              "call — settling on the most regular and feeding until the pattern breaks. Feeding drains " \
              "organized resonance rather than material: ringglass loses its tune, gauges stay lit while " \
              "their calibration tones flatten.",
    threat: "The warning is a clean gap — a narrow direction from which nothing returns, felt by a Tuner " \
            "while instruments still show noise, widening as it closes. It rarely strikes the hull; it takes " \
            "the drive's efficiency and the Tuner's ability to separate signal from sensation. Injured, it " \
            "throws short false returns that read as nearby surfaces and steer a searcher straight onto it; " \
            "the torn membrane bleeds cold clear fluid carrying the last signal it fed on."
  )

  prose <<~PROSE
    Hushmaws are Deep Shear predators that follow active resonance perception. A Tuner reaching into the local field gives the animal a path. The stronger and more sustained the reading, the sooner the hushmaw closes. Deep-runners use the name for specimens sharing the same feeding behavior and flattened body plan; preserved tissue shows enough variation that researchers dispute whether they are one species.

    The first sign is a clean gap in the Deep's already weak background. An instrument still displays noise, yet the Tuner feels a narrow direction from which nothing returns. The gap widens as the animal approaches.
  PROSE

  prose <<~PROSE, section: :biology, heading: "A Body Around an Absence"
    A typical hushmaw has a broad central membrane folded around a cord of muscle and clear cartilage. Lines of sealed eyes run across the outer surface. When the animal finds an active field, those eyes open from the center outward and its membrane spreads into a shallow dish facing the source.

    Feeding mouths line the inner fold. They do not remove visible material from a drive array or living nervous tissue. Contact drains the organized resonance pattern running through the target. A ringglass assembly loses its tune. A Tuner loses the ability to separate signal from ordinary sensation and may continue feeling the hushmaw's empty direction after physical contact ends.

    A well-fed animal closes its eyes, folds its membrane, and drifts until another coherent signal reaches it. Injured specimens produce short false returns around themselves. A searching Tuner may read those returns as nearby surfaces and steer directly toward the animal.
  PROSE

  prose <<~PROSE, section: :dangers, heading: "How It Hunts"
    A hushmaw rarely strikes the hull first. It follows the strongest repeated act of attention: a bridge Tuner checking the same bearing, a survey array sweeping on one cadence, or a distress beacon transmitting an unchanged call. It settles against the source and feeds until the pattern breaks.

    On a ship, the result begins as failed interpretation. Gauges remain lit while their calibration tones flatten. A Tuner gives uncertain answers, then cannot identify a signal they have known for years. If the animal reaches the drive, the kite sheds efficiency and begins spending reserve against forces it normally redirects.

    Physical weapons work after the animal opens around a source. Its membrane tears easily and releases a cold clear fluid that carries the last signal it fed on. Striking it before locating the body wastes ammunition on false returns. Crews use wide work lights, thrown dust, and mechanical line to show the surface the instruments omit.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Breaking the Path"
    Deep crews stop active sounding when a gap appears. The Tuner closes their practice behind a #{encyclopedia_ref :hood, "hood"}; the ship varies every nonessential cadence and drops a disposable resonator away from the retreat course. A hushmaw already attached to the hull must be found physically before the drive comes back up.

    A hood hides a person by flattening the small field changes their attention produces. It also takes away the perception needed to confirm whether the animal followed the decoy. Another crew member watches the line, time, and hull while the Tuner remains covered.

    Rescue craft treat a hushmaw strike as a contaminated approach. A tender sends a passive line and receives people with all tuned equipment cold. Bringing the damaged ship's active array alongside can transfer the animal or its false returns into the rescue vessel.
  PROSE

  cue "Rescue after a strike is run as a contaminated approach: a passive line, every tuned thing cold, people taken off before anything is powered up. A tender that brings its own active array alongside can carry the animal or its false returns home with the survivors."
  cue "The first sign is a clean gap in the Deep's already weak background."
  affordance "Repetition draws it, and repetition is what a worried crew produces. A Tuner rechecking one bearing, an array sweeping on a single cadence, and a beacon transmitting an unchanged call each give it a path, and it settles on the most regular of them until that pattern breaks."
  pressure "Feeding takes organized pattern rather than material, so gauges stay lit while their calibration tones flatten and tuned ringglass loses its tune. The person who could name what is wrong is the Tuner, who by then is giving uncertain answers about signals they have known for years."
  variation "A well-fed animal closes its eyes, folds its membrane, and drifts until another coherent signal reaches it."
  variation "Injured specimens produce short false returns around themselves."

end
