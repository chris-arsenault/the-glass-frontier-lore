installation :span_nine do
  name "Span Nine"
  path "player/locations/landmarks/span-nine.md"
  tags :"ring-era", :resonance, :"signal-freq", :orbital
  prominence :recognized

  question "Why does the Span connect three major places? Sithari and Threshold both predate its activation, so the only known broadband comm device happening to terminate at both is too much of a coincidence. Pelhari may have been built around it.", raised: "2026-03-20", on: "A shining white filament stretching from"
  question "Consider a terminus near Sithari but geographically distinct — an important side location rather than something in the capital.", raised: "2026-03-20", on: "With it, Sithari has real-time signal-bandwidth links to the"

  prose <<~PROSE
    A shining white filament stretching from #{ref :sithari, "Sithari"} to #{ref :pelhari, "Pelhari"} and #{ref :threshold_station, "Threshold Station"}, visible to the naked eye as an impossibly thin luminous thread against the sky. Span Nine is a pre-Glassfall hardline communication conduit — a physical connection between Kaleidos's surface and two of the system's most important off-world installations, maintained across orbital distances that should make a fixed link impossible.

    The name comes from a marking at each terminus connection point. Whether "Nine" indicates this is one of a numbered series (with the other eight destroyed, lost, or undiscovered), or whether the symbol has been misread entirely — it could be a numeral, a glyph, or a designation in a language nobody speaks anymore — is the subject of mild academic debate and zero practical concern. It's what's on the label. Nobody had a better name. It stuck.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "How It Works"
    Nobody knows.

    The filament appears to be a single continuous structure from Sithari's surface to Pelhari's moon and to the Synod's station at the Lagrange point. It does not sag, stretch, or break despite the constant relative motion of these bodies. It carries signal-band #{ref :resonance, "resonance"} at bandwidths that modern equipment can barely detect, providing communication capacity that dwarfs anything the post-Glassfall world has built. High-bandwidth data transfer, real-time voice, even the dense multidimensional outputs of the #{ref :lattice_proxy_synod, "Lattice Proxy Synod"}'s AI custodians — all of it travels the Span without degradation.

    Efforts to interact with the filament directly do not go well. Not violently — just strangely. A ship can pass through it without incident. The filament jumps around the hull or simply passes through as if one of them isn't quite there. But deliberate interaction — intentional contact — is something reality declines to permit. Reach for it during an EVA and you find yourself back inside the airlock with no memory of the attempt. Plot a course to intercept it and the navigation system routes around it without being told to. Try to cut a sample and discover you've been doing something else for the last hour.

    Intent matters. The Span appears to distinguish between incidental contact and purposeful interference. How is a question the #{ref :lattice_proxy_synod, "Lattice Proxy Synod"} has been investigating for decades without meaningful progress.
  PROSE
  prose <<~PROSE, section: :significance, heading: "Significance"
    Before the Span, communication between Kaleidos's surface and off-world installations was slow, unreliable, and bandwidth-limited. With it, #{ref :sithari, "Sithari"} has real-time signal-bandwidth links to the #{ref :clarisant, "Clarisant"} guild on #{ref :pelhari, "Pelhari"} and the Synod's AI custodians at #{ref :threshold_station, "Threshold Station"}. This connectivity is a significant part of Sithari's continued centrality — the capital's access to the Span is a structural advantage that other settlements cannot replicate.

    The Span is also a reminder. Whoever built it — and the engineering is consistent with #{ref :elves, "elven"} work, though no surviving record credits them specifically — operated at a level of capability that the current civilization cannot approach. The filament has survived the Glassfall, #{elapsed :the_glassfall, approx: true} of orbital debris, and every attempt to study it, and it continues to function perfectly. It is the most visible evidence that the Ring Age produced things nobody alive knows how to make.
  PROSE
end

relate :rel_span_nine_in_sithari, :located_in, :span_nine, :sithari, since: 2305 do
  prose "Span Nine grounds at #{ref :sithari, "Sithari"}, one of the three nodes its pre-Glassfall hardline still binds together."
end
relate :rel_span_nine_in_pelhari, :located_in, :span_nine, :pelhari, since: 2305 do
  prose "Its midpoint passes through #{ref :pelhari, "Pelhari"}, the relay that keeps the old conduit's signal coherent across the gap."
end
relate :rel_span_nine_in_threshold_station, :located_in, :span_nine, :threshold_station, since: 2305 do
  prose "Its far end terminates at #{ref :threshold_station, "Threshold Station"}, completing the only intact length of ring-era hardline anyone has managed to bring back into service."
end

# --- history (moment) ---
moment :span_nine_rediscovered, year: 2305, of: :span_nine do
  prose "Span Nine was rediscovered in the Rekindling, when settlements emerging from the #{ref :signal_famine, "Signal Famine"} finally looked up and understood what had been glowing in the sky for #{elapsed :the_glassfall, :the_rekindling}. Once its function as a signal-band conduit was established it became essential infrastructure almost overnight, restoring real-time links between #{ref :sithari, "Sithari"} and the off-world installations."
  effects { set :span_nine, standing: :operational }
end
