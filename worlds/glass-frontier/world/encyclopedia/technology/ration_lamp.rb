encyclopedia :ration_lamp do
  name "Ration Lamp"
  aka "lamp", "stub lamp"
  summary "The ration lamp is the common household and working lamp of the system: a wick-and-shutter light descended from ring evacuation kits, built so every part can be replaced by hand. The name outlived the rationing."
  kind :technology
  subkind :device
  status :complete
  topics :household, :"ring-era", :rebuilding, :materials
  prevalence :common
  available_globally
  function "Portable flame light burning local oil, fat, or wax, with a shutter for directing and dousing"
  classes "Regional builds have diverged since the Glassfall: squat double-wick surface lamps, gimballed hab lamps, sprung cold-route lamps with warming shelves"
  operating_limit "A flame lamp, with a flame's appetites — it needs air worth breathing and is doused at any smell of leaked volatiles"

  descriptive_identity(
    appearance: "A palm-to-forearm metal or ceramic body with a broad fuel well, a heavy wick collar, " \
                "and a sliding shutter, every seam designed to open with fingers or a knife spine. " \
                "Old ones are archaeological in layers: a Rekindling-era body, a grandmother's " \
                "collar, last winter's wick.",
    working: "Trimmed and fed on the household rhythm, usually at the meal turns. It burns whatever " \
             "the region has — seed oil in Avar, rendered fat on the cold routes, pressed wax in " \
             "the garden habs — and burns bad fuel with smoke and complaint and keeps burning.",
    risks: "It is an open flame in worlds of sealed rooms. Hab codes hang lamps on stone or ceramic " \
           "an arm's reach clear of bedding, and a lamp burning blue-edged is announcing leaked " \
           "volatiles in the room's air."
  )

  prose <<~PROSE
    Interior light on the intact ring was infrastructure. Corridors and rooms drew glow from ring current the way they drew air and water, and the portable lamp was evacuation issue — a numbered item in the ration kits, between the water measure and the blanket. When the ring broke, the kit lamp was the light there was, and after #{elapsed :the_glassfall, approx: true} of copying, repair, and local drift its descendants hang in nearly every room in the system. The kit's name is still on them, worn smooth as a stair tread: a ration lamp is simply the lamp.

    The design brief of an evacuation lamp — burn anything, survive everything, open in the dark to frightened hands — is still the class's character. Every part opens with fingers or a knife spine: wick collar, fuel well, shutter track. Every part is made separately somewhere nearby, and a lamp accumulates its household's history in layers, a Rekindling-era body under a machined collar under this winter's wick. The shutter slides in a straight track, because a slide still ships light on a broken corner, and dousing by shutter leaves the wick trimmed for the next strike.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Builds and Custom"
    Regional builds have drifted the way tools drift. Avar road lamps are squat and double-wicked, built to sit on a moving cart and burn seed oil. Hab lamps gimbal, since a fragment's spin is a promise with exceptions. Cold-route lamps carry a sprung warming shelf over the flame so the next feeding of rendered fat pours instead of chipping. A traveled trader can place a household's origin from its lamp shelf about as accurately as from its accent.

    The custom that survives from the kits is the handing. A lamp is the first thing given to arrivals — evacuees, tenants, a crew moving into new quarters, a child moving from the family room to a bunk of their own — and it is given lit. The gesture is old enough to pass for instinct, and leaving it out is itself a message. Households retire a broken-beyond-repair lamp by pouring its last oil into the new one.
  PROSE

  cue "The lamp on the table is visibly three ages of metal — a worn old body, a newer collar, a fresh wick — and its shutter slides shut with the sound of a thing done ten thousand times."
  cue "New arrivals are met at the door by someone holding a lit lamp out to them before anyone has said a word about beds or terms."
  affordance "A ration lamp burns whatever the region has and opens with bare fingers, so light is always ten minutes and local materials away, and a lamp handed lit is an unambiguous welcome in any settlement in the system."
  pressure "It is an open flame in sealed rooms and old air — hab codes are strict about stone shelves and distance from bedding, and a flame that picks up a blue edge is reporting leaked volatiles with very little patience for discussion."
  variation "Avar builds squat double-wick cart lamps for seed oil; hab builds gimbal against unreliable spin; cold-route builds carry a sprung shelf that warms the next feeding of fat over the flame."
  variation "Households retire a dead lamp by pouring its last oil into its replacement, and a few trades — keeps, couriers, cordon watches — are fussy about retiring theirs to the same maker's bench that built the new one."
end
