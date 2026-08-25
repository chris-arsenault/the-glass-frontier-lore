concept :readers do
  name "Readers"
  summary "Readers are practitioners who examine the physical record a material or system carries — cloth, water, hulls, herds — and issue the judgment other people act on."
  subkind :practice
  status :complete
  tags :materials, :archives
  prominence :recognized

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

    Species and instruments vary freely within the method. #{ref :dwarves, "Dwarven"} fingertip reading, instrument work, and long observation are different routes to the same judgment, and mixed workrooms are ordinary.
  PROSE

  gm_note :appears, "Whenever the party needs to know what happened to a thing — a coat, a hull, a water line, a herd — the local answer is a reader, and the answer comes with a stated limit the players can push against but the reader will not."
  gm_note :triggered_by, "Show a reader an object with a disputed history and they ask for its chain of custody before touching it, because a reading of a tampered record is the mistake that ends careers."
  gm_note :complicates, "A reader's judgment is load-bearing — cutters wait, treatments are chosen, collection bands open — so pressuring one to firm up an honest maybe puts the pressure, not the reading, on record with everyone who acts on it."
end

relate :rel_readers_manifest_at_wash_four, :manifests_at, :readers, :wash_four do
  prose "Wash Four's dirty-route workshops are the densest concentration of textile readers in the Frontier."
end
relate :rel_readers_manifest_at_brake, :manifests_at, :readers, :brake do
  prose "Brake posts an intake reader over every salvage queue; no cutter marks a line before the reading."
end
relate :rel_readers_practiced_by_dwarves, :practiced_by, :readers, :dwarves do
  prose "Dwarven fingertip reading is one established route into the trade, common in trace work and fine inspection."
end
