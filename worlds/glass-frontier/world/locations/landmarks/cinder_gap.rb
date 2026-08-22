installation :cinder_gap do
  name "Cinder Gap"
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
