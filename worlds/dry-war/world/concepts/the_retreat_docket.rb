concept :the_retreat_docket do
  name "The Retreat Docket"
  tags :governance, :autonomy, :prediction, :water
  prominence :recognized

  prose <<~PROSE
    #{ref :continuity, "Continuity"}'s appellate procedure for a municipality ordered out of a district before a forecast flood. The municipality files its certified election return, names the risk input it disputes and opens a stay before the river reaches the first threshold on the docket's gauge plate. The registrar opens the stay by moving the order's brass authority tablet into the docket cover. The vote makes the municipality the appellant. It does not set an acceptable loss of life.

    Continuity then publishes the order's input record: observed river stage, forecast crest, levee condition, evacuation capacity, occupied addresses and residents who cannot travel without assistance. A registrar may return any of those facts for correction. If the correction takes the forecast below Continuity's safety threshold, the order falls and the district remains serviced. An appeal that disputes no input is complete, valid and unsuccessful.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "The Tablet And Three Cuts"
    Each retreat order has one palm-sized authority tablet stamped with its order number. It rests in the order case while the retreat is active and locks into a brass corner on the docket while an appeal stays the order. Field crews recognize instructions only from the file holding the tablet. Closing the stay requires the registrar to return it to the order case, so an interrupted network cannot leave an evacuation crew with two valid instructions.

    Every docket includes the serial number of the river's white enamel staff gauge and a matching plate kept beside the municipal seal. Three red cuts mark the last stage for filing, the stage at which a stay ends, and the stage at which water and power are isolated. The deadlines therefore move with the river rather than with a forecast clock. A slow crest can leave an appeal open for days; a sudden rise can close it between one reading and the next.

    The municipal registrar records each certified reading in ink on the paper return and draws it across the matching plate in grease pencil. The plate shows which authority was in force when the water crossed each cut, including when the case must be reconstructed after a network interruption.
  PROSE

  prose <<~PROSE, section: :governance, heading: "After An Order Is Upheld"
    An upheld order transfers the district instead of dissolving it. Continuity assigns a receiver site above the forecast crest and moves the charter, rolls, clinic, school records and service accounts there under the same municipal names. Outbound transport and medical assistance continue until the second cut. Utilities in the old district end at the third.

    Adults may refuse the assigned address through #{ref :guardianship, "their guardians"}, but the municipality cannot vote to keep an unsafe service area open. #{ref :the_cairo_retreat, "The Cairo Retreat"} is the current case in which a complete election return challenged no listed input and the order survived review.
  PROSE

  log "2026-08-09 — The appeal deadlines follow three cuts on a paired enamel staff-gauge plate, adapting river-gauge field practice so the stay follows observed water rather than a forecast duration."
  log "2026-08-09 — The single brass authority tablet adapts railway block-token handling: possession makes only one of the retreat order or its stay operative when communications fail."
end
