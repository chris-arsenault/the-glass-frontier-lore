encyclopedia :rill_households do
  name "Rill Households"
  summary "Rill Households are pipe-linked families who exchange seed, water, and grazing space through promises sung over a shared tone. The pipes carry the household bond as sound, the sung agreement is the contract, and a family's standing is audible to everyone on the line."
  kind :culture
  subkind :social_order
  status :complete
  topics :"ring-hab", :household, :"social-structure", :music
  prevalence :uncommon
  appears_when all: { place: [:garden, :sealed_hab] }

  descriptive_identity(
    manner: "Rill folk hum their line's tone under their breath the way other people drum " \
            "fingers, identify each other's households by ear at a syllable, and treat a " \
            "spoken-only promise as a draft awaiting its singing.",
    hospitality: "A guest is brought to the pipe and given the house tone to hum before the " \
                 "meal — joining the tone is accepting the roof — and children repeat the " \
                 "phrase until the visitor can hold it."
  )

  prose <<~PROSE
    The garden habs' pipe networks — the #{encyclopedia_ref :elves, "elven"} water and warming lines that thread every deck — carry sound as faithfully as water, and the Rill Households built their society on the fact. Families on a shared line are linked houses: each keeps its own tone, the line carries every house's tone to every other, and the network of who-can-hear-whom is the map of social obligation. Agreements between linked houses are sung over the pipe — seed shares, water turns, grazing swaps, marriages — in the promise-form both houses' members witness from their own kitchens, and the sung contract binds precisely because the whole line heard it. The pipes are the registry. #{encyclopedia_ref :wake_counting, "Counters"} elsewhere read arrivals from the water; Rill children learn their neighbors' voices through the wall before they learn their faces.

    Water turns run on the old share system, and the shares are sung too. A line's water divides by time — each house's turn measured by the turn-song, sung through twice for a full share, once for a half — and the day's rotation is opened by the line's senior house and passed tone to tone down the network, a moving chord the whole line adjusts its chores around. Disputes go to the line-meet, held at the junction stone with every house's pipe in earshot, and the culture's deepest sanction is the quiet line: a house whose tone goes unanswered — greetings unreturned, promises unsung — is being told, in the register everyone shares, that its word has stopped carrying.
  PROSE

  cue "Through the kitchen wall a neighboring house's tone rises in the promise-form, a second tone answers it phrase for phrase, and the household pauses its own dinner to witness with lifted heads."
  cue "The day's water rotation moves down the line as a passed chord, house to house, and the garden decks reorganize their chores around it like tide work."
  affordance "The line is registry, clock, and news service in one — sung contracts witnessed by every kitchen, water turns kept by shared song, and any house's trouble audible to its whole network within the hour."
  pressure "Everything that binds is public to the line, so privacy is the culture's scarcest good — and the quiet-line sanction, applied by simple unanswering, can tighten around a house before anyone has said one accusing word aloud."
  variation "Old deep lines run to elaborate promise-forms with named cadences for each kind of agreement; young lines sing plain and argue that the old forms are half performance."
  variation "Marriages between houses on different lines are sung twice, once on each, and the couple's new tone is composed from both houses' — a commission the line's best singers compete for."
end
