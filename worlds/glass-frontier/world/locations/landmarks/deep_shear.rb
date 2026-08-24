geographic_location :deep_shear do
  name "Deep Shear"
  playable_as :chronicle_location
  subkind :hazardous_zone
  path "player/locations/landmarks/deep-shear.md"
  tags :orbital, :danger, :resonance, :salvage
  prominence :recognized
  log "2026-08-21 — Dated the first petition for Deep-specific regulation to 2420 and recorded the grounds on which the Shear Compact refused it."

  prose <<~PROSE
    The deepest pockets of #{ref :the_shear, "the Shear"}, where the resonance distortion that characterizes ordinary Shear work passes a threshold and the local laws of distance, angle, and volume begin to behave like suggestions. The Deep Shear is not a region in the geographical sense — it is a property of pockets, scattered through the Shear's interior, identifiable mostly after you have already entered one. Operators know they are in the Deep when the noise drops away.

    The Deep Shear is the source of the most valuable salvage in the system and the destination of more lost ships than any other identifiable hazard. Both facts are responsible for its traffic.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "The Hush"
    The Shear is a loud environment by resonance standards — ambient distortion at high amplitudes, spikes, tides, the constant interference of debris masses crossing each other's fields. The Deep Shear is quiet. The boundary between ordinary Shear and Deep Shear is marked, for #{ref :tuners, "Tuners"}, by a sudden hush: the ambient noise drops, the instruments lag for minutes before their telemetry catches up, and the crew's resonance-sensitive members go still in a way that experienced captains learn to watch for.

    The hush is the only reliable boundary marker. Instruments do not detect the crossing in time to act on it. A Tuner on the bridge feels it within seconds. A Tuner-less crew finds out by inference — when the clocks start disagreeing, or the parallax stops behaving, or the navigation system reports that the same debris mass is now in two places. By then the crew is already in.

    The hush is not silence. It is the sound of resonance withdrawing — the way a room feels when somebody important has just stopped speaking. The Ratters call it **the listen** because it feels less like noise dropping and more like something attentive having arrived. The Clarisant calls it the Deep Threshold and has standard protocols for it. The Deep-runners, who work in it for a living, just call it the Deep.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "What Goes Wrong"
    The distortions layer with depth. Crews and researchers distinguish three working bands.

    **Outer Deep.** Distance becomes unreliable. A run that should take six hours takes twelve, or three, or never. Instruments disagree with each other about how far the ship has traveled, with the disagreement increasing the longer the run continues. A skilled pilot adjusts; an unskilled pilot finds themselves out of fuel two hours short of where they thought they were. Most working Deep Shear traffic stays in the outer band.

    **Middle Deep.** Geometry begins to misbehave. Straight courses curve. Parallel approaches converge or diverge without explanation. Debris that looks spherical at long range turns out to be something else at close range — a disc, a torus, a shape that does not have a name in the languages anyone working the Deep speaks. Surveying is impossible at any precision; the same volume surveyed twice will produce different charts. The middle Deep is where most of the unique salvage comes from and where most of the experienced crews are lost.

    **Inner Deep.** Volumes become recursive. A debris mass the size of a hab can contain more interior than its outer dimensions permit. Crews entering a wreck in the inner Deep have reported corridors that continue after the wreck's outer hull should have ended, rooms that open into themselves, holds whose far walls retreat as the crew approaches them. The reports are not consistent across crews and frequently not consistent across visits by the same crew. The inner Deep produces the legendary finds and the legendary losses. Most working Deep-runners avoid it. The ones who don't have stories that other Deep-runners listen to without interrupting.

    The bands are not sharp. A pocket of Deep Shear can transition from outer to middle in a hundred meters or hold at outer for kilometers. The crews who survive in the Deep are the crews who pay attention to the transition signs and turn around when they need to.
  PROSE
  prose <<~PROSE, section: :economy, heading: "What Comes Out"
    The Deep Shear is the source of three salvage categories that nothing else in the system produces.

    **Intact pre-Glassfall components.** Most of the original #{ref :the_glass_frontier, "orbital ring"} shattered. Some did not. The Deep Shear is where the un-shattered fragments tend to accumulate — sections of ring structure that retained their pre-Glassfall tuning, ring-era machinery that still functions, occasionally whole subsystems that can be extracted and resold to buyers who do not ask where the component came from. A single intact pre-Glassfall navigation array is worth more than a year's ordinary salvage. A working ring-era resonance generator is worth a generation's. The market is small and the buyers are discreet.

    **Resonance-distorted matter.** Material that has spent decades soaking in Deep Shear distortion comes out altered in useful ways. #{ref :ringglass, "Ringglass"} recovered from the Deep holds its tune across larger distances than ordinary stock. Certain metals conduct resonance where they ordinarily would not. Some substances have no analogue elsewhere in the system and have only recently begun to acquire names. The materials trade in Deep-shifted matter is small, expensive, and supports a research economy that the #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} takes a quiet interest in.

    **Farborn biology.** The #{ref :farborn, "Farborn"} of the Deep Shear are not the same population as those of the ordinary Shear. They are stranger, larger, and harder to find. Their tissue, shells, fluids, and shed parts are valuable for instruments, medicine, and weapons. The harvesting is its own dangerous craft. The biology does not always remain biology after removal from the distortion that produced it, which has surprised more than one buyer.

    The economics of the Deep run on these three categories. A successful Deep run can fund a flotilla for a year. An unsuccessful Deep run can end the flotilla. Most crews who work the Deep make their living on the outer band and trade in stories about the middle band.
  PROSE
  prose <<~PROSE, section: :people, heading: "Traffic"
    There is no gatekeeper. The Deep Shear is open to anyone who can reach it.

    #{ref :coremark, "Coremark"} operates industrial Deep extraction with the resources to absorb the failure rate. Their crews use heavy purpose-built ships, redundant Tuner crews, and procedures that prioritize survival of the rig over survival of any individual run. They lose ships at rates that no independent operator could absorb and accept the losses as a cost of business. They are the Deep's largest single operator by tonnage.

    The #{ref :pell_freight_assembly, "Pell Freight Assembly"} occupies the space between corporate rigs and single-crew claims. Its members share receiving yards, rescue coverage, and hauler capacity while retaining their vessels and claims. The pooled loss fund lets them work at industrial scale, but a failure is still charged to people who vote in the same yard where the damaged ship returns.

    The **Deep-runners** — senior #{ref :ratters, "Ratter"} flotillas who specialize in the Deep — operate at the other end of the spectrum. Small crews, careful ships, decades of accumulated knowledge of specific Deep pockets, and an informal cross-flotilla society that shares charts and warnings. The Deep-runners are not an organization. They are a recognizable population. Outsiders call them by the name and the name has stuck. The senior Deep-runners are some of the most experienced operators in the system and are treated as such by everyone who has reason to know them.

    Beyond Coremark and the Deep-runners, the Deep sees a steady trickle of small specialized crews — beast-hunters, researchers on Conclave contracts, the occasional Clarisant survey, the desperate, the curious, and the people who have run out of other options. The death rate is high. The economics work just often enough to keep the trickle flowing.

    The #{ref :shear_compact, "Shear Compact"} has no special restrictions on Deep work. The Compact's position is that the Deep is part of the Shear and the Shear's standards apply. The crews working the Deep know that the standards do not, in practice, address what kills them. The Compact knows this too. The conversation about Deep-specific regulation has been ongoing for #{elapsed future: "First petition for Deep-specific regulation", about: 15, approx: true} and has produced no regulation.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The Deep Shear is one of the most reliably dangerous places in the system. It is also the source of the most valuable salvage anyone trades. The two facts are inseparable. The hush continues. The pockets shift. The Deep-runners pass charts to apprentices. Coremark replaces lost rigs. Pell crews isolate their cutter clocks. The Conclave waits for the next interesting fragment. Somewhere in the inner Deep, things that nobody has charted continue to be there.
  PROSE

  gm_note :appears, "No instrument reports the crossing in time to act on it. A Tuner on the bridge feels the ambient noise withdraw within seconds; a crew without one finds out from clocks that disagree, parallax that stops behaving, or navigation placing the same debris mass in two positions."
  gm_note :complicates, "Charts stop holding past the outer band. The same volume surveyed twice produces different charts, so a map the players drew an hour ago records one passage rather than the place, and a pocket can go from outer to middle Deep inside a hundred meters."
  gm_note :triggered_by, "Everything carried out of the Deep has to be sold to somebody. Deep-shifted matter and Farborn tissue do not reliably stay what they were once removed from the distortion that made them, which has surprised buyers before and turns payment into an argument about condition on delivery."
end

moment :first_petition_for_deep_specific_regulation, year: 2420, of: :deep_shear do
  prose "The #{ref :pell_freight_assembly, "Pell Freight Assembly"} and signatories from six Deep-runner flotillas petitioned the #{ref :shear_compact, "Shear Compact"} in 2420. They asked the Compact to treat a run as Deep work once bridge clocks disagreed with a Tuner, and to require isolated clocks and declared rescue coverage from that point. The Compact refused because the boundary could be identified only after a vessel had crossed it, and because instruments on the same bridge did not agree on when that crossing occurred."
end

relate :rel_deep_shear_part_of_the_shear, :part_of, :deep_shear, :the_shear do
  prose "The deep Shear is the worst of the #{ref :the_shear, "Shear"} — the far, distorted, poorly charted pockets where the grade is highest and the dying easiest."
end
relate :rel_shear_compact_regulates_deep_shear, :regulates, :shear_compact, :deep_shear, since: 2383 do
  prose "The Compact applies ordinary Shear certification and extraction standards to the Deep, despite repeated petitions from crews who work beyond those standards' useful limits."
end
