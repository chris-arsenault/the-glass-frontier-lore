artifact :returning_casing do
  name "The Returning Casing"
  summary "The Returning Casing is one of three original stillwater buoy casings mounted at Cinder Gap; it returns a faint copy of every test tone applied nearby."
  subkind :artifact
  type_of :field_machine
  resource :stillwater
  status :complete
  tags :resonance, :danger, :archives
  prominence :marginal

  descriptive_identity(
    appearance: "One of three original buoy casings mounted behind Cinder Gap's current wall.",
    handling: "Work begins with remote taps and isolated samples; Lira Vashtenri prohibits opening it until a crew can show where its stored frequencies will go.",
    risks: "Its stillwater has absorbed decades of cascade activity, and the casing returns a faint version of every test tone applied near it."
  )

  prose <<~PROSE
    Three original casings remain mounted behind the current wall at #{ref :cinder_gap, "Cinder Gap"}. Their stillwater has absorbed more cascade activity than any other surviving containment vessel. One no longer accepts calibration. The Returning Casing gives back a faint version of every test tone applied to it.

    Lira Vashtenri now uses Cinder Gap to develop a retirement procedure for saturated buoys. The work begins with remote taps and isolated samples. Opening a casing remains prohibited until the crew can show where its stored frequencies will go.
  PROSE

  gm_note :appears, "Instrument work anywhere near the old mounts picks up a second voice, because the Returning Casing gives back a faint version of every test tone applied to it. Crews new to the section read that as a fault in their own equipment and lose an hour chasing it."
  gm_note :triggered_by, "Proposing to open the saturated casing gets a condition rather than a refusal: Lira Vashtenri requires the crew to show where the stored frequencies will go once the vessel is breached."
end

relate :rel_returning_casing_located_in_cinder_gap, :located_in, :returning_casing, :cinder_gap do
  prose "The casing remains mounted behind the current wall at Cinder Gap."
end

relate :rel_returning_casing_part_of_liras_wall, :part_of, :returning_casing, :liras_wall do
  prose "The casing survives from Lira's first full stillwater wall."
end
