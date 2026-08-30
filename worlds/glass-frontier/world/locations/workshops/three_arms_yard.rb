installation :three_arms_yard do
  name "Three Arms Yard"
  summary "Three Arms Yard is a Prismwell repair shop in Glasswake, where three lifting arms hold flexible survey kites without forcing their frames into alignment."
  playable_as :chronicle_location
  context_tags :surface, :yard
  subkind :workshop
  function "Repairs flexible-frame survey kites and shower-catch equipment"
  status :complete
  tags :transport, :ringglass, :resonance, :trade, :surface
  prominence :marginal

  descriptive_identity(
    setting:
      "A circular service floor where Glasswake's old collection wells " \
      "meet the inner kite field, ringed by three lifting arms on " \
      "separate foundations cut off from each other by ceramic " \
      "trenches. The floor drains into a covered wash well, colored " \
      "weights on the control ropes show which arm holds hull, drive, " \
      "or catch assembly, and a dark-shuttered loft stores the catch " \
      "cloth overhead.",
    activity:
      "Returning survey kites are washed, their impacts marked, and " \
      "their flexible spars run through slow corrections between two " \
      "arms while the third follows empty. Apprentices grade debris by " \
      "hand in the wash well, recovered lamps and sounders wait on the " \
      "dead bench for their records to be read, and workers sign each " \
      "repair with small cuts inside a service cover.",
    access:
      "The queue is published on the outer gate. Prismwell crews jump " \
      "it whenever a forecast is active; independent pilots pay the " \
      "posted rate or buy their place with a wash shift or night watch, " \
      "which puts them in the well beside the apprentices.",
    hazards:
      "A tired spar that returns by the wrong path holds a twist that " \
      "grows in the next front, so nothing hidden under fused dust is " \
      "opened until a structural reader has seen which frame took the " \
      "load. Right now one arm and the dead bench belong to the marker " \
      "that beat Rainline home, and ordinary repairs stack outside the " \
      "gate while their crews trade rumors for queue positions."
  )

  prose <<~PROSE
    Three Arms Yard is a Prismwell repair shop in #{ref :glasswake, "Glasswake"}, built where the old collection wells meet the inner kite field. Three independent lifting arms stand around a circular service floor. They can hold the separate frames of a survey kite without forcing them into one alignment, allowing workers to inspect the joints that let a craft yield across a Glassfall stream.

    #{ref :rainline, "*Rainline*"} uses the yard. Its pale port brace was cut, fitted, and twice replaced here. The pattern hangs on the wall beside frames from less famous craft whose repairs taught the same lessons.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Three Loads, One Floor"
    Each lifting arm stands on its own ring foundation. Ceramic trenches separate the rings from the central floor and from one another. A kite can settle one frame at a time while the other arms remain slack. Colored weights on the control ropes show which arm currently carries hull, drive, or catch assembly.

    The central floor drains into a covered wash well. Shower dust, salt, and broken catch fiber fall there before workers open a joint. The water passes through stepped cloth beds descended from Glasswake's first collection wells. Recovered ringglass goes to the sorting yard; metal and ordinary grit go to separate bins.

    A high loft stores catch cloth under dark shutters. Clean fabric enters from the north stair. Used fabric comes up through the wash hoist and never crosses the clean racks before grading.
  PROSE

  prose <<~PROSE, section: :operations, heading: "After a Shower"
    A returning survey kite waits on the field until its residual pull settles. Yard hands then wash the leading surfaces and mark every impact before lifting the craft. Damage hidden beneath fused dust remains in place until a structural reader sees which frame took the load.

    Flexible spars are tested through a slow correction while suspended between two arms. The third arm follows without carrying weight. A sound spar bends, returns, and leaves the rings where they began. A tired spar returns by a different path or holds a small twist that will become larger in the next front.

    Marker lamps and sounders go to a dead bench along the western wall. Their records are read before the housings open. A lamp recovered from the wrong position stays in a ceramic box until its clock, field, and physical marks agree on at least one account of the flight.
  PROSE

  prose <<~PROSE, section: :people, heading: "Yard Marks"
    Yard workers sign repairs with small cuts inside a service cover. The mark identifies the arm used, the reader who accepted the frame, and the well that supplied any recovered crystal. A later shop can reconstruct how the craft was held without contacting Glasswake.

    Apprentices begin in the wash well and cloth loft. They learn debris grades by hand before touching a lifting rope. Pilots waiting on a repair often work beside them, because a shower crew who refuses to clean its own catch receives little sympathy when asking for a quick turn.

    Prismwell crews receive priority during an active forecast. Independent pilots pay the posted rate and can take a wash or night watch for credit. The yard publishes the queue on its outer gate.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Returned Lamp"
    Three Arms Yard is holding the marker that reached Glasswake ahead of *Rainline*. Its casing carries no impact mark, and its deployment pins were worked twice. The first release matches the survey ship's rack. The second left a curved scoring around the pin as if the lamp had been mounted in a larger moving frame.

    Prismwell has assigned one arm and the dead bench to the examination. Damaged survey craft are waiting outside the gate while the returned lamp occupies space normally used for ordinary repairs.
  PROSE

  gm_note :appears, "The repair queue hangs on the outer gate, and Prismwell crews move ahead of it whenever a forecast is active. " \
                    "An independent party pays the posted rate or buys its place with a wash shift or a night watch, which puts it in the wash well beside the apprentices."
  gm_note :triggered_by, "Hand the yard any recovered lamp or sounder and it goes to the dead bench on the western wall, its record read before the housing is opened. " \
                         "Anything found out of position stays in a ceramic box until its clock, field, and physical marks agree on at least one account of the flight."
  gm_note :complicates, "One arm and the dead bench are given over to the marker that reached Glasswake ahead of #{ref :rainline, "*Rainline*"}, so ordinary repairs are stacked outside the gate. " \
                        "The crews waiting there trade what they have heard about the lamp to anyone willing to argue their frame up the queue."
end

relate :rel_three_arms_located_glasswake, :located_in, :three_arms_yard, :glasswake do
  prose "Three Arms Yard stands beside Glasswake's inner kite field and old collection wells."
end
relate :rel_prismwell_maintains_three_arms, :maintains, :prismwell_kite_guild, :three_arms_yard do
  prose "Prismwell operates the separated lifting arms, catch-cloth loft, and shower wash well."
end
relate :rel_three_arms_resonates_rainline, :resonates_with, :three_arms_yard, :rainline do
  prose "The yard fitted Rainline's pale port brace and services its independent frame rings."
end
relate :rel_three_arms_depends_spreading_front, :depends_on, :three_arms_yard, :spreading_front do
  prose "Its wash, cloth store, and flexible-frame work exist for craft exposed to Glassfall streams."
end

relate :rel_glassfall_manifests_at_three_arms_yard, :manifests_at, :the_glassfall, :three_arms_yard do
  prose "The yard's catch-cloth loft, wash well, and separated lifting arms exist to repair craft exposed to falling ring debris."
end
