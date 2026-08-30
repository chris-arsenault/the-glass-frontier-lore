encyclopedia :chain_speaker do
  name "Chain Speaker"
  summary "A chain speaker is a certified reader of the elves' ve-linked names. Speakers reconstruct identities from damaged recordings, perform surviving dedication chains at state occasions, and train against the recorded voices kept by the reading floors."
  kind :role
  subkind :profession
  status :complete
  topics :"ring-era", :archives, :governance, :music
  prevalence :rare
  appears_when any: { place: [:archive, :urban] }

  descriptive_identity(
    attire: "The reading houses' gray archive formal, with the certification cord of " \
            "the Thornvault reading floor worn plain at the wrist.",
    tools: "The trained voice, the chain rolls — the certified texts of every recovered " \
           "ve-chain, with the reading floor's pronunciation marks — and the tuning " \
           "reed for the pitch turns that written elven marks and human mouths lose.",
    manner: "Precise to the syllable and unhurried; registrars, officials, and mourners " \
            "wait while a speaker completes every link in a chain."
  )

  cue "At the treaty signing, the gray-dressed speaker rises and delivers the hall's dedication chain — name linked to parent's name linked to the name before, every ve-turn pitched against the reading floor's marks."
  cue "In the archive's reading room, the speaker works through a damaged recording phrase by phrase beside the registrar, and stops at one turn: 'that is a chain — Thaliraea's line, the middle link uncertain.'"
  affordance "A certified speaker can identify an elven voice from the chain-shape in a damaged record, deliver the dedication chains used at state occasions, and teach the reading floors' pronunciation."
  pressure "Archives and registrars accept certified chain speakers for formal identifications, and the public roll is short enough that every certification, retirement, and disputed reading changes who can take that work."
  variation "Thornvault's reading floor certifies by examination against recorded elven speech and holds the chain rolls; Sithari's civic speakers work the state calendar, and the two traditions dispute three pitch turns with published intensity."
  variation "Identification work pays the trade's way — registries retain speakers for backecho hearings and damaged-record dockets — while the ceremonial chains, spoken at treaties, great funerals, and the archives' own occasions, are the work the speakers train for."

  prose <<~PROSE
    The #{encyclopedia_ref :elves, "elves"} joined a personal name to a parent's name and the name before through pitched ve-links. Those chains survive in recordings, inscriptions, and the archives' deep stock. Chain speakers learn to voice them from the surviving recordings, including pitch turns that written marks approximate and an untrained reader misses.

    Damaged-record identifications provide most paid work. A certified speaker recovers the shape of a chain where individual syllables have decayed, states which link remains uncertain, and sits beside the registrar when a recorded voice must be assigned to a vanished person. Treaties, state funerals, archive readings, and halls with surviving elven dedications call for the same craft in ceremony. The speaker delivers the entire chain at its recorded pace; the room waits.

    Reading floors grant certification through examination against recorded elven speech. Their chain rolls preserve each recovered form with pronunciation marks and disputed readings in the margins, while a tuning reed gives the pitch turns a repeatable reference. Thornvault holds the principal rolls and issues the gray-clad speakers' wrist cords. Sithari's civic speakers maintain a separate state calendar, and the two traditions publish their disagreement over three pitch turns.

    The profession began with Famine-generation archive clerks who learned the chains while cataloguing recordings. They read the recovered names aloud to families of the vanished, then taught the pronunciation beside the rolls. Certification still joins those tasks: a speaker must satisfy the record and make the name intelligible to the people waiting to hear it.
  PROSE
end
