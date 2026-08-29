encyclopedia :readers do
  name "Readers"
  summary "Readers are practitioners who examine the physical record a material or system carries — cloth, water, hulls, herds — and issue the judgment other people act on."
  kind :role
  subkind :reader
  status :complete
  topics :materials, :archives
  prevalence :uncommon
  available_globally

  descriptive_identity(
    tools:
      "The reference collection is the credential: known samples, " \
      "calibrated instruments, or a recorded body of past readings the " \
      "reader can produce when challenged. Losing the references ends a " \
      "practice faster than losing the workroom.",
    manner:
      "A reading arrives with its limit — what the record supports, what it " \
      "cannot say, and what would settle the difference. A reader who " \
      "answers past the record is finished wherever that answer traveled."
  )

  cue "A reader arrives with known samples, calibrated instruments, or a recorded body of earlier readings that can be produced when challenged."
  cue "Every judgment names both what the physical record supports and the point where that record stops."
  affordance "A reader can compare an object's dirt, repair, pressure, wear, heat, tone, or movement against references and issue a judgment others can use."
  pressure "A tampered chain of custody can ruin the reading, while claiming more than the record supports can end a reader's career wherever the answer traveled."
  variation "Textile readers work from documented cloth, intake readers from verified hulls, and migration readers from seasons of animal counts."
  variation "Readers reach the same form of judgment through fingertip perception, calibrated instruments, or long observation of one system."

  prose <<~PROSE
    Reading is a method, not a guild. A reader works from the record a physical thing keeps of what has happened to it: the dirt, repair, pressure, and resonance held in cloth; the tone and delivery of a water system; the wear and heat history of a hull; the timing and spread of a migrating flock. The material differs completely from one reader to the next. The shape of the work does not — comparison against references, attention to what disagrees, and a stated judgment someone else will act on.

    The word is a job title across the system in trades that otherwise share nothing. #{ref :wash_four, "Wash Four"} employs textile readers on its dirty route; #{ref :brake, "Brake"} posts a salvage intake reader to say whether a hull is inhabited before cutters mark a line; water systems and herding platforms keep their own. Two readers of unlike materials meeting for the first time compare methods within minutes, because the method is what they share.
  PROSE

  prose <<~PROSE, section: :structure, heading: "References"
    Every working reader keeps references — the known against which the unknown is compared. For a textile reader that is a library of cloths whose history is documented; for an intake reader, records of hulls whose contents were verified after the reading; for a migration reader, seasons of counts that turned out right or wrong. References accumulate over a career and rarely transfer whole, because a reference is only useful to someone who knows how it was established.

    This is why the trade trains by attachment rather than instruction. An apprentice reader spends years watching readings checked against outcomes, building references of their own, before anyone acts on their word alone. The day a settlement acts on an apprentice's reading without the teacher confirming it is the day the trade considers them a reader, and no ceremony marks it.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Limit"
    The discipline of the trade is the boundary statement. A reading names what the record shows, and then names where the record stops: the trace supports a route but not a hand, the wear shows heat but not when, the flock's spread says the bands are safe today and says nothing about tomorrow. Settlements learn to trust readers exactly as far as readers refuse to go past their evidence, and the trade's worst failures are remembered as the times someone answered a question the record had not.

    Species and instruments vary freely within the method. #{encyclopedia_ref :dwarves, "Dwarven"} fingertip reading, instrument work, and long observation are different routes to the same judgment, and mixed workrooms are ordinary.
  PROSE
end
