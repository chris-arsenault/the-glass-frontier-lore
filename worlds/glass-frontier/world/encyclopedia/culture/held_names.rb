encyclopedia :held_names do
  name "Held Names"
  summary "Held names are the names of unaccounted-for people carried in trust by living kin, usually as a newborn's second name after the walking-out. A registry trust mark keeps each name tied to its first wearer until death or return is confirmed."
  kind :culture
  subkind :cultural_identity
  status :complete
  topics :household, :"social-structure", :archives, :isolation
  prevalence :rare
  available_globally
  integration "Held names enter ordinary household and registry practice: midwives ask the holding question at each walking-out, clerks enter the trust mark, and families keep the first wearer's account with the name"
  formal_register "At occasions where full names are spoken, the holder introduces the trust with the formula 'who holds the name of'; the formula remains in use until the registry records an answer"

  descriptive_identity(
    appearance: "The holder carries the name in the middle of their own. Registry " \
                "copies mark it with the trust sign, and formal introductions add " \
                "the holding formula.",
    manner: "Registry records and household accounts describe the first wearer in " \
            "the settled present used for the unaccounted: where they were posted, " \
            "what work they did, and which people last saw them.",
    hospitality: "A household holding a name gives travelers from the place of loss " \
                 "the guest seat, receives their news and letters, and asks after the " \
                 "posting or section named in the household account."
  )

  prose <<~PROSE
    Before the Glassfall, the ring's registries tied the inheritance of a name to a recorded death. The break left whole rosters unaccounted-for: people posted to fragments that drifted dark, travelers aboard vessels between ports, and residents of sections the registries reached again only #{elapsed :the_glassfall, :the_rekindling} later. Families began holding those names in trust. Most enter a household at a newborn's walking-out as a second name, with the registry's trust mark beside it and an account of the first wearer's work, posting, and last known place.

    Registry offices keep the held rolls as working search indexes. Clerks compare reconnected rosters, wreck findings, death notices, and returned travelers against the names and household accounts. A confirmed death converts the trust into ordinary inheritance; the holder keeps the name and the clerk strikes through the trust mark with the date. A living return brings holder and first wearer together. The holding formula is spoken for the last time, the name goes back, and the holder chooses a replacement at a feast shared by both households.

    Many trusts pass through more than one holder. At a holder's death, the family may give the name to another relative and continue the search, or return it to the ordinary name-stock while preserving the account. Fragment families still carry names from the Glassfall's dark years; dock and Bloom-country households hold more recent losses under the same marks. Some households renew one trust in every generation as a memorial practice. Travelers from a place named in a held account receive the guest seat, and news of the missing posting enters the meal before the plates are cleared.
  PROSE

  cue "At the walking-out the midwife asks the naming question, the grandmother answers with a name and its trust — 'who holds the name of' — and the registry clerk enters the newborn's second name under the trust mark."
  cue "A traveler from the Verge fragments takes the guest seat. Over the meal, the household asks for news of the section, posting, and name carried in its held account."
  affordance "Held rolls give registry clerks a name, household, posting, and last known place to match against returns, wreck findings, and reconnected rosters; the trust keeps the same account available across generations."
  pressure "A registry finding changes the name's status: a death date converts it to ordinary inheritance, a living return begins the handback, and a trust still open at the holder's death can pass to another relative."
  variation "Fragment families hold names from the Glassfall's dark years; dock and Bloom country families hold newer losses under the same forms, and the registries' trust marks date each open trust."
  variation "Some families renew one held name in each generation as a memorial practice, and registry clerks carry these continuing trusts under the same mark until the household releases them."
end
