culture :sable_riverfolk do
  name "Sable Riverfolk"
  playable_as :culture
  origin_blurb "River households bind names, freight, and remembered voices to the routes that carried them."
  subkind :regional_culture
  status :complete
  tags :"social-structure", :archives, :trade
  prominence :recognized
  homeland :sable_crescent
  formal_register "A witnessed account names the route, the bearer, and the person who can answer for it"
  aesthetic "Dyed route bands, ceramic tally marks, and household names joined across generations"

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
