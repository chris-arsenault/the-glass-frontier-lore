encyclopedia :rattle_tug do
  name "Rattle Tug"
  kind :technology
  subkind :transport
  status :complete
  topics :transport, :resonance, :trade, :"ring-hab"
  prevalence :uncommon
  appears_when all: { place: [:dock] }
  summary "A rattle tug is a short-haul dock mover that walks heavy cargo in pulses — gripping the load, striking a tuned kinetic knock through it, and letting the whole mass hop a hand's width at a time. The name is the sound, and the sound is the sorting deck at Rattle all day long."
  function "Moves heavy unwheeled cargo across dock floors in tuned kinetic pulses"
  classes "Deck tugs for pallet masses, the low bulk pattern for hull sections, and paired choir tugs that walk one great load between them"
  capacity "A deck tug walks anything its jaws can grip and its knock can move whole — the practical measure is the load's answer, tested with three soft knocks before the haul"
  operating_limit "A tug moves loads a hand's width per pulse on flat deck; ramps, ice, and cracked floors change the arithmetic and the accident reports"

  descriptive_identity(
    appearance: "A waist-high wedge of frame and jaw with two broad grip arms and a striker " \
                "housing between them, painted in dock colors and dented like a veteran's kit. " \
                "Working, it squats against the load with its feet splayed and its whole body " \
                "tensed for the knock.",
    working: "The operator grips the load, sounds it with three soft test knocks, sets the " \
             "pulse to what the answer says, and walks the mass across the deck one measured " \
             "hop at a time — clack, slide, settle, at the pace of a slow drum.",
    risks: "Every pulse tests the load's whole structure, and cargo with a hidden crack " \
           "announces it partway across the deck, at volume, in pieces."
  )

  prose <<~PROSE
    Docks move masses that despise wheels — hull sections, tank rings, machinery on skids — and the rattle tug is the dock's answer wherever cranes run short. The machine is a waist-high wedge of jaw and striker: it grips the load, sounds it with three soft knocks, and then walks it, driving a tuned kinetic pulse through the mass so the whole load hops a hand's width and settles, again and again, at the pace of a slow drum. A practiced operator reads the load's answer to the test knocks the way a #{encyclopedia_ref :load_singing, "load singer"} reads a frame, sets the pulse to suit, and takes a hull section across a working deck through gaps a crane could only envy.

    The name is the sound, and the sound is a place: the sorting decks at Rattle run tug choirs all shift, and the deck's clattering pulse — dozens of loads walking their separate lines — is the settlement's heartbeat, audible through the hull three galleries away. Tug work is precision at a stately pace. Loads walk marked lanes, operators call crossings by knock code, and the deck's traffic runs on rhythm discipline: a tug that breaks the shared measure puts two walking masses into the same square of deck, and the seniors' lecture afterward is a dock institution.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Test Knock and the Honest Load"
    The three soft knocks before a haul are the trade's whole safety code in miniature. A sound load answers round and even; a cracked one answers flat somewhere, and the flat spot is the future break. Tug operators refuse loads on the test knock with the same protected standing freight law gives an unreadable manifest, and shippers who dress a cracked casting learn that the tug finds it — either at the test, cheaply, or mid-deck, expensively, in front of witnesses. Dock courts treat the operator's logged test call as expert testimony, and veteran operators are borrowed across docks for exactly that ear.

    Patterns diverge by load. Deck tugs do the daily pallet trade. The low bulk pattern squats under hull sections and walks them like a tide moving a barge. Paired choir tugs take one great load between them, pulsing alternately on a shared count, and a good pair works together for years — operators bid to keep their partners through transfers, and the pairing has the social standing of a boat crew.
  PROSE

  cue "A waist-high machine squats against a crated mass, knocks three times softly like a visitor at a door, then walks the whole load across the deck in measured clacking hops."
  cue "The sorting deck's dozen tugs run their pulses inside one shared rhythm, and when a newcomer's machine drops the beat, every operator on the floor looks up at once."
  affordance "A tug moves crane-sized masses through crane-proof spaces at a walk, and its test knock is a free structural audit — the operator's logged call on a load's soundness stands as expert testimony in dock court."
  pressure "Every pulse stresses the load's whole structure, so hidden cracks surface mid-deck at volume — and the operator who skipped the test knock owns the cleanup, the delay, and the deck's undivided attention."
  variation "Rattle runs tug choirs on rhythm discipline strict as a drill company; smaller docks run one tug and a hand crew, and the tug operator ranks with the crane master."
  variation "Paired choir tugs walk the great loads on an alternating count, and established pairs are kept together through transfers like boat crews, with bidding."
end
