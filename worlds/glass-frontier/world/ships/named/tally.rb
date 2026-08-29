transport :tally do
  name "Tally"
  type_of :flitter
  summary "Tally is a two-seat hab-runner that carries delayed courier frames between Carom's outer docks. It launches when drum delays would spoil food, warm medicine, or strand a live shipment."
  subkind :vessel
  capacity "Two crew and eight courier frames"
  status :complete
  tags :transport, :trade, :household, :"ring-hab"
  prominence :marginal

  descriptive_identity(
    appearance: "A small hab-runner whose one distinguishing mark sits beside the cargo door: a scratched count " \
                "of every meal delivered before cooling, kept going by each crew on a replaceable brass strip.",
    aboard: "Two seats, a heated handrail, and eight narrow cargo locks behind the cabin. A courier rolls a " \
            "complete frame in, turns one clamp, and takes the empty frame from the previous trip; passengers " \
            "squeeze into whatever space the frames leave. The pilots eat from whichever meal frame has the " \
            "shortest remaining route.",
    behavior: "It launches on spoilage, not on a schedule — whenever a drum delay would ruin food, warm medicine, " \
              "or strand a live shipment between Carom's outer docks. Its timing shifts with Carom's rotation, " \
              "and cargo that does not arrive framed does not go aboard."
  )

  prose <<~PROSE
    A scratched count beside *Tally*'s cargo door records every meal delivered before cooling. The first crew began it; the present crew continues on a replaceable brass strip. The small hab-runner carries delayed courier frames between Carom's outer docks in eight narrow locks behind a two-seat cabin and heated handrail. A courier rolls in a complete frame, turns one clamp, and receives the empty frame from the previous trip.

    Tally flies whenever a drum delay would spoil food, warm medicine, or strand a live shipment. Its schedule changes with Carom's rotation, and its pilots eat from whichever meal frame has the shortest remaining route.
  PROSE

  gm_note :appears, "Tally launches on spoilage rather than on a schedule, so it drops into an outer dock whenever a drum delay would ruin food, warm medicine or strand a live shipment, and passengers ride in whatever space the eight frames leave."
  gm_note :triggered_by, "Loading is one clamp turn into one of eight narrow locks, and the courier takes out the empty frame the previous trip left, so cargo that does not arrive framed does not go aboard."
  gm_note :complicates, "The scratched count beside the cargo door tallies meals delivered before cooling and the crew keeps it running on a replaceable brass strip, so asking for a detour is asking them to break the count."
end
relate :rel_tally_operates_in_carom, :operates_in, :tally, :carom, since: 2435 do
  prose "Tally carries urgent courier frames between Carom's outer docks."
end
