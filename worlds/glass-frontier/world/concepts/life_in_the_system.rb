concept :life_in_the_system do
  name "Life in the System"
  subkind :social_system
  path "player/concepts/life-in-the-system.md"
  status :complete
  reviewed "2026-03-19"
  tags :"social-structure", :resonance
  prominence :mythic
  scope "Ordinary life across the inhabited Kaleidos system"
  daily_infrastructure "Resonance lighting, heating, communication and reinforced construction"
  routine_travel "A day between adjacent planets; about a week to the outer system"

  prose <<~PROSE
    What it feels like to live here. Not the politics, not the factions, not the history — the texture of ordinary days in a system where the fundamental physics are slightly negotiable.
  PROSE
  prose <<~PROSE, section: :how_it_works, heading: "The Basics"
    Most resources work the way resources work anywhere. Food is grown on Kaleidos and #{ref :korvath, "Korvath"}, supplemented by massive greenhouse stations positioned at optimal orbital locations. Water is collected, filtered, recycled. Metal is mined. None of this is exotic. The supply chains are longer than they would be on a single world — a settlement on the ring might source grain from the surface, protein from an orbital greenhouse, and metals from a Shear salvage operation — but the logistics are mature and mostly invisible to the people eating dinner.

    Broad-bandwidth #{ref :resonance, "resonance"} is infrastructure. Lanterns, stoves, heaters, compasses, basic communication devices — all draw from the ambient resonance field through small #{ref :ringglass, "ringglass"} components built into their housing. The technology is standardized, inexpensive, and unremarkable. A household resonance lantern is no more interesting to its owner than the walls around it. It works. When it stops working, you replace the crystal insert.

    Construction uses ringglass-reinforced materials as a default. Structural-band resonance makes walls harder, foundations more resilient, pressure seals more reliable. This is not advanced technology — it is the baseline. Buildings that don't use resonance reinforcement are either very old, very cheap, or very far from a ringglass supply.
  PROSE
  prose <<~PROSE, section: :applications, heading: "Getting Around"
    #{ref :kite_sail, "Kites"} are everywhere. #{ref :flitter, "Flitters"} handle local passengers and light cargo, while road haulers, barges, and larger vessels carry loads whose routes or mass do not justify a flight. Booking passage between major settlements is routine. Interplanetary travel takes days, not months, and most people in the inner system have visited at least one other world.

    The system is compact enough that distance is an inconvenience, not a barrier. A week to the outer planets. A day to an adjacent one. People maintain relationships, business interests, and family ties across planetary distances the way a surface-dweller might maintain them across a continent.
  PROSE
  prose <<~PROSE, section: :culture, heading: "What People Do"
    The things people do everywhere. Sports leagues operate within and between settlements — some local, some system-wide with seasonal tournaments that draw spectators from multiple worlds. Strategy games with regional traditions. Competitive resonance tuning, which is exactly what it sounds like. People go sightseeing — the surface of Kaleidos has landscapes shaped by post-Glassfall ringglass geology, the ring habs offer views that no planet can match, and the outer system has its own draws for the adventurous.

    Entire habs are devoted to leisure. Garden worlds maintained as parks and retreats. Orbital casinos. Amusement installations with attractions that exploit the ring's loosened physics in ways that are technically safe and viscerally terrifying. These are not exotic — they are the system's tourism industry, accessible to anyone with passage fare and a few days to spare.

    Seasons exist on the planetary surfaces but matter less than they would in a single-world civilization. When your trading partners, your employer, and half your family live on different worlds with different orbital periods, the local harvest cycle is a regional concern, not a civilizational rhythm.
  PROSE
  prose <<~PROSE, section: :limits, heading: "The Everyday Improbable"
    The infrastructure accounts for the improbable. Building codes in most settlements include provisions for resonance spikes, dimensional drift in areas with high-density ringglass, and the occasional spontaneous manifestation of narrow-bandwidth effects in places where nobody was working with narrow bandwidth.

    The eighth dimension modifying the configuration of your hallway and resulting in a flooded living room is not a crisis. It's a Tuesday. There is a form. Your insurance covers it if you filed the right paperwork. The repair crew has seen worse. The structures — civic, legal, architectural — exist because this kind of thing happens frequently enough to be anticipated but rarely enough to remain surprising.

    This is not chaos. It's a civilization that has learned to build its systems with tolerance for the unexpected, because the alternative is building systems that break every time reality hiccups.
  PROSE
end

relate :rel_life_depends_on_resonance, :depends_on, :life_in_the_system, :resonance do
  prose "Daily life across the system rests on #{ref :resonance, "resonance"}: it lights the lamps, warms the rooms, and moves the ships."
end
relate :rel_life_depends_on_ringglass, :depends_on, :life_in_the_system, :ringglass do
  prose "And on #{ref :ringglass, "ringglass"}, the crystal that makes resonance usable — which is why salvage rights are a matter people kill over."
end
