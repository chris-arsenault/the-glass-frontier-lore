installation :issel do
  name "Issel"
  summary "Issel is a shielded settlement of about six hundred people inside a surviving receiver-dish fragment in the Glass Frontier."
  playable_as :chronicle_location
  aka "Issen-Lareth"
  subkind :settlement
  status :complete
  tags :"ring-hab", :"ring-era", :navigation, :archives, :"signal-freq", :resonance
  prominence :recognized
  population 620
  population_band "About six hundred residents"
  role "Passive signal observation and long-baseline navigation"
  setting "A shaded dish fragment carrying receiver galleries along its rim"
  access "Prismwell survey leg to a physical guide cable, followed under silence to the shielded dock"
  omit_facts :maintained_by

  prose <<~PROSE
    A third of Issel's receiver dish survived the Glassfall along with most of the galleries behind it. Ceramic, water, and packed salvage felt shield the inhabited rooms. Speaking tubes connect neighboring galleries; written boards carry work orders farther. Arriving ships follow a physical guide cable and shut down signal equipment before entering the listening field.

    The restored arrays record navigation beacons, drive wakes, stellar weather, ringglass discharges, and signal impressions carried through large fragments. Residents sell timed tracks with the receiver state fixed alongside each observation. A pilot can compare a route against the dish's record and locate the point where traffic, debris, or resonance changed it.
  PROSE

  prose <<~PROSE, section: :people, heading: "Quiet Households"
    Each household keeps one receiver room and one public duty. Some tend cable lights or dock carts. Others copy boards, inspect shielding, cook for night watches, or carry sealed observations to transmitting ships beyond the field. The name Issel is the worn form of Issen-Lareth, still cut into the dish's inner rim; Rekindling navigators used the shorter form while restoring the passive arrays.

    Children learn the gallery routes by touch and the shift changes by floor vibration. Adults speak freely in screened common rooms. Work chambers use hand signs and slate because a voice can cross an active receiver as a thin signal trace.

    #{ref :sen_ket, "Sen'ket"} tends the longest remaining Ring-era baseline. Their repairs have kept its different sections on one timing standard through eight thermal cycles.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Long Note"
    Issel's outer baseline received a narrow signal during a routine debris track. The same signal reached the inner baseline after crossing the dish cavity, then arrived once more from the opposite direction. Each passage carried a different delay and the same gradual rise in pitch.

    The observatory fixed the three traces into #{ref :long_note, "the Long Note"}. Sen'ket has extended the guide cable with isolated listening beads to determine whether the signal moves through open space, the dish structure, or arriving ships.

    Brief matches now appear at the edge of drive wakes on the Prismwell surface leg. The guild has withdrawn that route from passenger boards until Issel can separate a real wake from the added note. Two loaded survey kites wait behind the dish for the next clean track, paying for berth and provisions with each delayed departure.
  PROSE

  gm_note :appears, "Every vessel arriving at Issel shuts down its signal equipment and follows a physical guide cable to the shielded dock, so a party lands with no instruments and no way to call ahead. " \
                    "In the work chambers they get slate and hand signs, because a voice crosses an active receiver as a thin trace."
  gm_note :triggered_by, "Ask what happened on any route within the dish's reach and Issel sells a timed track with the receiver state fixed beside each observation. " \
                         "The track locates the point where traffic, debris, or resonance changed the route, and the sale is copied onto a household's boards."
  gm_note :complicates, "Two loaded survey kites are berthed behind the dish waiting for a clean track, paying berth and provisions for every day the #{ref :prismwell_kite_guild, "Prismwell"} surface leg stays off the passenger boards. " \
                        "Their crews press any capable visitor to shorten the wait."
end

relate :rel_issel_located_in_frontier, :located_in, :issel, :the_glass_frontier, since: 2305 do
  prose "Issel listens from a shaded receiver dish among the ring fragments."
end

relate :rel_issel_supplies_prismwell_tracks, :supplies, :issel, :prismwell_kite_guild, since: 2435 do
  prose "Issel gives Prismwell survey pilots timed traffic and field tracks for the surface approach."
end

relate :rel_prismwell_supplies_issel_comparisons, :supplies, :prismwell_kite_guild, :issel, since: 2435 do
  prose "Returning Prismwell kites bring Issel receiver comparisons from the surface approach."
end
