encyclopedia :marrow_kite do
  name "Marrow Kite"
  kind :lifeform
  subkind :creature
  status :complete
  topics :ecology, :"signal-freq", :navigation, :orbital
  prevalence :uncommon
  appears_when any: { place: [:debris_field, :sealed_hab] }
  summary "Marrow kites are hollow-boned gliding hunters of the fragment gaps, raised from the nest by keepers who fly them as living survey and message birds. A manned kite rides the kinetic gradients between habs and comes back to the wrist that weighed it that morning."
  origin "Wild stock of the ring's open galleries, kept and flown since the Famine years"
  biology "Hollow marrow-light bones and broad stiff wings built for gradient soaring; a crop-fed hunter that reads kinetic bands the way surface birds read wind"
  resonance_relation "Soars the kinetic gradients between fragments and turns along band edges instruments confirm"

  descriptive_identity(
    appearance: "A long-winged glider the span of an open door, slate above and pale below, with " \
                "a blunt whiskered head. Kept kites wear soft anklets and a keeper's bell whose " \
                "tone the whole hab learns; wild ones wear scars from the debris they hunt " \
                "between.",
    behavior: "It rides the kinetic gradients between fragments in long banked circuits, hunting " \
              "the small life of the gaps, and returns to roosts it has fixed on. A kept kite " \
              "flies out on a task — a carried message, a circuit over a claim — and comes home " \
              "to the wrist and the weighing.",
    threat: "Its talons and stoop are sized for gap vermin, and its danger to people is the " \
            "misread gradient: a kite breaking off a line and beating for home is announcing " \
            "band weather the crew's instruments will confirm shortly.",
    senses: "It reads kinetic bands with its whole body — surveys tracking flown kites map " \
            "gradient edges from their turns — and it fixes on individual people by voice " \
            "and gait at remarkable range.",
    risks: "Keeping runs on the daily weighing: a kite over its flying weight ignores the lure " \
           "and the task both, and a keeper who skips the scales trains the bird to skip the " \
           "keeper."
  )

  prose <<~PROSE
    Between the fragments, where the kinetic gradients pile into invisible hills and channels, marrow kites soar. The birds are built for the country: bones blown hollow to a marrow-light frame, wings long and stiff for gradient riding, a hunter's eye for the small vermin of the gaps. Wild kites fix their roosts on the sunward faces of dead spans and work the same circuits daily, and gap pilots read their banked turns as free instrumentation — a line of soaring kites is a mapped gradient edge, published hourly, at kite expense.

    When Famine relays went dark, hab keepers manned wild-taken nestlings — the keeper's term for raising a bird to the wrist — and flew them between stations with message capsules on their legs. The practice continued because a kite crosses gaps in band weather that grounds flitters and scrambles relays. A manned bird knows its keeper by voice and gait, flies to task for the lure and crop, and comes home to the wrist. Keepers weigh each bird every morning. A kite at flying weight works; an overfed kite stays on the strut regardless of the capsule waiting on its leg.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Keeper's Round"
    A working kite's day begins with the weighing, a crop ration measured against the task, checked anklets, and the keeper's distinct bell wrapped or freed depending on whether the flight needs announcing. Message work runs station to station along trained lines, capsule on the leg. Survey work sends the bird over claims and cordons while crews log its turns from below. Storm launches carry messages through band weather that has silenced district relays.

    Manning a nestling takes a season of patience — carried on the fist through the hab's noise until the crowds bore it, fed at the whistle, flown first on the creance line down a closed gallery. Keeping lines run in families and stations, and a bird outliving its keeper passes with the bell, which the successor re-tunes, by custom, one note away.
  PROSE

  cue "A long-winged bird banks in slow circuits between the fragments, and the pilot marks the turn line on the chart with the note 'kites' and full confidence."
  cue "On a dock strut a keeper weighs a hooded bird on a hand scale at dawn, reads the number, and measures the morning crop against it to the pinch."
  affordance "A manned kite carries messages and flies survey circuits through band weather that grounds flitters and scrambles relays, and wild kites' soaring lines map gradient edges for any pilot who looks up."
  pressure "The whole partnership runs on flying weight and daily trust — a skipped weighing or a fattened bird sits out the task, and the message in the capsule waits on a strut with it."
  variation "Station lines breed for steadiness on the wrist and fly announced with bells; claim-survey keepers fly silent and breed for range, and the two lines meet at the fairs to disparage each other's birds."
  variation "Some habs fly kites on the public payroll with the keeper's bell doubling as the district's storm signal; others treat keeping as a family trade and rent the bird by the flight."
end
