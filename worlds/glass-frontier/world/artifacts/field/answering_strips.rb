artifact :answering_strips do
  name "The Answering Strips"
  summary "The Answering Strips are two original echo-strip records made aboard Quiet Measure after a distress call beyond Pell. Both preserve the tender's acknowledgment despite its disconnected transmitter."
  subkind :record
  type_of :echo_strip
  status :complete
  tags :archives, :"signal-freq", :resonance, :trade, :household
  prominence :recognized

  descriptive_identity(
    appearance: "Two hand-length sheets of dark foil with matching start folds and different stop creases. One has " \
                "been cut to Thornvault's archive outline; the other retains Pell's rectangular field sleeve.",
    handling: "A dead-room playback gives the distress call and then Quiet Measure's acknowledgment along the same " \
              "physical margin. First-generation copies keep the call and lose the answer.",
    risks: "Heat and refolding damage the grain paths, while playback near responsive material can release part of " \
           "the record into the room. Every comparison therefore consumes some of the evidence."
  )

  prose <<~PROSE
    #{ref :quiet_measure, "*Quiet Measure*"} carried the two strips on its isolated receiver after a repeated distress pattern appeared beyond Pell. Both captured the call. Both also hold the tender's acknowledgment along the same physical margin, although the ship's transmitter remained disconnected.

    Pell sent one original to Thornvault and kept the other in the rescue office. The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} authenticated their folds and materials. Playback copies omit the acknowledgment after the first generation; the originals continue to give the response inside a dead room.

    A comparison at #{ref :cold_lantern, "Cold Lantern"} made the passive route recorder answer after the strip had stopped. The recorder held no copy of the distress call and repeated only the tender's acknowledgment.
  PROSE

  gm_note :appears, "The two originals are separated between Pell and Thornvault, so any direct comparison requires moving one irreplaceable record through the routes that produced it."
  gm_note :triggered_by, "Playing an original into a new strip preserves the distress call and drops the acknowledgment, destroying exactly the feature the listener needs to compare."
  gm_note :complicates, "Cold Lantern's passive recorder answered only after playback stopped, making the safest comparison site part of the unexplained response."
end

relate :rel_echo_conclave_possesses_echo_strip, :studies, :echo_ledger_conclave, :answering_strips do
  prose "The Conclave authenticated the folds, margins, ringglass grains, and stillwater resin of both originals."
end
relate :rel_quiet_measure_carries_echo_strip, :carries, :quiet_measure, :answering_strips do
  prose "Quiet Measure carried and recorded both Answering Strips on its isolated receiver."
end
