installation :span_nine do
  name "Span Nine"
  summary "Span Nine is a pre-Glassfall signal conduit connecting Whitefoot on Kaleidos to Pelhari and Threshold Station across interplanetary distance."
  playable_as :chronicle_location
  context_tags :orbital, :surface, :damaged_signal
  subkind :landmark
  path "player/locations/landmarks/span-nine.md"
  status :complete
  reviewed "2026-03-19"
  tags :"ring-era", :resonance, :"signal-freq", :orbital
  prominence :recognized

  log "2026-08-21 — Moved the surface terminus from Sithari to Whitefoot. The Span's original purpose remains unknown; Whitefoot, Pelhari, and Threshold grew around surviving termini rather than being selected by a modern network."

  descriptive_identity(
    setting:
      "A shining white filament running unbroken from Whitefoot on the " \
      "surface to Pelhari and Threshold Station, visible to the naked " \
      "eye as an impossibly thin thread against the sky. It neither " \
      "sags nor stretches while the bodies it connects keep moving, and " \
      "like other ring-era work it has outlasted everything built since.",
    activity:
      "Signal-band resonance moves along it constantly — voice in real " \
      "time, dense data, the custodians' outputs from Threshold — at " \
      "bandwidths modern equipment can barely detect. At the termini, " \
      "local operators run the yards that grew up around the surviving " \
      "connection points.",
    access:
      "Anyone wanting a real-time answer from across the system goes to " \
      "one of the three termini or waits on a ship's news. The Whitefoot " \
      "ground point is worked by local operators, with Sithari reaching " \
      "it by rail and a buried signal trunk.",
    hazards:
      "Incidental contact is harmless — the filament jumps around a " \
      "passing hull — but a purposeful move on it simply vanishes from " \
      "the person who made it: an EVA hand comes back with no memory of " \
      "reaching, a sampling technician surfaces an hour later doing " \
      "something else. Where incidental ends and purposeful begins, no " \
      "test has established."
  )

  prose <<~PROSE
    A shining white filament stretches from #{ref :whitefoot, "Whitefoot"} on Kaleidos to #{ref :pelhari, "Pelhari"} and #{ref :threshold_station, "Threshold Station"}, visible to the naked eye as an impossibly thin thread against the sky. Span Nine is a pre-Glassfall hardline communication conduit, a physical connection between the surface and two off-world installations maintained across orbital distances that should make a fixed link impossible.

    The name comes from a marking at each terminus connection point. Scholars disagree on whether "Nine" marks one conduit in a numbered series, whose other eight members were destroyed, lost, or remain undiscovered, or whether the symbol is a glyph or designation from an unreadable language. Operators adopted the visible label during the Rekindling, and the name stuck without affecting the Span's use.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "How It Works"
    No surviving account explains the Span's construction, and current instruments describe its effects without supplying a mechanism.

    The filament appears to be a single continuous structure from Whitefoot to Pelhari's moon and to the Synod's station at the Lagrange point. It does not sag, stretch, or break despite the constant relative motion of these bodies. It carries signal-band #{encyclopedia_ref :resonance, "resonance"} at bandwidths that modern equipment can barely detect, providing communication capacity that dwarfs anything the post-Glassfall world has built. High-bandwidth data transfer, real-time voice, even the dense multidimensional outputs of the #{ref :lattice_proxy_synod, "Lattice Proxy Synod"}'s AI custodians — all of it travels the Span without degradation.

    A ship can pass through the filament without harm. The filament jumps around the hull or passes through as though the two do not occupy the same space. Purposeful interference produces a different result. A crew member who reaches for it during an EVA returns to the airlock with no memory of the attempt. A navigation system given an intercept course routes around it without instruction. A technician who tries to cut a sample discovers an hour later that they have been doing something else.

    The Span distinguishes between incidental contact and purposeful interference. The #{ref :lattice_proxy_synod, "Lattice Proxy Synod"} has spent decades testing that distinction without identifying its mechanism.
  PROSE
  prose <<~PROSE, section: :significance, heading: "Significance"
    #{ref :sithari, "Sithari"} reaches the surface terminus by rail and a buried signal trunk through Whitefoot. That access gives the capital real-time links to the #{ref :clarisant, "Clarisant"} guild on #{ref :pelhari, "Pelhari"} and the Synod's custodians at #{ref :threshold_station, "Threshold Station"}, while leaving the terminus itself under Whitefoot's local operators.

    No surviving record identifies the three sites' original purpose. Whitefoot's signal yard, the Pelhari workshops, and Threshold's station all expanded around facilities that survived at the termini. Their present importance followed the Span; it does not explain why the ring builders connected those points.

    The engineering is consistent with #{encyclopedia_ref :elves, "elven"} work, though no surviving record credits them specifically. Its builders possessed capabilities the current civilization cannot approach. The filament has survived the Glassfall, #{elapsed :the_glassfall, approx: true} of orbital debris, and every attempt to study it while continuing to function perfectly. It is the most visible surviving example of Ring Age engineering that current workshops cannot reproduce.
  PROSE

  gm_note :appears, "Real-time conversation across the system happens only at the three termini, #{ref :whitefoot, "Whitefoot"}, #{ref :pelhari, "Pelhari"} and Threshold. Everywhere else news moves at the speed of the ship carrying it, and a party needing an answer from the far side goes to a terminus or waits."
  gm_note :triggered_by, "Any deliberate move on the filament — reaching for it on EVA, cutting a sample, plotting an intercept — ends with the attempt gone rather than refused. The character comes back with an hour missing and no memory of trying, and the ship's navigation has already routed around it."
  gm_note :complicates, "Work beside the Span is harmless until it turns purposeful, and nobody can say where that line falls; the #{ref :lattice_proxy_synod, "Synod"} has tested the distinction for decades without finding the mechanism. A crew mooring, surveying or salvaging near it gets no ruling in advance."
end

relate :rel_span_nine_in_whitefoot, :located_in, :span_nine, :whitefoot, since: 2305 do
  prose "Span Nine grounds at #{ref :whitefoot, "Whitefoot"}, where a modern signal yard surrounds the surviving surface terminus."
end
relate :rel_span_nine_in_pelhari, :located_in, :span_nine, :pelhari, since: 2305 do
  prose "Its midpoint passes through #{ref :pelhari, "Pelhari"}, the relay that keeps the old conduit's signal coherent across the gap."
end
relate :rel_span_nine_in_threshold_station, :located_in, :span_nine, :threshold_station, since: 2305 do
  prose "Its far end terminates at #{ref :threshold_station, "Threshold Station"}, completing the only intact length of ring-era hardline anyone has managed to bring back into service."
end

# --- history (moment) ---
moment :span_nine_rediscovered, year: 2305, of: :span_nine do
  summary "Surface crews rediscovered Span Nine above Whitefoot and restored its buried trunk to Sithari in 2305."
  prose "Span Nine was rediscovered in the Rekindling, when settlements emerging from the #{ref :signal_famine, "Signal Famine"} identified the filament above Whitefoot as a signal-band conduit. Surface crews restored the buried trunk to #{ref :sithari, "Sithari"}; Pelhari and Threshold then expanded their surviving terminus facilities around the returned link."
  effects { set :span_nine, standing: :operational }
end
