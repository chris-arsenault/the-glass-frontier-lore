encyclopedia :echo_rivers do
  title "Echo Rivers"
  kind :phenomenon
  subkind :waterway
  status :complete
  summary "Echo Rivers are crystal-bearing underground waterways on Kaleidos that carry fragments of pre-Glassfall signals and speech."
  reviewed "2026-03-19"
  topics :resonance, :"signal-freq", :archives
  prevalence :uncommon
  appears_when all: { place: [:waterway, :ringglass_rich] }
  medium "Crystal-bearing underground water"
  content "Fragments of pre-Glassfall signal and speech"
  hazard "Headaches, disorientation and identity drift after prolonged exposure"

  cue "Faint layered voices begin at a spring, sinkhole, cave opening, or wet cliff face before anyone thinks to ask a question."
  cue "Most fragments are unintelligible, but an occasional voice surfaces with heartbreaking clarity."
  affordance "Listeners can catalogue whatever fragments surface, including rare material from the days around the Glassfall."
  pressure "Long exposure causes headaches, disorientation, and drift in which a listener loses track of which voice is theirs."
  variation "Routine transmissions carry logistics, schedules, and the ordinary work of the intact ring."
  variation "Personal messages, technical strings, and rare Glassfall fragments surface unpredictably among the routine traffic."

  descriptive_identity(
    signs:
      "At a spring, a sinkhole, a cave mouth, or a wet cliff face " \
      "where the crystal-bearing rock lies open, faint voices layer " \
      "over one another — mostly unintelligible, occasionally " \
      "heartbreakingly clear — and they begin before anyone thinks to " \
      "ask a question.",
    effects:
      "What surfaces is unchosen: routine ring-station traffic, " \
      "someone calling home, strings of calibration numbers, and on " \
      "rare occasions a fragment from the days around the Glassfall " \
      "itself, which the Echo Ledger Conclave claims custodianship " \
      "over. The rivers replay nothing on demand; a listener stands, " \
      "listens, and takes what comes.",
    hazards:
      "Signal-band resonance in quantity brings headaches and " \
      "disorientation, and long exposure can open a waking dream in " \
      "which the listener loses track of which voice is theirs and " \
      "which belongs to the water. The Conclave files this as drift " \
      "and counts it an occupational hazard; others treat it as reason " \
      "enough to stay away."
  )

  prose <<~PROSE
    Beneath the surface of Kaleidos, water moves through rock that's been saturated with crystal dust from #{elapsed :the_glassfall, approx: true} of #{ref :the_glassfall, "Glassfall"} debris. As it flows through these mineral-laced channels, it picks up #{encyclopedia_ref :resonance, "resonance"} — specifically, the signal-band frequencies that once carried data through the orbital rings.

    The result is underground rivers that carry sound. Not just any sound — voices, fragments of old transmissions, snatches of conversation from before the rings fell. Stand near a place where an Echo River surfaces and you'll hear them: faint, layered, overlapping. Mostly unintelligible. Occasionally, heartbreakingly clear.
  PROSE
  prose <<~PROSE, section: :how_it_works, heading: "What You Hear"
    The echoes aren't recordings in any intentional sense. They're artifacts — residual impressions left in the crystal lattice when the rings were still whole and carrying data. The water picks them up, carries them, sometimes amplifies them. What surfaces is unpredictable:

    - Routine transmissions between ring stations. Logistics, schedules, the mundane business of a functioning orbital system.
    - Personal messages. Someone calling home. A child's voice. Laughter from a party that happened #{elapsed :the_glassfall, approx: true, ago: true}.
    - Technical data. Strings of numbers, calibration sequences, system reports that mean nothing unless you know the context.
    - And very rarely, something from the days immediately before or during the Glassfall itself. These fragments are the most sought-after and the most contested. The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} claims custodianship over all such material.

    The rivers don't replay on demand. You can't ask them questions. You stand, you listen, you take what comes. Some listeners spend years at the same surfacing point, cataloguing everything they hear. Others visit once and never come back — too unsettled by the intimacy of hearing dead strangers speak.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Where They Surface"
    Echo Rivers surface where the underground geology forces them upward — at springs, sinkholes, cave openings, and along certain cliff faces where the crystal-bearing rock is exposed. The largest surfacing points are in the marshy lowlands of the Sable Crescent, where the water table is high and the ground is thick with crystal sediment.

    Some settlements have built around surfacing points. Others avoid them deliberately. There's a practical concern — signal-band resonance in quantity can cause headaches, disorientation, and in rare cases a kind of waking dream state where the listener loses track of which voice is theirs and which belongs to the river. The Conclave calls this "drift" and considers it an occupational hazard. Everyone else calls it a good reason to keep your distance.
  PROSE
  prose <<~PROSE, section: :significance, heading: "Significance"
    The Echo Rivers are Kaleidos's accidental archive — a phenomenon specific to the planet's surface, where crystal dust has had #{elapsed :the_glassfall, approx: true} to saturate the geology. Ring habs have their own versions of residual memory, but nothing quite like the rivers. They preserve fragments of a civilization that otherwise exists only in salvaged hardware and half-understood ruins. For historians and archivists, they're invaluable. For everyone else, they're eerie — a reminder that the ground itself remembers things the living have forgotten.

    Some people find comfort in them. Some find grief. The rivers are indifferent to human interpretation.
  PROSE

end
