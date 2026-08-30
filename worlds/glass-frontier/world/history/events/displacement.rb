incident :displacement do
  name "Displacement"
  summary "The Displacement was the mass evacuation of mid-drift ring habitats during the Silent Bloom cascade beginning in 2378."
  subkind :migration
  path "player/history/events/displacement.md"
  status :complete
  reviewed "2026-03-19"
  tags :danger, :"ring-hab"
  prominence :renowned
  prominence_xrefs ["displacement-council"]
  date 2378
  scale "Tens of thousands evacuated from failing ring habitats"

  descriptive_identity(
    marks:
      "Settlements that took refugees keep diaspora quarters where a " \
      "lost hab's craft, dish, or festival goes on in a place that " \
      "never had it, and naming a vanished hab as home still carries " \
      "weight. The Displacement Council draws heavily from these " \
      "communities, and Bloom-survivor standing holds specific " \
      "authority in containment work.",
    stakes:
      "Families still hire crews toward habs where a relative was " \
      "recorded as staying behind, and the evacuation records never " \
      "separated the trapped from those who refused to believe the " \
      "readings. Everyone alive remembers the evacuation or knows " \
      "someone who lived it, and the consequences are still arriving."
  )

  prose <<~PROSE
    The mass evacuation of mid-drift ring habs during the #{ref :the_silent_bloom, "Silent Bloom"} cascade, beginning 2378 CE. Tens of thousands of #{encyclopedia_ref :hab_worlder, "Hab-Worlders"} lost their sealed environments — the thing that defined their identity — in days to weeks.
  PROSE
  prose <<~PROSE, section: :course, heading: "Course"
    The evacuation was mostly chaotic. Some habs handled it with discipline — organized departures, resource triage, designated reception points. Others fell apart. The Bloom cascade didn't give consistent warning: some habs had hours between the first resonance distortion and structural failure, others had days. The variance made coordinated response impossible.

    Some people were trapped — in sections that sealed automatically, in habs that lost communication before evacuation orders reached them. Some stayed behind, not by clear choice but by the kind of denial that keeps people in their homes during a cascade warning. They didn't believe the readings. They'd seen resonance fluctuations before. This time was different, and by the time they recognized it, leaving wasn't an option.

    Nobody stayed by genuine informed choice. The Bloom Zones are not habitable by anyone's definition.
  PROSE
  prose <<~PROSE, section: :aftermath, heading: "Aftermath"
    Bloom refugees scattered into existing settlements across the system — surface cities, ring habs with capacity, outer-world stations. The displacement created immediate tension with host communities: resource strain, cultural friction, the disruption of accepting thousands of people who'd just lost everything.

    The refugees brought something besides need: expertise. They had lived in the resonance environment that just broke. Their instinctive understanding of distorted resonance conditions — how to move in warped space, how to read resonance signatures that instruments couldn't parse — became the foundation of containment operations.
  PROSE
  prose <<~PROSE, section: :legacy, heading: "Legacy"
    "I'm from [hab name]" carries weight even when the hab no longer exists. Bloom diaspora communities maintain identity around what they lost — a craft, a tradition, a food that now only exists in memory and practice. The #{ref :displacement_council, "Displacement Council"} draws heavily from these communities, and the phrase "Bloom survivor" carries a specific kind of authority in containment work.

    The Displacement is the system's most recent mass trauma. Everyone alive remembers it or knows someone who lived through it. It is not history — it is current events, still unfolding, still producing consequences.
  PROSE

  gm_note :appears, "Every settlement that took refugees has a diaspora quarter keeping one lost hab's craft, dish, or festival running in a place that never had it. Naming the hab correctly opens doors there; naming it wrong marks the speaker as someone who only read about the evacuation."
  gm_note :triggered_by, "A character claiming Bloom-survivor standing is taken at their word by containment crews and handed the reading nobody else can parse. The claim is checkable: survivors know how their own hab failed, and the #{ref :displacement_council, "Displacement Council"} recruits from the same communities."
  gm_note :complicates, "Families still pay crews to run toward habs where a relative was recorded as staying behind, and the evacuation records never separated the trapped from the ones who refused to believe the readings. The hire is for a name confirmed, not a body recovered."
end

relate :rel_displacement_caused_displacement_council, :caused, :displacement, :displacement_council do
  prose "The mass evacuation it forced is what called the #{ref :displacement_council, "Displacement Council"} into being — an emergency body that never got to stop being one."
end

relate :rel_displacement_caused_by_the_silent_bloom, :caused_by, :displacement, :the_silent_bloom do
  prose "The #{ref :the_silent_bloom, "Silent Bloom"} cascade is what forced the evacuation: as mid-drift habs lost their sealed environments in days, tens of thousands of #{encyclopedia_ref :hab_worlder, "Hab-Worlders"} had to flee the only world they knew."
end
