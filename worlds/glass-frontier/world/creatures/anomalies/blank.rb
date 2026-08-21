creature :blank do
  name "Blank"
  subkind :anomaly
  status :complete
  tags :orbital, :danger, :resonance, :salvage, :mystery
  prominence :recognized

  prose <<~PROSE
    Blanks are Deep Shear predators that follow active resonance perception. A Tuner reaching into the local field gives the animal a path. The stronger and more sustained the reading, the sooner the blank closes. Deep-runners named them for the clean absence that precedes an attack. They use the name for specimens sharing the same feeding behavior and flattened body plan; preserved tissue shows enough variation that researchers dispute whether they are one species.

    The first sign is a clean gap in the Deep's already weak background. An instrument still displays noise, yet the Tuner feels a narrow direction from which nothing returns. The gap widens as the animal approaches.
  PROSE

  prose <<~PROSE, section: :biology, heading: "A Body Around an Absence"
    A typical blank has a broad central membrane folded around a cord of muscle and clear cartilage. Lines of sealed eyes run across the outer surface. When the animal finds an active field, those eyes open from the center outward and its membrane spreads into a shallow dish facing the source.

    Feeding mouths line the inner fold. They do not remove visible material from a drive array or living nervous tissue. Contact drains the organized resonance pattern running through the target. A ringglass assembly loses its tune. A Tuner loses the ability to separate signal from ordinary sensation and may continue feeling the blank's empty direction after physical contact ends.

    A well-fed animal closes its eyes, folds its membrane, and drifts until another coherent signal reaches it. Injured specimens produce short false returns around themselves. A searching Tuner may read those returns as nearby surfaces and steer directly toward the animal.
  PROSE

  prose <<~PROSE, section: :dangers, heading: "How It Hunts"
    A blank rarely strikes the hull first. It follows the strongest repeated act of attention: a bridge Tuner checking the same bearing, a survey array sweeping on one cadence, or a distress beacon transmitting an unchanged call. It settles against the source and feeds until the pattern breaks.

    On a ship, the result begins as failed interpretation. Gauges remain lit while their calibration tones flatten. A Tuner gives uncertain answers, then cannot identify a signal they have known for years. If the animal reaches the drive, the kite sheds efficiency and begins spending reserve against forces it normally redirects.

    Physical weapons work after the animal opens around a source. Its membrane tears easily and releases a cold clear fluid that carries the last signal it fed on. Striking it before locating the body wastes ammunition on false returns. Crews use wide work lights, thrown dust, and mechanical line to show the surface the instruments omit.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Breaking the Path"
    Deep crews stop active sounding when a gap appears. The Tuner closes their practice behind a #{ref :hood, "hood"}; the ship varies every nonessential cadence and drops a disposable resonator away from the retreat course. A blank already attached to the hull must be found physically before the drive comes back up.

    A hood hides a person by flattening the small field changes their attention produces. It also takes away the perception needed to confirm whether the animal followed the decoy. Another crew member watches the line, time, and hull while the Tuner remains covered.

    Rescue craft treat a blank strike as a contaminated approach. A tender sends a passive line and receives people with all tuned equipment cold. Bringing the damaged ship's active array alongside can transfer the animal or its false returns into the rescue vessel.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Empty Bearing"
    Claim crews working beyond the Pell routes have reported the same empty bearing across three separate Deep pockets. The direction changes when plotted against ordinary space and remains fixed when plotted against each crew's return course. One ship lost its survey tune. Another abandoned a cutter. The third returned with a strip of clear membrane caught under an exterior line guide.

    The Shear Compact has issued a shared warning without declaring one animal responsible. Deep-runners have begun varying their retreat checks and carrying two decoy resonators. The recovered membrane continues to repeat a weak version of the third ship's drive-start tone when placed near tuned ringglass.
  PROSE
end

relate :rel_blank_inhabits_deep_shear, :inhabits, :blank, :deep_shear do
  prose "Blanks wait in the low background of the Deep Shear and follow coherent resonance signals."
end
relate :rel_blank_resonates_farborn, :resonates_with, :blank, :farborn do
  prose "The predator's repeated mouths, excessive eyes, and displaced field mark it as Farborn."
end
relate :rel_blank_resonates_tuners, :resonates_with, :blank, :tuners do
  prose "Active Tuning creates the organized signal the animal follows and consumes."
end
relate :rel_blank_depends_hood, :depends_on, :blank, :hood do
  prose "Crews break the hunting path by covering the Tuner's field with a hood and releasing a decoy."
end
