encyclopedia :root_tracing do
  name "Warmlining"
  summary "Warmlining is the survey craft of mapping buried, live ring conduits from the faint warmth they leave in adjoining soil and stone. Warmliners follow the warmth by hand and chalk the course and junctions for excavation crews."
  kind :ability
  subkind :technique
  status :complete
  log "2026-08-31 — Renamed Tracing to Warmlining. The recovery trade names the buried conduit trace a warmline and the practitioner a warmliner; tracing alone did not distinguish the craft."
  topics :"ring-era", :salvage, :rebuilding, :training
  prevalence :uncommon
  appears_when all: { place: [:surface, :ringglass_rich] }
  function "Maps buried, live ring conduits from the surface by following their warmth through adjoining soil and stone"

  descriptive_identity(
    signs: "The warmliner works a wall or foundation line with bare palms, a " \
           "slow press-and-hold at each station, and chalks the verdicts as " \
           "they go — the warm line's course, its junctions, and the double " \
           "mark where the warmth divides.",
    effect: "A live conduit warms its surroundings by a small, steady margin. " \
            "Trained hands distinguish that line from sun and seasonal heat, " \
            "and a " \
            "practiced warmliner walks buried infrastructure for streets, " \
            "junction by junction, on palm readings alone.",
    limits: "Dead conduits produce no warmth, deep runs fade below touch, and " \
            "sun-heated surfaces obscure the reading. Tracers therefore work " \
            "at dawn and mark confidence as well as position."
  )

  prose <<~PROSE
    Live #{encyclopedia_ref :elves, "elven"} power, water, and signal conduits warm the surrounding soil and stone by a small, steady margin. A warmliner works bare-handed at dawn before sunlight heats the surface. They press and hold at regular stations, follow the warmline along walls and foundations, feel where it divides at a junction, and chalk the buried course above it.

    Surface settlements use warmlining where streets and buildings have grown over #{encyclopedia_ref :ring_age_site, "ring-age"} infrastructure whose charts are lost. Excavation contracts price a warmliner's dawn survey against the labor and damage of a blind dig. Apprentices train on known lines for several seasons, learning to separate conduit warmth from sunlight and seasonal change. Their chalk distinguishes firm, faint, and doubtful readings; digging crews add a safety margin before cutting. Dead and deeply buried lines remain outside the craft's reach.
  PROSE

  cue "Dawn rounds: the warmliner works the alley's foundation line palm by palm, chalking as she goes — firm line, firm line, junction — and by breakfast the digging crew's whole week is drawn on the stonework in three colors."
  cue "The dig opens on the chalk's margin and finds the conduit within a hand of the mark; the foreman enters the strike distance in the contract book beside the tracer's name."
  affordance "A warmliner's chalk map turns blind excavation into placed cuts — live infrastructure walked from the surface, junctions found from above, and a strike rate the recovery trades price into every contract."
  pressure "Sunlight obscures the warmth after dawn, while dead and deep lines produce no usable reading; excavation crews must preserve the warmliner's confidence marks and cutting margins."
  variation "Settlement warmliners work the grown-over towns on contract; the route surveys use warmliners ahead of roadworks; and the recovery companies keep staff warmliners whose chalk conventions are house standards, argued about like any notation."
  variation "Most warmliners read strong shallow lines. Those who can follow a faint deep run are booked seasons ahead for difficult recovery sites."
end
