geographic_location :the_shear do
  name "The Shear"
  summary "The Shear is the debris-filled orbital space between the surviving ring habitats around Kaleidos, where distorted resonance makes salvage dangerous."
  playable_as :chronicle_location
  subkind :frontier
  path "player/locations/regions/the-shear.md"
  status :complete
  reviewed "2026-03-19"
  tags :orbital, :salvage, :danger, :resonance
  prominence :renowned
  position frame: :kaleidos_system_chart, relative_to: :kaleidos,
           radial_offset: 0.12, angle_offset_deg: 210
  setting "Interstitial debris fields in Kaleidos orbit"
  extent "Roughly half of the orbital volume between surviving ring habitats"
  main_industry "Ringglass salvage"
  principal_hazards "Orbital debris, resonance spikes, collapse, predators and piracy"

  registry true

  log "2026-08-20 — Added the Pell Freight Assembly as a member-owned industrial operator and removed repeated Coremark name checks from general hazards and hidden stations."
  log "2026-08-21 — Renamed the Shear creatures Farborn, stated that the Glassfall created the Shear, and reduced the Bloom comparison to the local distinction needed by crews."

  prose <<~PROSE
    When the #{ref :the_glass_frontier, "orbital ring"} shattered, it didn't break cleanly. The habitable fragments — the #{ref :the_glass_frontier, "ring habs"} — drifted into stable or semi-stable orbits. Everything else became the Shear: the pockets and layers of debris, dust, and resonance distortion that fill the spaces between and around the surviving habs. Roughly half the volume of Kaleidos orbit is Shear.

    The Shear is not a band or a shell. It's interstitial — woven between habitable space like damage through cracked glass. A ring hab might have clean orbital space on one side and Shear pressing against its hull on the other. Shuttle routes thread through gaps in the Shear the way mountain roads thread through passes. Some routes are stable. Some shift.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "What It's Like"
    Debris. #{ref :ringglass, "Ringglass"} fragments ranging from dust to structures the size of buildings, tumbling in unpredictable orbits. The resonance environment is distorted — ambient frequencies spike, cancel, and interfere in patterns that #{ref :tuners, "Tuners"} describe as painful noise and instruments describe as garbage data. Navigation relies on specialized equipment designed to filter the interference, and on pilots who've learned to read the Shear's moods.

    Ships operating in the Shear are purpose-built or heavily modified. The technology is well-developed at this point — generations of refinement — but "well-developed" means "mature enough to be accessible," not "safe." The technology is mature enough to be standard equipment — ships built for the Shear come ready. The Shear kills the careless and the unlucky, not the unprepared.

    The deeper you go — pockets of Shear far from any hab, where debris density is highest and the resonance distortion is worst — the stranger it gets. #{ref :deep_shear, "Deep Shear"} is where the environment becomes genuinely alien: spatial relationships bend, distances don't behave, and things live there that don't live anywhere else.
  PROSE
  prose <<~PROSE, section: :economy, heading: "Salvage"
    The Shear is the system's richest source of #{ref :ringglass, "ringglass"}. Fragments of the original ring — some still carrying their pre-Glassfall tuning — are scattered through it. Salvage is the Shear's primary industry and has been since the #{ref :ratters, "Ratters"} pioneered it in the 2320s.

    Operations range from one-crew skiffs running quick grabs on the Shear's edges to industrial rigs anchored to large debris masses for long-term extraction. #{ref :coremark, "Coremark"} built its empire on the industrial end. The #{ref :pell_freight_assembly, "Pell Freight Assembly"} pools yards, haulers, and loss coverage for member crews. Other independents work the margins. The #{ref :shear_compact, "Shear Compact"} regulates all of them, imperfectly.

    The easy salvage was picked over decades ago. High-grade material now requires going deeper, staying longer, and accepting more risk. This is the economic engine that drives most Shear traffic — and most Shear conflict.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "Dangers"
    What kills people, roughly in order of frequency:

    **Debris.** The most mundane and most common. A ringglass fragment the size of a fist, moving at orbital velocity, will go through a hull. Navigation systems and debris tracking mitigate this, but the Shear is chaotic enough that surprises happen.

    **Resonance spikes.** The distorted resonance environment is normally manageable — ship systems filter it, Tuners read it, experienced crews feel the shifts coming. But spikes happen. A sudden amplification can overwhelm filters, destabilize ringglass-integrated ship components, and — in the worst cases — cause sympathetic failure in the ship's own crystal systems. Gnome crew members are particularly vulnerable.

    **Structural collapse.** Debris masses that seem stable can shift, fragment, or cascade without warning. An anchored mining rig can lose its mooring. A corridor through the Shear can close.

    **#{ref :farborn, "Farborn"}.** Things live in the Shear that have no known counterparts anywhere else in the system. They are adapted to the distorted environment in ways that suggest either long evolution within it or an origin nobody has identified. They range from nuisances to existential threats. Crews in the deep Shear carry weapons and know how to use them. The beasts are rare enough that most salvage runs don't encounter them and common enough that nobody goes in unarmed.

    **Other people.** Pirates operating from hidden stations, unlicensed claim crews, and rivals willing to cut lines or jam signals. The Shear is vast and the Compact's enforcement is thin. Out past the patrolled routes, the only law is what you bring with you.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "Weather"
    The Shear has patterns, though calling them "weather" stretches the term. #{ref :glassfall_showers, "Glassfall showers"} are periodic cascades of fine debris that increase collision risk across wide areas. Resonance tides are cyclical shifts in the ambient distortion that make some regions navigable on some days and lethal on others. Drift events are large debris masses changing orbit, reshaping the Shear's geography over weeks or months.

    Crews track these the way surface settlers track storms. The #{ref :shear_compact, "Shear Compact"} maintains a forecasting service. It is frequently wrong, which everyone knows, and indispensable, which everyone also knows.
  PROSE
  prose <<~PROSE, section: :people, heading: "Permanent Presence"
    Most people who enter the Shear leave the same day. But some stay.

    Mining rigs with rotating crews operate on weeks-long cycles. Research outposts studying the Shear's resonance environment or the #{ref :farborn, "Farborn"} maintain small permanent populations. Member-run receiving yards serve the Pell routes. Pirate havens, smuggler caches, and private claim stations occupy pockets that nobody official has charted.

    These stations are hard to find, easy to lose, and dependent on the Shear's instability for their continued obscurity. A drift event that moves a debris mass can expose a hidden station to open space — or bury it deeper.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Relationship to Bloom Zones"
    The Shear and the #{ref :bloom_zones, "Bloom Zones"} are distinct phenomena that occupy the same orbital space.

    The Glassfall created the Shear from the ring's wreckage. Its debris and resonance patterns are now broadly understood and mostly stabilized: dangerous, but navigable by crews equipped for them.

    #{ref :bloom_zones, "Bloom Zones"} are reality tears caused by the #{ref :the_silent_bloom, "Silent Bloom"}. Where the Shear distorts resonance, a Bloom Zone breaks spatial relationships and requires active containment. Shear crews use the distinction to decide whether a bad reading calls for a route change or a Council alert.
  PROSE

  gm_note :appears, "Any crossing between habs threads gaps in the debris, and what tells a pilot whether this season's gap is still open is the #{ref :shear_compact} forecasting service, which everyone knows to be frequently wrong and carries anyway."
  gm_note :triggered_by, "A bad reading makes a crew choose between a route change and a Council alert: spiking, canceling ambient frequencies are ordinary Shear, while spatial relationships that stop behaving mean a #{ref :bloom_zones, "Bloom Zone"}."
  gm_note :complicates, "A spike that overwhelms a ship's filters destabilizes its ringglass-integrated components and can carry sympathetic failure into the vessel's own crystal systems, and gnome crew are the most vulnerable aboard."
end

relate :rel_shear_in_orbit_of_kaleidos, :in_orbit_of, :the_shear, :kaleidos do
  prose "The Shear hangs in #{ref :kaleidos, "Kaleidos"}'s orbit, a turbulent band of wreckage and distorted resonance riding the same lanes the ring once occupied."
end
relate :rel_shear_part_of_glass_frontier, :part_of, :the_shear, :the_glass_frontier do
  prose "The Shear fills the debris-laden reaches between the inhabited fragments of #{ref :the_glass_frontier, "the Glass Frontier"}."
end
relate :rel_shear_caused_coremark, :caused, :the_shear, :coremark do
  prose "The Shear's lethal, ringglass-rich deep pockets are what made #{ref :coremark, "Coremark"} possible — a company built entirely on going where the salvage was richest and the dying easiest."
end
relate :rel_shear_caused_ratters, :caused, :the_shear, :ratters do
  prose "It also bred the #{ref :ratters, "ratters"}: the independent crews who work the Shear without a corporation's backing, and a whole scavenger subculture with them."
end
