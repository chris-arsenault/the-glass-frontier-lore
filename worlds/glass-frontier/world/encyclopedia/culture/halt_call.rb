encyclopedia :halt_call do
  name "Halt-Call"
  summary "Halt-Call is the body of safety law and working custom that lets crews, cordon keepers, and infrastructure workers stop dangerous work before ownership disputes are settled. Resonance made shared systems of every wall and pipe, and the law follows the resonance."
  kind :culture
  subkind :work_tradition
  status :complete
  log "2026-08-31 — Renamed Workshop Authority to Halt-Call; the name centers the spoken stop that carries across ownership and trade boundaries."
  topics :governance, :danger, :trade, :training
  prevalence :common
  available_globally

  descriptive_identity(
    manner: "Workers under this custom name their standing before their diagnosis — 'I hold the " \
            "air watch, stop the line' — and owners answer the standing first. The argument about " \
            "what the gauge meant happens after the drives are quiet.",
    hospitality: "A visiting crew is shown the shop's stop signals with the wash room and the " \
                 "water, in that order, and a shop that skips the tour is telling the visitors " \
                 "what it thinks of them."
  )

  prose <<~PROSE
    A workshop may belong to one owner while drawing air, heat, power, and structural support from an inhabited place. Resonance deepens the entanglement: a cutting floor's kinetic work travels through the ground into the neighbor's foundations, a mistuned drive hums in every connected wall, and a shop can poison a district's shared bands as surely as its water. Halt-Call is the answer worked out across the system: command over the job belongs to the owner, and authority to stop it belongs to everyone responsible for what the job touches. A worker who hears a missed pressure pulse, a cordon keeper watching unstable tools, or a receiver reading dangerous cargo can call the halt before a supervisor accepts the diagnosis.

    Stopping early is expected to produce false alarms, and the custom prices them in. The burden falls on the person who wants to resume: show a complete air cycle, a stable instrument watch, a readable cargo history, or another local proof that the shared system can carry the load. Owners retain control of schedules and methods. The atmosphere, the road, the wall, and the neighboring shop stay common property of everyone a bad decision would take with them, and the halt-call is those neighbors' standing vote.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Watches and Proofs"
    The custom runs on named watches. A shop posts who holds the air watch, the ground watch, the cargo watch — pooled across small crews the way small herds pool under one drover — and the watch-holder's call carries the full weight of the custom whoever their employer is. Watches rotate on schedules the whole floor can recite, and taking a watch drunk or distracted is the offense the trades punish hardest, above theft.

    Resumption proofs are local and concrete: a complete air cycle witnessed by two, an instrument watch held stable through a full shift, a cargo history read aloud against the manifest. Large shops encode stop authority in automatic circuits and argue with their own machinery; small crews preserve it through witnessed readings and argue with each other. Both keep the same ledger habit — every halt logged with its watch, its reading, and its resolution — and a shop's halt ledger is the first thing a careful insurer or a careful bride's family asks to read.
  PROSE

  cue "Heavy drives fall silent while workers point to the shared gauge or pulse that gave them standing to stop the line."
  cue "By the door, a posted board names the day's air, ground, and cargo watches in chalk, and the names rotate on a schedule the floor recites from memory."
  affordance "Anyone responsible for the affected system can halt work on their own standing, and a visiting crew that learns the shop's stop signals in the door-tour can work under them the same day."
  pressure "Cooling or interruption may destroy valuable material, giving every owner a reason to call the warning an instrument fault — and the resumption proof takes exactly as long as it takes."
  variation "Large shops encode stop authority in automatic circuits; small crews preserve it through named watches and witnessed readings."
  variation "Districts differ on who pays for a false alarm — some split the loss across the trade, some let it lie where it falls — and journeymen pick their towns accordingly."
end
