encyclopedia :chain_speaker do
  name "Chain Speaker"
  summary "A chain speaker performs the elven ve-linked name chains aloud — at archive readings, state occasions, and the identifications where a damaged record's only surviving signature is the shape of a chained name. The living voices trained to the dead form are counted on one list."
  kind :role
  subkind :profession
  status :complete
  topics :"ring-era", :archives, :governance, :music
  prevalence :rare
  appears_when any: { place: [:archive, :urban] }

  descriptive_identity(
    attire: "Archive formal in the reading houses' gray, unornamented by the speakers' " \
            "own strict custom — the chain carries the weight, the speaker carries the " \
            "chain — with the certification cord of the Thornvault reading floor worn " \
            "plain at the wrist.",
    tools: "The trained voice, the chain rolls — the certified texts of every recovered " \
           "ve-chain, with the reading floor's pronunciation marks — and the tuning " \
           "reed for the pitch turns that written elven marks and human mouths lose.",
    manner: "Precise to the syllable and unhurried past all social pressure; a speaker " \
            "performing a chain takes the time the chain takes, and the room adjusts, " \
            "which is understood by everyone present to be the point."
  )

  cue "At the treaty signing, the gray-dressed speaker rises and delivers the hall's dedication chain — name linked to name linked to name, the ve-turns pitched exactly — and the room holds still for a form of speech with living speakers on one list."
  cue "In the archive's reading room, the speaker works through a damaged recording phrase by phrase beside the registrar, and stops at one turn: 'that is a chain — Thaliraea's line, the middle link uncertain.'"
  affordance "A certified speaker can identify an elven voice from the chain-shape in a damaged record, deliver the ceremonial chains that state occasions require, and teach the reading floors' pronunciation — living continuity for the one naming form with living work left to do."
  pressure "The form's whole authority is exactness in a language with corrections available from any surviving recording and from the archives' scholars — and the speakers' list is short enough that every certification, retirement, and dispute is news on it."
  variation "Thornvault's reading floor certifies by examination against recorded elven speech and holds the chain rolls; Sithari's civic speakers work the state calendar, and the two traditions dispute three pitch turns with published intensity."
  variation "Identification work pays the trade's way — registries retain speakers for backecho hearings and damaged-record dockets — while the ceremonial chains, spoken at treaties, great funerals, and the archives' own occasions, are the work the speakers train for."

  prose <<~PROSE
    The #{encyclopedia_ref :elves, "elves"} named themselves in chains — the ve-linked forms, name joined to parent's name joined to the name before — and the chains outlived their speakers in recordings, inscriptions, and the archives' deep stock. The chain speaker is the living profession of the dead form: voices trained at the reading floors to deliver a chain exactly, with the pitch turns that written marks and untrained mouths lose, certified against the surviving recordings of elven speech itself. The work divides as the summary of any archive trade divides. Identification pays: a certified speaker reads the chain-shape out of damaged records, names the line where the syllables have decayed past a scholar's tools, and sits beside registrars at the hearings where a recording's voice must be assigned to a vanished person. Ceremony endures: the great occasions — treaties, state funerals, the archives' own calendar — keep the custom of a spoken chain, delivered for the halls and works whose elven dedications survive, and the system's most solemn rooms still hold still, a few times a year, for names in a form with no one left to correct it but the record.

    The trade knows exactly what it is. The reading floors' certification examines against recorded elven speech to the syllable; the chain rolls carry every recovered chain with the floor's pronunciation marks argued into the margins; and the speakers — a list short enough that the whole profession attends its own certifications — carry the form with the particular care of custodians answerable only to the record itself. The profession's founding is taught with its craft: the first speakers were the Famine-generation archive clerks who learned the chains so the recordings being catalogued could be read aloud to the families of the vanished — the form kept living, in the beginning, because someone had to be able to say the names.
  PROSE
end
