installation :cinder_gap do
  name "Cinder Gap"
  summary "Cinder Gap is a cordon section on the contained edge of Pyre's Bloom Zone, where the first full stillwater wall stopped two expansion paths."
  playable_as :chronicle_location
  subkind :border_post
  tags :orbital, :danger, :resonance
  prominence :marginal
  status :complete

  prose <<~PROSE
    The Pyre cordon section where Lira Vashtenri's first full stillwater wall held. Two expansion paths met in a narrow debris gap, allowing six experimental buoys to damp the same boundary from opposite sides. The name predates the test and comes from the pale refinery dust coating the fragments there.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Oldest Buoys"
    Three original casings remain mounted behind the current wall. Their stillwater has absorbed more cascade activity than any other surviving containment vessel. One no longer accepts calibration and another returns a faint version of every test tone applied to it.

    Lira now uses Cinder Gap to develop a retirement procedure for saturated buoys. The work begins with remote taps and isolated samples. Opening a casing remains prohibited until the crew can show where its stored frequencies will go.
  PROSE

  gm_note :appears, "Instrument work anywhere near the old mounts picks up a second voice, because one of the three original casings returns a faint version of every test tone applied to it. Crews new to the section read that as a fault in their own equipment and lose an hour chasing it."
  gm_note :triggered_by, "Proposing to open a saturated casing gets a condition rather than a refusal: #{ref :lira_vashtenri, "Lira Vashtenri"} requires the crew to show where the stored frequencies will go once the vessel is breached. Nobody has produced that answer, so the work stays at remote taps and isolated samples."
end

relate :rel_cinder_gap_located_in_bloom_zones, :located_in, :cinder_gap, :bloom_zones do
  prose "Cinder Gap lies on the contained edge of Pyre's Bloom Zone."
end

relate :rel_displacement_council_maintains_cinder_gap, :maintains, :displacement_council, :cinder_gap, since: 2384 do
  prose "The Council maintains the modern wall and preserves the original mounts for study."
end

relate :rel_cinder_gap_part_of_pyre, :part_of, :cinder_gap, :pyre do
  prose "Cinder Gap is the southern boundary section of the Pyre cordon."
end
