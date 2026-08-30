encyclopedia :keep do
  name "Keep"
  aka "the keep", "roomkeep"
  summary "A keep runs a public room — a drinking room, a food hall, a waiting floor — and is answerable for its tone in both senses: the mood of the crowd and the resonance a packed room accumulates. The trade's judgment call is when to damp a room and when to close it."
  kind :role
  subkind :profession
  status :complete
  topics :"social-structure", :trade, :resonance
  prevalence :common
  appears_when any: { place: [:urban, :market, :dock] }

  descriptive_identity(
    attire: "Dressed to be seen across a crowded room and to work in one: an apron with a wet cloth " \
            "over the shoulder, sleeves clear of the taps, and the room's slate riding one hip with " \
            "the morning and evening readings chalked where any warden can see them.",
    tools: "The slate, the felts, and the corner. Every keep knows the room's resonant corner and " \
           "manages it — wet felts hung to damp it, the iron-bellied regulars seated into it, the " \
           "fiddle moved away from it on a crowded night.",
    manner: "Hospitable at the door and loyal to the whole room over any one table in it. " \
            "A keep watches the room the way a pilot watches weather, and regulars learn to read " \
            "the keep reading the room."
  )

  cue "Behind the counter hangs a row of wet felts, and a slate by the taps carries two chalked readings — morning and evening — that customers ignore and the ward warden checks."
  cue "As the room fills, the keep quietly reseats people: the big slow regulars into the far corner, the card game away from it, the musician nearer the door."
  affordance "The keep knows the room — its regulars, its debts, the street's mood, and who came in wrong tonight — and a traveler who asks the keep before asking the ward board usually gets the truer answer."
  pressure "The keep may reseat a sharpening room, hang the wet felts, move the music, or call last drinks. The slate preserves the morning and evening readings, so wardens and regulars can compare the call with the room's condition."
  variation "Dock-front keeps run loud rooms hard and close them fast; garden-hab keeps run quiet floors where the reading rarely moves and the felts are ceremonial."
  variation "Prosperous rooms retain a tuner for the readings; most keeps work by ear and keep the slate themselves, while ward records preserve the results of both methods."

  prose <<~PROSE
    A packed public room accumulates resonance the way it accumulates heat and noise. Bodies, voices, struck glasses, and stamped floors feed the structural band, and a room running sharp works on the people in it — tempers shorten, hands get clumsy, the same argument that dissolved in laughter an hour ago now breaks a jaw. Public rooms employ a keep to hold that balance; the trade's name belongs to the person who keeps the room.

    The working craft is half hospitality and half management of the physics. Every room has a resonant corner where the sharpness gathers first, and a keep's floor plan is built around it: wet felts hung to damp it, the heaviest and calmest regulars seated into it as ballast, the music kept away from it after the second hour. The room's slate carries morning and evening readings — chalked from an instrument in prosperous houses, from the keep's own ear in most — and ward wardens on their rounds check the slate the way they check a kitchen's water.

    A keep who calls the room — last drinks, felts up, out by the count — is obeyed by custom old enough that arguing with the call marks a stranger. Closing costs the keep the night's remaining take. Regulars and wardens remember both the calls and the nights allowed to run, and that record determines a keep's standing in the room.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Standing and Succession"
    A keep's standing is local and earned in one room. Wardens rely on the slate and the call; regulars rely on the seating and the credit; travelers rely on the answers. The room's ledger of small debts — meals carried, wages advanced, quarrels adjourned — is the keep's real register, and when a room changes hands the ledger's handover matters more than the lease. A new keep who honors the old debts inherits the regulars; one who wipes the slate inherits the furniture.

    Most keeps train up through their own floor — potwash, taps, door, counter — and the floor knows its next keep years before the current one retires. The call is the one test that must simply be taken: a candidate who has closed a lively room early, on their own reading, and stood in the doorway eating the lost night while the regulars grumble past, is a keep. Everything before that is preparation.
  PROSE
end
