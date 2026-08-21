transport :tally do
  name "Tally"
  subkind :vessel
  capacity "Two crew and eight courier frames"
  status :complete
  tags :transport, :trade, :household, :"ring-hab"
  prominence :marginal

  prose <<~PROSE
    A scratched count beside *Tally*'s cargo door records every meal delivered before cooling. The first crew began it; the present crew continues on a replaceable brass strip. The small hab-runner carries delayed courier frames between Carom's outer docks in eight narrow locks behind a two-seat cabin and heated handrail. A courier rolls in a complete frame, turns one clamp, and receives the empty frame from the previous trip.

    Tally flies whenever a drum delay would spoil food, warm medicine, or strand a live shipment. Its schedule changes with Carom's rotation, and its pilots eat from whichever meal frame has the shortest remaining route.
  PROSE
end
relate :rel_tally_operates_in_carom, :operates_in, :tally, :carom, since: 2435 do
  prose "Tally carries urgent courier frames between Carom's outer docks."
end
