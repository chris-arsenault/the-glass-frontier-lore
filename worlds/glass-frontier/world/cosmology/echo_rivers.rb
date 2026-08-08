phenomenon :echo_rivers do
  name "Echo Rivers"
  path "player/cosmology/echo-rivers.md"
  tags :resonance, :"signal-freq", :archives
  prominence :renowned
  prominence_xrefs ["echo-ledger-conclave"]

  prose <<~PROSE
    Beneath the surface of Kaleidos, water moves through rock that's been saturated with crystal dust from two centuries of #{ref :the_glassfall, "Glassfall"} debris. As it flows through these mineral-laced channels, it picks up #{ref :resonance, "resonance"} — specifically, the signal-band frequencies that once carried data through the orbital rings.

    The result is underground rivers that carry sound. Not just any sound — voices, fragments of old transmissions, snatches of conversation from before the rings fell. Stand near a place where an Echo River surfaces and you'll hear them: faint, layered, overlapping. Mostly unintelligible. Occasionally, heartbreakingly clear.
  PROSE
  prose <<~PROSE, section: :how_it_works, heading: "What You Hear"
    The echoes aren't recordings in any intentional sense. They're artifacts — residual impressions left in the crystal lattice when the rings were still whole and carrying data. The water picks them up, carries them, sometimes amplifies them. What surfaces is unpredictable:

    - Routine transmissions between ring stations. Logistics, schedules, the mundane business of a functioning orbital system.
    - Personal messages. Someone calling home. A child's voice. Laughter from a party that happened two centuries ago.
    - Technical data. Strings of numbers, calibration sequences, system reports that mean nothing unless you know the context.
    - And very rarely, something from the days immediately before or during the Glassfall itself. These fragments are the most sought-after and the most contested. The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} claims custodianship over all such material.

    The rivers don't replay on demand. You can't ask them questions. You stand, you listen, you take what comes. Some listeners spend years at the same surfacing point, cataloguing everything they hear. Others visit once and never come back — too unsettled by the intimacy of hearing dead strangers speak.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Where They Surface"
    Echo Rivers surface where the underground geology forces them upward — at springs, sinkholes, cave openings, and along certain cliff faces where the crystal-bearing rock is exposed. The largest surfacing points are in the marshy lowlands of the Sable Crescent, where the water table is high and the ground is thick with crystal sediment.

    Some settlements have built around surfacing points. Others avoid them deliberately. There's a practical concern — signal-band resonance in quantity can cause headaches, disorientation, and in rare cases a kind of waking dream state where the listener loses track of which voice is theirs and which belongs to the river. The Conclave calls this "drift" and considers it an occupational hazard. Everyone else calls it a good reason to keep your distance.
  PROSE
  prose <<~PROSE, section: :significance, heading: "Significance"
    The Echo Rivers are Kaleidos's accidental archive — a phenomenon specific to the planet's surface, where crystal dust has had two centuries to saturate the geology. Ring habs have their own versions of residual memory, but nothing quite like the rivers. They preserve fragments of a civilization that otherwise exists only in salvaged hardware and half-understood ruins. For historians and archivists, they're invaluable. For everyone else, they're eerie — a reminder that the ground itself remembers things the living have forgotten.

    Some people find comfort in them. Some find grief. The rivers are indifferent to human interpretation.
  PROSE
end

relate :rel_echo_conducted_by_resonance, :conducted_by, :echo_rivers, :resonance do
  prose "The rivers are a #{ref :resonance, "resonance"} phenomenon: signal-band imprints conducted through crystal-laced rock and water rather than any flowing thing."
end
relate :rel_echo_carries_transmissions, :carries, :echo_rivers, :pre_glassfall_transmissions, since: 2140 do
  prose "What they carry are #{ref :pre_glassfall_transmissions, "pre-Glassfall transmissions"} — fragments of voices and signal from before the ring broke, surfacing decades and centuries out of their own time."
end
relate :rel_echo_located_in_sable_crescent, :located_in, :echo_rivers, :sable_crescent, since: 2140 do
  prose "Their richest surfacing points are in #{ref :sable_crescent, "Sable Crescent"}, where the deepest crystal deposits hold the clearest fragments."
end
