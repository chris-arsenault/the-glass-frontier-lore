installation :lot_forty do
  name "Forty"
  summary "Forty is Brake's largest enclosed cutting bay, built to divide captured vessels among clean work, hot cutting, quarantine, and cargo recovery."
  playable_as :chronicle_location
  aka "Lot Forty"
  subkind :workshop
  function "Enclosed cutting, quarantine, and live-system access for captured vessels"
  status :complete
  tags :salvage, :transport, :materials, :danger
  prominence :marginal
  omit_facts :maintained_by

  descriptive_identity(
    setting:
      "Brake's largest enclosed cutting bay, named for the salvage grid " \
      "painted across the central fragment. Two pressure doors open " \
      "around a complete small vessel, movable walls carve the interior " \
      "into clean work, hot cutting, quarantine, and recovered cargo, " \
      "and overhead rails carry tools and sealed observation cabins " \
      "above floor anchors that take a hull in nearly any orientation.",
    activity:
      "Hulls too dangerous to open in the clear come through here — " \
      "leaking, contaminated, or still under power — and the bay crew's " \
      "first question is which way up the vessel should sit before the " \
      "walls close around it. The captured medical vessel outside the " \
      "main doors has made Forty its supply lock and clinical staging " \
      "area.",
    access:
      "The crew that brings a hull in follows it through the pressure " \
      "doors. Inside, movement means the orange floor paths, which stay " \
      "clear of the traveling wall sections and run to the independent " \
      "shelters at both ends.",
    hazards:
      "The walls move: the room a job starts in is not the room it " \
      "ends in, and the marked paths lead to the shelters rather than " \
      "back to the doors anyone came in by."
  )

  prose <<~PROSE
    Forty is Brake's largest enclosed cutting bay. Its official designation, Lot Forty, comes from the salvage grid painted across the central fragment. Two pressure doors open around a complete small vessel, and movable walls divide the interior into clean work, hot cutting, quarantine, and recovered cargo.

    Overhead rails carry tools and sealed observation cabins. Floor anchors accept hulls in almost any orientation. Orange paths keep people clear of moving wall sections and lead directly to independent shelters at both ends.

    The captured medical vessel stands outside the main doors under separate utilities. Forty has become its supply lock, records room, and clinical staging area while Brake studies the sleeping patients.
  PROSE

  log "2026-08-21 — Made the cutter shorthand Forty primary while retaining the salvage-grid designation Lot Forty."

  gm_note :appears, "Forty takes whatever Brake captures that cannot be opened in the clear: a hull found leaking, contaminated, or still under power is rerouted into the enclosed bay, and the crew that brought it in follows it through the pressure doors."
  gm_note :triggered_by, "The bay crew's first question about a new hull is which way up it should sit. The floor anchors accept almost any orientation, and the movable walls are then set around the vessel into clean work, hot cutting, quarantine, and recovered cargo."
  gm_note :complicates, "The room a scene starts in is not the room it ends in, because Forty's walls move. The orange floor paths stay clear of them and lead to the independent shelters at both ends rather than back to the doors people came in by."
end
relate :rel_lot_forty_located_in_brake, :located_in, :lot_forty, :brake, since: 2435 do
  prose "Forty handles Brake's largest enclosed and quarantined salvage work."
end
