installation :cinder_gap do
  name "Cinder Gap"
  summary "Cinder Gap is a cordon section on the contained edge of Pyre's Bloom Zone, where the first full stillwater wall stopped two expansion paths."
  playable_as :chronicle_location
  context_tags :"realm:orbital"
  subkind :border_post
  type_of :cordon_station
  tags :orbital, :danger, :resonance
  prominence :marginal
  status :complete

  descriptive_identity(
    setting:
      "A narrow debris gap on the contained edge of Pyre's Bloom Zone, " \
      "its fragments coated in the pale refinery dust that named it. The " \
      "modern stillwater wall runs across the gap, and three original " \
      "buoy casings from the first successful containment stay mounted " \
      "behind it.",
    activity:
      "Crews here are working out how to retire saturated buoys — " \
      "remote taps and isolated samples only, under Lira Vashtenri's " \
      "standing condition that no casing opens until someone can show " \
      "where its stored frequencies will go.",
    hazards:
      "The stillwater in the three original vessels has absorbed more " \
      "cascade activity than any other surviving containment."
  )

  prose <<~PROSE
    The Pyre cordon section where Lira Vashtenri's first full stillwater wall held. Two expansion paths met in a narrow debris gap, allowing six experimental buoys to damp the same boundary from opposite sides. The name predates the test and comes from the pale refinery dust coating the fragments there.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Oldest Buoys"
    #{embed :returning_casing}
  PROSE

  gm_note :appears, "Instrument work anywhere near #{ref :returning_casing, 'the Returning Casing'} picks up a second voice, and crews new to the section read it as a fault in their own equipment."
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
