installation :ledgerfall do
  name "Ledgerfall"
  playable_as :chronicle_location
  subkind :settlement
  status :complete
  population 81_000
  population_band "About eighty-one thousand across the falls, terrace wards, and lower river port"
  role "Largest market town in the Sable Crescent and transfer point between canyon and delta traffic"
  setting "Terraces around a many-branched waterfall where an Echo River crosses the basin rim"
  access "River barges, canyon road, and kite platforms above the falls"
  tags :surface, :resonance, :archives, :trade, :"signal-freq"
  prominence :recognized

  prose <<~PROSE
    Ledgerfall stands where a river crosses the stone rim of the #{ref :sable_crescent, "Sable Crescent"} and descends through a fan of falls into the marshes below. The water has crossed crystal-bearing rock for much of its underground course. As it breaks into spray, fragments of carried signal spread through the gorge: shipping counts, domestic talk, old music, weather reports, and sentences that end before anyone hears the subject.

    The upper town holds mills, caravan yards, and kite platforms. Residential wards step down both canyon walls. The lower port stands on piles among reed beds where barges take grain, stone, fish, paper, and passengers into the delta. Bridges cross between the levels, giving the settlement a second pattern of streets above the water.
  PROSE
  prose <<~PROSE, section: :how_it_works, heading: "The Speaking Falls"
    The main river divides into nine channels before the cliff. Stone gates control their volume. No two are left at equal flow for long because matching falls can reinforce the same signal fragment until it carries across the whole town. Gate crews vary the channels by small amounts, breaking the repetition into background murmur.

    Each fall has a familiar character. One carries short clear phrases after heavy rain. Another produces mostly numbers. The western spill speaks rarely and with enough clarity that the #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} keeps a permanent listening room beside it. These patterns drift as sediment moves. Residents notice when a fall changes voice before instruments confirm a new channel below the rim.

    Drinking water leaves the river above the speaking ledge and passes through settling ponds lined with quiet stone. Lower water supplies mills, washing steps, fish ponds, and irrigation. During floods, gate crews protect the drinking intake first and the lower port second. Market storage occupies the highest terraces for this reason.
  PROSE
  prose <<~PROSE, section: :economy, heading: "Canyon and Delta"
    Ledgerfall trades between two landscapes. Highland and steppe carriers arrive above the falls with grain, wool, metalwork, and quarried stone. Delta barges bring fish, reeds, fruit, clay, and low-grade ringglass gathered from the marsh sediment. Warehouses on the middle terraces transfer cargo by inclined lifts rather than carrying it through residential stairs.

    Paper and ink are major local trades. Humidity below the falls ruins poor stock, while the Conclave and private listeners consume large quantities of the good kind. Mills above the spray line make tough fiber paper from cultivated reeds. Copy houses, legal clerks, printers, school suppliers, and booksellers fill the dry eastern terraces. The town's name predates the Conclave; surviving Famine-era tax books already call it Ledgerfall.

    Fishing continues inside the inhabited gorge. Suspended nets collect species moving between the upland river and delta pools. Fishers use small sounding weights to keep nets clear of signal-heavy sediment, which can stiffen the line and make every float answer at once.
  PROSE
  prose <<~PROSE, section: :people, heading: "Living with Voices"
    Ledgerfall residents speak close and face one another in public places. The falls can carry a phrase from another terrace or insert an old voice into a pause. Children learn early to wait for an answer from the person in front of them rather than reply to every call that sounds near. Shops use colored counter lamps when the water is loud.

    Most people do not listen for history. They work around a noisy river. Millers track the falls because the gate order changes their power. Boat crews hear changes in the lower channel. Parents choose quieter streets for sleeping children. Clear fragments still stop conversation when they carry a name, an alarm, or the intimate tone of a message meant for one person.

    The Conclave employs listeners, conservators, and copyists, but it does not govern Ledgerfall. Terrace councils control bridges and drains; the water board controls the gates; lower-port crews elect their own harbor officers. These bodies argue over flow. A listening window that favors the western spill can slow a mill or leave a fish channel shallow.
  PROSE
  prose <<~PROSE, section: :structure, heading: "Terrace Wards"
    Buildings on the gorge walls use deep stone footings and light upper floors woven from reed and timber. Roofs pitch toward collection gutters that bypass signal-bearing spray. Every public stair has a flood mark. Every enclosed bridge has panels that open when wind pressure rises through the gorge.

    Sound shapes interiors. Schools line their river walls with loose fiber screens that break reflected speech. Inns advertise quiet rooms by distance from the spray rather than by size. Listening houses do the opposite: narrow chambers focus one fall through a stone throat and allow a visitor to sit with whatever reaches it.

    The lower port rebuilds constantly. Silt raises one bank and strips another. Walkways detach from piles so crews can move them between seasons. Houses keep small boats under their floors. A permanent-looking quay is treated with suspicion unless its owner can show how it comes apart.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    The western spill has begun carrying a repeated exchange in a clipped register not matched in the Conclave's public catalog. It surfaces for less than a minute near dawn, then disappears into ordinary river noise. Gate crews have preserved the current channel order so listeners can record it.

    Holding that order has reduced flow to two upper mills during their busiest season. The water board granted three more mornings and refused the Conclave's request for an open extension. Copy houses are already selling printed guesses at the exchange, most produced before a complete recording existed.
  PROSE

  gm_note :appears, "No two of the nine channels are left at equal flow, because matching falls reinforce one fragment until it carries across the whole town. Gate crews adjust them by small amounts through the day, and the town's background murmur shifts with the work."
  gm_note :triggered_by, "Every request made of the falls costs someone water. The listening window on the western spill has two upper mills short in their busiest season, and the water board granted three more mornings rather than the open extension the #{ref :echo_ledger_conclave, "Conclave"} asked for."
  gm_note :complicates, "Copy houses on the eastern terraces sell printed guesses at the dawn exchange, most set before any complete recording existed. A party asking around gets several confident transcripts that do not agree."
end

relate :rel_ledgerfall_in_sable_crescent, :located_in, :ledgerfall, :sable_crescent, since: 2190 do
  prose "#{ref :ledgerfall, "Ledgerfall"} occupies the northern rim of the Sable Crescent, where canyon traffic meets the lower river."
end
relate :rel_ledgerfall_cooperates_conclave, :cooperates_with, :ledgerfall, :echo_ledger_conclave, since: 2310 do
  prose "The town supplies listening rooms, records trades, and gate windows to the Echo Ledger Conclave while retaining civic control of the river."
end
relate :rel_ledgerfall_depends_on_echo_rivers, :depends_on, :ledgerfall, :echo_rivers do
  prose "Ledgerfall's water, mills, and public soundscape come from a surfacing branch of the #{ref :echo_rivers, "Echo Rivers"}."
end
