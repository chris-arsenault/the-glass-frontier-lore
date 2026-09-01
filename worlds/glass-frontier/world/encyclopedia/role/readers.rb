encyclopedia :readers do
  name "Reader"
  aka "Readers", "Perceptionist", "Perceptionists"
  summary "A reader examines the physical record carried by cloth, water, hulls, herds, or another material system and issues a bounded judgment other people act on."
  kind :role
  subkind :profession
  status :complete
  log "2026-08-31 — Changed the canonical title from Perceptionist to Reader. Reader is the established job word across textile, intake, water, and migration trades; Perceptionist remains the cross-trade formalism."
  topics :materials, :archives
  prevalence :uncommon
  available_globally

  descriptive_identity(
    tools:
      "The reference collection is the credential: documented samples, " \
      "calibrated instruments, or a recorded body of past readings the " \
      "reader can produce when challenged. Other practitioners examine " \
      "those references before accepting work from an unfamiliar reader.",
    manner:
      "A reading arrives with its limit — what the record supports, what it " \
      "cannot say, and what would settle the difference. A reader who " \
      "answers past the record is finished wherever that answer traveled."
  )

  cue "A reader arrives with known samples, calibrated instruments, or a recorded body of earlier readings that can be produced when challenged."
  cue "Every judgment names both what the physical record supports and the point where that record stops."
  affordance "A reader can compare an object's dirt, repair, pressure, wear, heat, tone, or movement against references and issue a judgment others can use."
  pressure "A reader states the material's chain of custody and the limit of each conclusion. If either proves false, the reader withdraws the judgment and identifies every decision that used it."
  variation "Textile readers work from documented cloth, intake readers from verified hulls, and migration readers from seasons of animal counts."
  variation "Readers reach the same form of judgment through fingertip perception, calibrated instruments, or long observation of one system."

  prose <<~PROSE
    Readers work from the record a physical thing keeps of what has happened to it: the dirt, repair, pressure, and resonance held in cloth; the tone and delivery of a water system; the wear and heat history of a hull; the timing and spread of a migrating flock. Each practice compares its material against documented references, identifies disagreements, and states a judgment someone else will act on.

    *Reader* is the local job title in trades that otherwise share nothing. #{ref :wash_four, "Wash Four"} employs textile readers on its dirty route; #{ref :brake, "Brake"} posts a salvage intake reader to say whether a hull is inhabited before cutters mark a line; water systems and herding platforms keep their own. *Perceptionist* is the formal name used when those workers compare methods, credentials, or evidence across trades. Two readers of unlike materials meeting for the first time compare methods within minutes, because the method is what they share.
  PROSE

  prose <<~PROSE, section: :structure, heading: "References"
    Every working reader keeps references — the known against which the unknown is compared. For a textile reader that is a library of cloths whose history is documented; for an intake reader, records of hulls whose contents were verified after the reading; for a migration reader, seasons of counts that turned out right or wrong. References accumulate over a career and rarely transfer whole, because a reference is only useful to someone who knows how it was established.

    The trade trains by attachment. An apprentice spends years watching readings checked against outcomes and building references of their own. Standing begins when a settlement acts on the apprentice's reading under their own name; the accepted judgment itself marks the change.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Limit"
    The discipline of the trade is the boundary statement. A reading names what the record shows, and then names where the record stops: the trace supports a route but not a hand, the wear shows heat but not when, the flock's spread says the bands are safe today and says nothing about tomorrow. A reader's standing rests on those boundaries. Trade records preserve cases where a conclusion traveled farther than its evidence and list the decisions that had to be reversed.

    Species and instruments vary freely within the method. #{encyclopedia_ref :dwarves, "Dwarven"} fingertip reading, instrument work, and long observation are different routes to the same judgment, and mixed workrooms are ordinary.
  PROSE
end
