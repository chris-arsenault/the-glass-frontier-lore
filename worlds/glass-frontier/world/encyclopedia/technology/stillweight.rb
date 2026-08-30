encyclopedia :stillweight do
  name "Stillweight"
  summary "A stillweight is a portable structural clamp that holds an object in relation to nearby stable mass. Rescue, road, and salvage crews use its three feet and ringglass core to restrain damaged doors, vehicles, braces, and buildings."
  aka "Field mass clamp", "deadweight"
  kind :technology
  subkind :machine
  function "Holds one contacted object against local movement by returning its load through a structural-frequency anchor"
  status :complete
  topics :resonance, :"structural-freq", :salvage, :danger, :rebuilding
  prevalence :common
  available_globally

  descriptive_identity(
    appearance:
      "A squat metal body on three jointed feet, with a ringglass core " \
      "set behind a thick hand wheel and witness pins at each foot. " \
      "Careful crews chalk the selected tone on the casing and repeat " \
      "the mark on the structure it is holding.",
    handling:
      "Two workers seat it — all three feet on the object, the wheel " \
      "opened until the core answers the lowest clear structural tone " \
      "nearby, then closed slowly while one turns and one reads the " \
      "pins. Once seated it holds the object against the chosen mass, " \
      "and it releases in reverse: load off onto an ordinary support " \
      "before the wheel opens.",
    risks:
      "The clamp seats on whatever mass is actually continuous — a " \
      "buried water line, the next foundation over — so the first pull " \
      "can stress an unmonitored service or neighboring structure. Opened under load it " \
      "jumps, twists its feet, or returns the held motion all at once, " \
      "and a counterfeit core can divide under a changing load, leaving " \
      "each fragment anchored to a different mass.",
  )

  prose <<~PROSE
    A stillweight is a portable structural clamp used to hold a door, brace, vehicle, or broken piece of a building in its present relation to nearby mass. The machine has a squat metal body, three jointed feet, and a ringglass core behind a thick hand wheel. Workers call it a deadweight when it is being used and a stillweight when it is being inspected, sold, or blamed.

    The device does not make the object stronger. It gives an applied load somewhere else to return. A sound placement can hold a shifting wall while people leave. A poor one can keep the clamp still while the wall tears around its feet.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Taking a Seat"
    All three feet must contact the object or structure being held. The operator opens the wheel until the core answers the lowest clear structural tone available nearby, then closes it gradually while watching witness pins at each foot. The pins show how much load is returning through that contact.

    Once seated, the clamp resists movement relative to the chosen mass. On a road, that may be deep stone beneath a sliding surface layer. On a ship, it may be the main hull rather than the drifting cargo frame. In a Bloom cordon, the nearest stable mass can change while the clamp remains active, which is why Council crews mark both ends of the relation before applying force.

    The hand wheel is intentionally slow. A powered close can take a false tone and reach full load before the witness pins reveal the mistake. Two workers normally set the machine: one turns, one reads the contacts and the surrounding structure.
  PROSE

  prose <<~PROSE, section: :applications, heading: "Field Uses"
    Rescue crews place stillweights across a damaged hatch before cutting away a bent hinge. Counterweight movers use them to hold a pressure sled while another support changes height. Claim crews clamp loose stock before a cutter pulls on the far side of the seam. Road teams anchor a hauler during ground movement or secure a bridge panel after its ordinary seat fails.

    A stillweight can restrain a moving machine if the operator reaches a sound part of it. It is unreliable against a person or animal: flesh yields around the feet, clothing tears, and the nearest clear tone usually belongs to the floor. Crews do use one to pin a Farborn shell, jaw plate, or rigid limb after the living tissue has been driven away from the contact.

    The machine releases in reverse order. The load must be transferred to an ordinary support before the wheel opens. A clamp removed while still carrying weight can jump, twist its feet, or return the held motion all at once.
  PROSE

  prose <<~PROSE, section: :dangers, heading: "The Wrong Anchor"
    Stillweights follow structural continuity rather than the operator's intention. A clamp placed on a warehouse floor may take its seat from the buried water line, a neighboring crane foundation, or a resonant seam crossing the whole yard. The first pull then moves or stresses that unmonitored service or neighboring structure.

    Standard practice begins with a low test load and observers at every plausible return. Workers chalk the selected tone on the machine and repeat it on the structure. If the two marks disagree after a shift, the area clears before anyone touches the wheel.

    Counterfeit cores create another hazard. A poor ringglass cut can hold during setup and divide under a changing load, leaving each fragment anchored to a different mass. The casing then becomes the connection between motions the machine can no longer reconcile.
  PROSE

  cue "Secondhand buyers open the core before a stillweight sale closes. Blue-backed cores and ground-off lot plates end the inspection, and an owner who refuses it is assumed to be moving recalled stock."
  cue "The machine has a squat metal body, three jointed feet, and a ringglass core behind a thick hand wheel."
  affordance "The clamp can pin a Farborn shell, jaw plate, or rigid limb once living tissue has been cleared from the contact. Flesh yields around the feet, clothing tears, and the nearest clear tone usually belongs to the floor."
  pressure "The clamp seats on whatever mass is structurally continuous: a buried water line, the next crane's foundation, or a seam crossing the whole yard. Crews begin with a low test load and station observers at every plausible return."
  variation "Rescue crews place stillweights across a damaged hatch before cutting away a bent hinge."
  variation "Road teams anchor a hauler during ground movement or secure a bridge panel after its ordinary seat fails."

end
