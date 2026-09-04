transport :low_lamp do
  name "Low Lamp"
  summary "Low Lamp is a Dovra household barge carrying passengers, kiln goods, and flood stores between the inner water boards and Lowbank. Its low side lamps and Ninth Kiln ribs remain legible even when the river closes its usual channel."
  subkind :vessel
  type_of :dovran
  capacity "One household crew, twelve passengers, and a reconfigurable shallow cargo deck"
  status :complete
  tags :transport, :trade, :"outer-system", :resonance, :ecology
  prominence :recognized

  descriptive_identity(
    appearance: "A broad timber hull over pale Ninth Kiln ribs, with a low lamp hung on either side and sockets for " \
                "removable shelters, cargo rails, and flood pumps.",
    aboard: "The deck house holds household bunks, a stove, route tallies, and a dry locker. Passengers and cargo " \
            "share whatever deck remains after the current season's fittings are secured.",
    behavior: "Low Lamp sounds every approach with a metal-shod pole, settles onto mud when a channel closes, and " \
              "backs away until its pilot finds the next registered depth or tow point."
  )

  prose <<~PROSE
    *Low Lamp* works the changing channels between Dovra's water boards and #{ref :lowbank, "Lowbank"}. Its household shifts the deck between freight, passenger, and flood work without changing the shallow hull. The vessel's pale ceramic ribs came from #{ref :ninth_kiln, "Ninth Kiln"}; damaged ribs are replaced before planking because the river's broad iron response otherwise pulls through the fittings.

    The barge takes the long landing at #{ref :the_reed_door, "the Reed Door"}. Its pilot leaves both sounding poles beside the house board while the crew exchanges route marks, loads kiln goods, or waits for a water board to reopen the western passage.
  PROSE

  gm_note :appears, "Low Lamp takes passengers when its household has deck space, and the fare is as often return carriage, repair tile, or a share of the load as coin."
  gm_note :triggered_by, "A posted opening does not stop the pilot from sounding the approach; silt and pole-thieves can change a channel after the notice leaves."
  gm_note :complicates, "A water board can call Low Lamp into flood service with its hired cargo still aboard, leaving every private journey waiting on the board's release."
end

relate :rel_channel_barge_operates_dovra, :operates_in, :low_lamp, :dovra do
  prose "Low Lamp works Dovra's registered channels and carries local traffic when the water boards call it."
end
relate :rel_channel_barge_operates_lowbank, :operates_in, :low_lamp, :lowbank do
  prose "Low Lamp delivers river cargo through Lowbank's tally houses and western quays."
end
