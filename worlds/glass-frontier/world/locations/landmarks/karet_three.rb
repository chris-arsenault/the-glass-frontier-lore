geographic_location :karet_three do
  name "Karet-3"
  playable_as :chronicle_location
  subkind :hazardous_zone
  tags :orbital, :danger, :resonance, :isolation
  prominence :recognized
  nature "Bloom distortion occupying the remains of a freight habitat"
  first_recorded 2426
  containment_status "Stable under a permanent cordon at Outside"

  prose <<~PROSE
    A #{ref :bloom_zones, "Bloom Zone"} occupying the remains of Karet's third freight habitat in the outer Shear. The habitat was evacuated when its docking spine began returning cargo crews to compartments they had already left. Within a day, the hab's interior volume no longer agreed with its hull.

    The zone has held inside a permanent cordon since 2426. From #{ref :outside, "Outside"}, the old habitat appears as a shimmer around a fixed patch of debris. The visible geometry changes slowly. A docking arm can remain straight for hours, then seem to pass behind itself without moving.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "At the Boundary"
    Karet-3 is quieter than the first Bloom sites. Its boundary produces a low structural hum that passes through Outside's south wall. When the zone is stable, the tone is even enough that station Tuners sleep beside it. During a boundary shift, the frequency remains the same and the intervals between its pulses change.

    Light crosses the boundary poorly. The hab is visible through it, but details refuse attention: windows appear where bulkheads should be, markings lose their order, and people looking for a remembered room disagree about which part of the wreck once held it. External instruments fare better with distance and worse with sustained observation.
  PROSE
  prose <<~PROSE, section: :people, heading: "The Karet Families"
    Twelve evacuated families live on the platform below Outside's docking ring. They maintain the casualty wall, keep the hab's old shift calendar, and treat the cordon as the remaining edge of their district. #{ref :displacement_council, "Council"} contractors rotate through. The Karet families stay.

    Their knowledge is practical. They know which visible structures belonged together before the zone, which sounds came from ordinary freight machinery, and which names in the evacuation record refer to the same person. Council survey teams consult them before every boundary walk.

    The families have petitioned for supervised entry to recover household records, remains, and working tools. The Council refuses to send people across the boundary and has begun testing remote recovery from its stable edge instead.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The cordon holds at its established perimeter. Small changes continue inside Karet-3, and the wall array requires more recalibration than a stable zone of its size should.

    A #{ref :rind, "rind"} has followed the array's resonance gradient to the station. Its presence has forced the Council to distinguish movement caused by the zone from interference caused by an animal that has no interest in the cordon at all.
  PROSE

  gm_note :triggered_by, "Players who navigate Karet-3 by looking at it disagree with the next observer about what they saw. The twelve families on the platform are the only workable map of the old hab, and they will want something for the walk."
  gm_note :complicates, "The boundary holds one frequency and changes the gaps between its pulses, so anyone who has slept a night at #{ref :outside} hears a shift beginning. That is the whole warning before the geometry inside moves."
end

relate :rel_karet_three_part_of_bloom_zones, :part_of, :karet_three, :bloom_zones do
  prose "Karet-3 is one of the active #{ref :bloom_zones, "Bloom Zones"}, formed around an inhabited freight hab long after the first cascade."
end
relate :rel_karet_three_part_of_shear, :part_of, :karet_three, :the_shear do
  prose "The zone lies in the outer #{ref :the_shear, "Shear"}, amid freight routes that remained in use after its cordon closed."
end
