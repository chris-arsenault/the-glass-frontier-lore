encyclopedia :space_traffic_law do
  name "The Empty Mouth"
  summary "The Empty Mouth is the shared body of route and docking rules that gives disabled or unpowered craft priority over vessels still able to maneuver."
  kind :culture
  subkind :governance
  status :complete
  log "2026-08-31 — Renamed Space Traffic Law to The Empty Mouth; the name comes from the clear docking approach reserved for craft that cannot maneuver."
  topics :transport, :navigation, :governance, :orbital
  prevalence :common
  appears_when all: { place: [:orbital, :road] }
  appears_when all: { place: [:orbital, :dock] }

  prose <<~PROSE
    The Empty Mouth begins with remaining control. A powered vessel can turn, brake, or wait; a disabled vessel cannot. Working traffic therefore yields outward from the safest line, and ordinary docking queues leave emergency capacity open for craft arriving without reliable thrust.

    Local acts differ in geometry. A narrow passage may reserve its center. A chain of waystations may keep one docking mouth unused. The shared rule is that inconvenience falls first on the vessel that can still choose where to go.
  PROSE

  cue "Route lamps move powered traffic away from the safest line while one otherwise usable docking mouth remains empty beside a crowded station."
  cue "A vessel drifting in on cold thrusters gets the center line and the ready mouth, and route lamps reform the displaced queue around it."
  affordance "A crew that has genuinely lost maneuvering power can claim passage and emergency docking ahead of commercial traffic."
  pressure "A craft reporting partial failure gains priority before anyone can determine whether it is disabled, damaged, or merely late."
  variation "Passage settlements reserve a center line; stations preserve an empty docking mouth; convoy routes assign the nearest powered vessel as escort."
  variation "The code descends from the ring's approach law and keeps its vocabulary — mouths, lines, standing capacity — while every clause now assumes the network fails, which the ring's version assumed away."

  prose <<~PROSE, section: :structure, heading: "The Claim and the Reckoning"
    The priority claim is honored first and examined afterward, in that strict order. A crew that calls a failure gets the line and the mouth on the call alone — the code's founders wrote in the Famine's lesson that a challenged mayday kills more reliably than a false one — and the examination follows at the dock: logs read, thrust histories pulled, and the claim reckoned true, mistaken, or dressed. A dressed claim is the code's deep offense. The penalty custom everywhere is some version of standing last: a season at the back of every queue the vessel enters, posted, with the crew's name traveling the routes ahead of them.

    Enforcement is mutual because the geometry is. Every crew on a route is one failure from claiming the mouth themselves, so the working traffic polices the courtesy with an interest no inspectorate could match — yielding crisply, reporting sloppily-yielded lines, and funding the standing capacity through docking fees with less grumbling than any other line item gets. The empty mouth beside a crowded station is the code made visible, and route cultures point it out to children the way surface towns point out the fire bell.
  PROSE
end
