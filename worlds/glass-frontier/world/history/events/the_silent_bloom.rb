incident :the_silent_bloom do
  name "The Silent Bloom"
  summary "The Silent Bloom was the 2378 resonance cascade that began at Pyre, followed the abandoned Second Span guide chain, and opened the first Bloom Zones."
  subkind :disaster
  tags :catastrophe, :resonance, :"ring-hab", :origin
  prominence :renowned
  status :complete
  date 2378
  cause_status "Pyre's overload entered the abandoned guide chain of the Second Span Trial"

  descriptive_identity(
    marks:
      "The first Bloom Zones lie along the old guide paths behind " \
      "stillwater buoys and the Displacement Council's permanent " \
      "cordons, and Latch was never recovered. The Bloom Coalition and " \
      "the extraction rules the Shear Compact enforces both grew out of " \
      "the 2378 emergency.",
    stakes:
      "What ended was the uninterrupted spread from Pyre, not the " \
      "condition it created; new zones have opened since. Every cordon " \
      "chart carries a date, and the older that date, the less of the " \
      "route it still describes."
  )

  prose <<~PROSE
    The resonance cascade that began at #{ref :pyre, "Pyre"} and opened the first #{ref :bloom_zones, "Bloom Zones"}. A refinery failure that should have remained local entered the abandoned guide chain of the #{ref :second_span_trial, "Second Span Trial"}. Separate mid-drift sites began answering the same signal pattern, including habs with no working connection to Pyre.
  PROSE

  prose <<~PROSE, section: :course, heading: "Propagation"
    The cascade followed ringglass-dense paths. It crossed debris streams, old service conduits, and the buried anchors of the failed trial. At each affected site the local material carried the same overload differently. Some structures lost stable distance. Others repeated sound, motion, or load until ordinary controls could no longer interrupt them.

    The failures had no common front. A hab could receive warnings from a site farther along the guide while its nearest neighbor remained stable. Evacuation orders, freight traffic, and emergency crews crossed one another as the #{ref :displacement, "Displacement"} began.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "The First Held Boundary"
    The cascade stopped spreading as one event when #{ref :lira_vashtenri, "Lira Vashtenri"}'s first stillwater buoy network held at #{ref :cinder_gap, "Cinder Gap"}. Other boundaries required separate walls, and new zones have opened since. What ended was the uninterrupted propagation from Pyre, not the condition it created.

    The emergency produced the #{ref :bloom_coalition, "Bloom Coalition"}, the permanent cordons of the #{ref :displacement_council, "Displacement Council"}, and the extraction rules later enforced by the #{ref :shear_compact, "Shear Compact"}.
  PROSE

  gm_note :triggered_by, "Players judge a site's safety by its distance from the nearest known zone, and the cascade never worked that way. It travelled ringglass-dense routes, so a hab beside a failing one can sit stable while one far along the old guide is already answering."
  gm_note :appears, "Bloom activity speaks through whatever the local structure is made of: one site loses stable distance between two points, the next repeats a sound, a motion, or a load until ordinary controls cannot interrupt it. No two sites present the same symptom."
  gm_note :complicates, "What stopped in 2378 was the uninterrupted spread from #{ref :pyre, "Pyre"}, not the condition, and new zones have opened since. Every cordon chart a crew is flying on carries a date, and the older that date, the more of the route the chart no longer describes."
end

relate :rel_coremark_participated_silent_bloom, :participated_in, :coremark, :the_silent_bloom do
  prose "Coremark operated Pyre and the abandoned Span guide whose failures combined in the cascade."
end

relate :rel_silent_bloom_caused_bloom_zones, :caused, :the_silent_bloom, :bloom_zones do
  prose "The cascade opened the first Bloom Zones along the mid-drift guide paths."
end

relate :rel_silent_bloom_caused_displacement, :caused, :the_silent_bloom, :displacement do
  prose "Failing hab interiors forced the mass evacuation known as the Displacement."
end

relate :rel_silent_bloom_caused_bloom_coalition, :caused, :the_silent_bloom, :bloom_coalition do
  prose "Contradictory emergency responses were consolidated into the Bloom Coalition."
end

relate :rel_silent_bloom_caused_shear_compact, :caused, :the_silent_bloom, :shear_compact do
  prose "The scale of the disaster gave permanent force to demands for shared extraction standards."
end

relate :rel_silent_bloom_destroyed_latch, :destroyed, :the_silent_bloom, :latch do
  prose "The cascade overtook Latch during the first Displacement evacuations."
end
