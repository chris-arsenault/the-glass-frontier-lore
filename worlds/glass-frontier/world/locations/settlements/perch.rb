installation :perch do
  name "Perch"
  playable_as :chronicle_location, :homeland
  origin_blurb "A seasonal hab that expands around the sarn passage, comb harvest, and returning vessel wards."
  subkind :settlement
  status :complete
  tags :"ring-hab", :ecology, :trade, :transport, :"kinetic-freq"
  prominence :recognized
  population 320
  population_band "About three hundred and twenty permanent residents; several thousand workers during the sarn passage"
  role "Seasonal collection, processing, and study of migratory sarn"
  setting "A field saddle between two fragments, crowded with temporary decks during migration"
  access "Seasonal ferries from Talven and local carriers through retractable moorings around the saddle"
  omit_facts :maintained_by

  prose <<~PROSE
    Three hundred residents maintain field pylons, stores, kitchens, clinics, and empty berths through most of the year. The first sighting transforms the hab. Ferries bring cutters, cooks, buyers, veterinarians, instrument makers, and families returning to the same temporary ward. Folded decks spread outward from the core and bright guide streamers fill the saddle.

    Sarn arrive in long spirals, riding the field between fragments. Adults shed old flight combs as they turn. Crews gather the combs after they separate, trim away living tissue, and sort them by size and resonance. Flexible pieces become hull vanes and instruments. Dense root plates become heat spreaders and kinetic tool faces.
  PROSE

  prose <<~PROSE, section: :culture, heading: "A City for One Passage"
    Seasonal wards take the names of their first arriving vessel. Their cooks feed the deck crews, their riggers maintain a band of collection lines, and their readers record the health and path of the passing animals. A vessel that returns late joins whichever ward has open berths. The permanent platform was a rigger's perch in the path of the migration; collectors kept the working name as they extended it into a settlement.

    Permanent residents assign collection bands from the previous passage records. Wards earn wider bands by returning injured sarn to the spiral, clearing abandoned line, and leaving their decks ready to fold. The closing market begins when the last healthy animal crosses the far fragment.

    #{ref :pava_lorn, "Pava Lorn"} reads the migration from the outer pylons. #{ref :molt, "*Molt*"} works below the main spiral, gathering separated combs and carrying exhausted crews back to the hab.
  PROSE

  prose "#{embed :circling_herd}", section: :present_day, heading: "The Circling Herd"

  gm_note :appears, "A vessel that moors during the passage gives its name to a ward, or joins whichever ward still has open berths if it came in late; the players' ship acquires cooks, riggers and a band of collection lines whether or not they asked for any."
  gm_note :triggered_by, "Returning an injured sarn to the spiral, clearing abandoned line, or leaving a deck ready to fold is what earns a ward a wider collection band next passage, so favors done at Perch are repaid in harvest width rather than in coin."
  gm_note :complicates, "The closing market opens when the last healthy animal crosses the far fragment rather than on any date, so a party holding goods for a better price can find the whole hab folding its decks a week before they expected to sell."
end

relate :rel_perch_located_in_frontier, :located_in, :perch, :the_glass_frontier, since: 2305 do
  prose "Perch occupies a kinetic saddle crossed by the seasonal sarn migration."
end

relate :rel_perch_supplies_talven, :supplies, :perch, :talven, since: 2435 do
  prose "Perch sends graded sarn combs to Talven's instrument makers after each migration."
end


relate :rel_pava_lorn_studies_sarn, :studies, :pava_lorn, :sarn, since: 2435 do
  prose "Pava Lorn reads sarn spacing, comb angle, breathing flashes, and the load carried across each spiral."
end

relate :rel_molt_carries_pava_lorn, :carries, :molt, :pava_lorn, since: 2435 do
  prose "Molt carries Pava Lorn through the herd when the pylon record cannot resolve the inner formation."
end

relate :rel_molt_carries_sarn, :carries, :molt, :sarn, since: 2435 do
  prose "Molt's open recovery cradle returns exhausted juvenile sarn to the quiet center of the herd."
end
