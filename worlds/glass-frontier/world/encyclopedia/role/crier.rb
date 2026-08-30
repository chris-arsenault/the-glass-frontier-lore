encyclopedia :crier do
  name "Crier"
  summary "A crier carries a district's official word by trained voice, pitched to ride the structure so a call reaches through walls, floors, and market roar. The morning cry is the district's news, the crier's round is its clock, and an unscheduled cry empties buildings."
  kind :role
  subkind :office
  status :complete
  topics :"social-structure", :governance, :resonance
  prevalence :common
  appears_when any: { place: [:urban, :market] }

  descriptive_identity(
    attire: "The district's colors worn where a crowd can find them fast, and the crier's staff — " \
            "part badge, part instrument — shod to strike the ground notes that open a cry.",
    tools: "The staff, the round book listing the day's stations and notices in reading order, " \
           "and the trained voice itself, kept like a rigger keeps a line — warm-ups, rest " \
           "days, and a jealous schedule.",
    manner: "Measured to the syllable on duty — a cry is delivered at the pace the walls carry " \
            "best — and famously laconic off it, in a trade that spends its voice like wages."
  )

  cue "A staff strikes the ground twice, the ground note runs down the street ahead of the words, and shopkeepers three walls deep pause with their heads tilted before the voice itself arrives."
  cue "The same figure in district colors appears at the corner station at the same hour as yesterday, and half the square sets its errands by the arrival."
  affordance "The cry reaches everyone at once — through walls, over market roar, into back rooms — which makes the crier the district's one channel that arrives regardless of who is listening for it, and the round book a public record of exactly what was announced when."
  pressure "A civic crier reads notices in the fixed order entered in the round book. Appointing authorities control that order, while the archived book records exactly whose notice reached the district and when."
  variation "Market criers pitch for roar and brevity and freelance by the notice; civic criers hold sworn office, read in fixed order, and their round books are archived as the district's daybook."
  variation "Great halls train paired criers who split a cry between ground note and voice, and the pairing is a named partnership with a shared reputation, like a rigging team."

  prose <<~PROSE
    Speech in a built district has a trick available to it: pitch a trained voice against the structure's own carrying bands and the call rides the walls. A crier is the professional built on the trick — the district's official voice, trained until the morning cry reaches through masonry, market roar, and three floors of tenancy at once. The cry opens with the staff: two strikes that lay a ground note down the street, and the note runs ahead of the words like a bow wave, tilting heads before the voice arrives. What follows is the district's news in the fixed order of the round book — notices, prices where custom includes them, the found and the lost, the summons.

    The round is the office. A civic crier walks fixed stations at fixed hours, and the district sets errands, openings, and appointments by the crier's arrival with the confidence it gives the passing tables; the phrase 'by second cry' schedules half the working morning. The staff striking at an unscheduled hour empties buildings before the first word, so civic criers reserve those rounds for alarms and record every use in the book.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Voice and the Office"
    The voice is trained like an instrument and treated like one. Apprentice criers spend years on placement — finding the pitch each street carries, the pace the local walls reward — and a crier new to a district walks it silent for a month, learning its bands, before the first cry. Working criers keep rest days, warm long, and retire into teaching with their hearing intact by a discipline the trade enforces on itself; the strained crier pushing through is the trade's cautionary figure, and colleagues intervene.

    The office holds standing because the round book holds the record. A sworn crier's book — what was cried, where, at what hour — is archived as the district's daybook and cited in court as proof of public notice. Appointments to a sworn cry are argued like judgeships, and the crier's oath, in most towns, is administered at volume from the crier's first station as the new officer's first cry.
  PROSE
end
