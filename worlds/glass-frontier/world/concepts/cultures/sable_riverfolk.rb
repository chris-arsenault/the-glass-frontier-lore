culture :sable_riverfolk do
  name "Sable Riverfolk"
  summary "Sable Riverfolk are the route-bound households of the Sable Crescent's rivers, canyon roads, and deltas, joining names and obligations to the passages that carry them."
  playable_as :culture
  origin_blurb "River households bind names, freight, and remembered voices to the routes that carried them."
  subkind :regional_culture
  status :complete
  tags :"social-structure", :archives, :trade
  prominence :recognized
  homeland :sable_crescent
  formal_register "A witnessed account names the route, the bearer, and the person who can answer for it"
  aesthetic "Dyed route bands, ceramic tally marks, and household names joined across generations"

  descriptive_identity(
    appearance:
      "Crescent-raised skin is darkened and weathered by river sun and " \
      "glasslight, and the hands are water-worn early. Riverfolk move at the " \
      "pace of loaded boats — steady, balanced, unhurried on any footing.",
    attire:
      "Route bands woven into sleeves and cargo covers in dyes that stay " \
      "distinct when wet, clothes cut for wading and rowing, and ceramic " \
      "tallies carried where paper would rot.",
    manner:
      "An account arrives with its route — who bore it, by what passage, and " \
      "who can answer for it later. A bargain is not finished until someone " \
      "has witnessed it.",
    hospitality:
      "A landing household feeds a traveler who names their route and who " \
      "carried them; the meal makes the traveler a witness the household " \
      "can ask after later. Refusing to say how you came is refusing the " \
      "table."
  )

  prose <<~PROSE
    Sable Riverfolk live along the rivers, canyon roads, and delta routes of the #{ref :sable_crescent, "Sable Crescent"}. Barges, upland carriers, archive boats, and seasonal markets keep households in regular contact across long distances. A person's home is often named by a landing or tributary even when their work carries them between Lowbank, Ledgerfall, Thornvault, and smaller settlements.
  PROSE

  prose <<~PROSE, section: :values, heading: "A Name With a Route"
    An account gains weight when it names how the speaker learned it. Riverfolk contracts and family histories identify the bearer, the route, and a witness who can answer later. This habit governs freight claims, marriage records, songs, and the fragments drawn from Echo Rivers. Repeating a voice without its route is treated as careless because the place and chain of custody may change its meaning.

    Household names can be joined when people marry, adopt, or combine boats and workshops. The joined form may last one generation or remain for centuries. Children learn the shorter working forms first and receive the full chain at the ceremony that enters them into household accounts.
  PROSE

  prose <<~PROSE, section: :aesthetics, heading: "Marks That Survive Water"
    Route bands woven into sleeves and cargo covers use dyes that remain distinct when wet. Ceramic tallies mark landings, household stores, and barge shares because they survive flood and fire better than paper. Musicians carry broad songs downstream and add local verses at each stop; a performance names its route in the order of those additions.
  PROSE

  gm_note :triggered_by, "Repeat something without saying how you came by it and a Riverfolk listener discounts the rest. Naming the bearer, the route, and a person who can be asked later turns the same words into something they will act on."
  gm_note :appears, "A bargain struck on the water acquires a third party who can be found again, because a Riverfolk agreement is not finished until someone has witnessed it. Freight claims, marriage records, and inherited songs all take that shape."
  gm_note :complicates, "A song carries the verses added at each landing in the order they were added, so a listener who knows the Crescent can hear exactly which stops the singer made and in which direction."
end

relate :rel_sable_riverfolk_inhabit_crescent, :inhabits, :sable_riverfolk, :sable_crescent, since: 2305 do
  prose "Sable Riverfolk culture follows the rivers, roads, and landings of the Sable Crescent."
end

relate :rel_sable_riverfolk_inhabit_lowbank, :inhabits, :sable_riverfolk, :lowbank, since: 2305 do
  prose "Lowbank's courts and landing houses bring river households together for trade and witnessed settlement."
end

relate :rel_sable_riverfolk_inhabit_ledgerfall, :inhabits, :sable_riverfolk, :ledgerfall, since: 2305 do
  prose "Ledgerfall records upland and delta routes in freight tallies that carry household witnesses."
end

relate :rel_sable_riverfolk_inhabit_thornvault, :inhabits, :sable_riverfolk, :thornvault, since: 2305 do
  prose "Thornvault's river galleries preserve the voices and route accounts carried through the Crescent."
end
