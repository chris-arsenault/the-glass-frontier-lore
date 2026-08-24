artifact :stillweight do
  name "Stillweight"
  summary "A stillweight is a portable structural clamp that holds an object in relation to nearby stable mass. Rescue, road, and salvage crews use its three feet and ringglass core to restrain damaged doors, vehicles, braces, and buildings."
  aka "Field mass clamp", "deadweight"
  subkind :machine
  function "Holds one contacted object against local movement by returning its load through a structural-frequency anchor"
  status :complete
  tags :resonance, :"structural-freq", :salvage, :danger, :rebuilding
  prominence :recognized

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
    Stillweights follow structural continuity rather than the operator's intention. A clamp placed on a warehouse floor may take its seat from the buried water line, a neighboring crane foundation, or a resonant seam crossing the whole yard. The first pull then moves or stresses something nobody was watching.

    Standard practice begins with a low test load and observers at every plausible return. Workers chalk the selected tone on the machine and repeat it on the structure. If the two marks disagree after a shift, the area clears before anyone touches the wheel.

    Counterfeit cores create another hazard. A poor ringglass cut can hold during setup and divide under a changing load, leaving each fragment anchored to a different mass. The casing then becomes the connection between motions the machine can no longer reconcile.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Blue-Core Recall"
    A batch of blue-backed replacement cores has failed in road and dock work around Kaleidos. The supplier cut the pieces from one apparently uniform ringglass lot; later tests found two overlapping structural responses. The first failure tore a clamp apart. The second pulled a section of cargo rail sideways before the operator released it.

    #{ref :counterweight, "The Counterweight"} has published the lot marks and offered inspection at cost. Several machines with ground-off plates have appeared in independent yards. Until the batch is traced, experienced crews ask to see the open core before accepting a stillweight brought by someone else.
  PROSE

  gm_note :triggered_by, "Players will try to pin something alive with one. Flesh yields around the feet, clothing tears, and the nearest clear tone belongs to the floor, so the clamp takes a Farborn's shell or a rigid limb only after the soft parts are off the contact."
  gm_note :complicates, "The clamp seats on whatever mass is actually continuous, not on what the operator chose: a buried water line, the next crane's foundation, a seam crossing the whole yard. " \
                        "The first pull moves or stresses that instead, in front of nobody who was watching for it."
  gm_note :appears, "A stillweight offered secondhand anywhere around Kaleidos this year gets its core opened before the sale closes. " \
                    "Blue-backed cores and ground-off lot plates end the conversation, and an owner who refuses the inspection is assumed to be moving recalled stock."
end

relate :rel_counterweight_possesses_stillweight, :possesses, :counterweight, :stillweight do
  prose "Counterweight crews carry stillweights to hold one part of a move while its ordinary support changes."
end
relate :rel_stillweight_depends_ringglass, :depends_on, :stillweight, :ringglass do
  prose "A cut ringglass core selects the structural tone through which the clamp returns its load."
end
relate :rel_stillweight_resonates_counterweight_rig, :resonates_with, :stillweight, :counterweight_road_rig do
  prose "The road rig uses several independent clamps around its pressure sleds and bridge box."
end
relate :rel_stillweight_resonates_remote_cutting, :resonates_with, :stillweight, :remote_cutting do
  prose "Claim crews anchor loose stock before a remote cutter draws on the far side of a seam."
end
