installation :cold_lantern do
  name "Cold Lantern"
  playable_as :chronicle_location
  subkind :station
  status :complete
  tags :orbital, :transport, :salvage, :navigation, :danger
  prominence :marginal

  prose <<~PROSE
    Cold Lantern is an emergency waypoint on the outer Pell approach. It has no permanent population. A pressure shelter, passive route recorder, line locker, and dark beacon occupy a frame anchored to an ordinary debris mass. Crews use it as the last common check before the claim routes divide toward Deep pockets.

    The lantern remains cold during routine traffic. A vessel docks mechanically, reads the recorder through a physical contact, and leaves its own route strip in return. Lighting the active beacon declares distress and calls every Assembly ship carrying the current rescue watch.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Shelter and Locker"
    The shelter holds eight pressure seats, water, air bottles, medical cloth, hand lamps, and food sealed in ceramic tins. It has no ringglass equipment inside. A mechanical clock begins when the outer door closes and tells occupants how long the stored air remains within the posted load.

    The line locker opens from outside. It contains tow loops, hull patches, an iron predator decoy, and a reel long enough to connect the shelter to a disabled craft holding nearby. Every item carries a return tag. Using one places its replacement cost on the next Assembly yard account; no approval is needed during distress.

    The beacon sits at the end of a breakaway spar. If its active tone draws a hazard, the shelter can release the whole assembly and let it continue transmitting away from the frame.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Last Common Record"
    Outbound crews press a fresh echo strip to the passive recorder. It contains recent crossings, closures, and the latest return deadline accepted by each ship. The crew adds its vessel name, intended branch, people aboard, and reserve before replacing the strip.

    Inbound ships read the same record and mark themselves home. A missing return becomes visible at Cold Lantern before a port office decides the ship is overdue. Rescue leads compare the declared reserve with the branch conditions and choose whether to call, wait, or launch.

    The system depends on crews stopping. Bypassing the waypoint saves little travel and keeps a private claim off the shared strip. Some crews accept the risk when they believe another operator is watching their route.
  PROSE

  prose <<~PROSE, section: :dangers, heading: "Lighting the Lantern"
    The active beacon transmits three short carrier pulses followed by a gap for response. It varies the interval between calls so the sequence does not become a clean repeated path for Farborn predators. A crew inside the shelter hears the mechanism work through the frame before the pulse reaches its instruments.

    Lighting the beacon also exposes the waypoint. Ships do it for pressure loss, drive failure, medical need, or a missing vessel whose last strip ends there. False calls are rare because the caller leaves a physical starter seal in the mechanism.

    A ship answering the lantern approaches cold and sends a passive line first. Rescue practice assumes the original casualty may have carried something to the shelter.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "An Answer Without a Light"
    Cold Lantern's passive recorder now contains the same three-pulse distress pattern heard beyond the sealed Pell array. Its beacon has not been lit, and the starter seal remains intact. The response tone from #{ref :quiet_measure, "*Quiet Measure*"} appears beneath the call on two successive route strips.

    Pell has left the waypoint open and added an isolated recorder beside the first. Outbound crews must choose whether to write their intended branch onto a station already carrying a signal no ship admits transmitting.
  PROSE
end

relate :rel_cold_lantern_located_pell_cut, :located_in, :cold_lantern, :pell_cut do
  prose "Cold Lantern stands on the outer Pell approach before the claim routes divide."
end
relate :rel_cold_lantern_located_keel, :located_in, :cold_lantern, :keel do
  prose "The Pell approach branches from the managed Shear portion of the Keel."
end
relate :rel_pell_assembly_maintains_cold_lantern, :maintains, :pell_freight_assembly, :cold_lantern do
  prose "Assembly watches replenish the shelter, collect route strips, and replace used rescue gear."
end
relate :rel_quiet_measure_operates_cold_lantern, :operates_in, :quiet_measure, :cold_lantern do
  prose "Quiet Measure reads missing returns at the waypoint and answers its active distress beacon."
end
relate :rel_cold_lantern_resonates_echo_strip, :resonates_with, :cold_lantern, :echo_strip do
  prose "Crews exchange route declarations through echo strips pressed to the passive recorder."
end
relate :rel_cold_lantern_resonates_blank, :resonates_with, :cold_lantern, :blank do
  prose "The breakaway beacon varies its call and carries the signal away if a predator follows it."
end
