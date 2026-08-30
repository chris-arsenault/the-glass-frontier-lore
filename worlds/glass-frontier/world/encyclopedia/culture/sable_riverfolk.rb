encyclopedia :sable_riverfolk do
  name "Sable Riverfolk"
  summary "Sable Riverfolk are the route-bound households of the Sable Crescent's rivers, canyon roads, and deltas, joining names and obligations to the passages that carry them."
  kind :culture
  character_role :culture
  origin_blurb "River households bind names, freight, and remembered voices to the routes that carried them."
  subkind :cultural_identity
  status :complete
  topics :"social-structure", :archives, :trade
  prevalence :common
  appears_when all: { place: [:waterway] }
  formal_register "A witnessed account names the route, the bearer, and the person who can answer for it"
  aesthetic "Dyed route bands, ceramic tally marks, and household names joined across generations"

  descriptive_identity(
    appearance:
      "Crescent-raised skin is darkened and weathered by river light and " \
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
      "can ask after later. A traveler who withholds the route also declines " \
      "the table."
  )

  cue "Route bands woven into sleeves and cargo covers keep their colors when wet, while ceramic tallies mark stores, landings, and barge shares."
  cue "A Riverfolk account names its bearer, the route it traveled, and a witness who can answer for it later."
  affordance "Naming the route and witness behind a claim gives it enough weight for Riverfolk listeners to act on it."
  pressure "Repeating a voice without its route is treated as careless, and refusing to say how one arrived is also a refusal of the landing household's table."
  variation "Riverfolk households travel by barge, upland carrier, archive boat, and seasonal market across the Crescent's different routes."
  variation "Joined household names may last for one generation or remain for centuries after marriage, adoption, or the combining of boats and workshops."

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
