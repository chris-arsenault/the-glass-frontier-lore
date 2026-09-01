encyclopedia :current_holding do
  name "Dovran Holding"
  summary "Dovran Holding is a barge-handling technique that keeps a loaded vessel aligned through bends, crossing currents, and traffic wakes. The holder reads the hull through an inherited elven helm rail and feeds small corrections back through it."
  kind :ability
  subkind :technique
  status :complete
  log "2026-08-31 — Renamed Holding to Dovran Holding. The Dovra's inherited helm rails, named reaches, and Dovran crews define the tradition; holding alone named no setting."
  topics :"structural-freq", :transport, :training, :resonance
  prevalence :uncommon
  appears_when all: { place: [:waterway] }
  function "Keeps loaded barges aligned through channel bends, crossing currents, and traffic wakes — vibration matched and corrected through the helm rail, holding the hull's line by hands and rail alone"

  descriptive_identity(
    signs: "The holder stands loose-kneed at the helm rail, both hands resting " \
           "lightly, and the barge's small wanderings die away — " \
           "the hull settling onto its line and staying there through bends " \
           "that put other vessels' crews on the poles.",
    effect: "The rail carries the hull's vibration to the hands and the hands' " \
            "corrections back to the hull; matched well, the vessel holds its " \
            "channel line through crossing current and traffic wake, steady as " \
            "if rail-guided — which, in the old sense, it is.",
    limits: "Holding needs way on the vessel and a rail in tune — a dead-slow " \
            "barge gives too little vibration to read, an untuned rail lies, " \
            "and the technique's reach ends where the channel's manners do: " \
            "white water is poled like everyone else's."
  )

  prose <<~PROSE
    #{encyclopedia_ref :elves, "Elven"} channel guides once drove a vessel's helm fittings directly. The postfall rivers retain helm rails that carry hull vibration but receive no signal from the channel. A current holder stands loose-kneed at that rail, rests both hands lightly on it, and matches the vibration made by water, load, and speed. Small pressures through the rail correct the vessel's drift. A well-held barge keeps its line through bends, crossing currents, and the wakes of passing traffic.

    Apprentices ride second through easy water for several seasons, learning a hull's vibrations before making corrections. The trade calls those movements *leaning on her*, *letting her wander*, and *asking for the bend early*. Qualification belongs to named reaches: pilots' boards list which holders know each channel, and freight offices book them when a full load would force a poled vessel to lighten. Holding requires forward motion, a tuned rail, and familiar water. A dead-slow vessel gives too little vibration to read; a damaged rail gives false feedback; white water returns the crew to poles.
  PROSE

  cue "The loaded barge takes the named bend with the holder's hands resting on the rail — small pressures a passenger misses — and the hull runs the crooked reach on a drawn line while the following vessel's crew works its poles."
  cue "The new second stands rail-watch in the easy water, eyes closed on the senior's orders, learning the hull's voice for a season before being allowed to answer it."
  affordance "A named holder lets a barge run narrow reaches loaded to full marks — the line held through bends and wakes that force poled crews to lighten — and the pilots' boards make the skill a bookable, priceable fact of the river."
  pressure "A damaged rail, unfamiliar reach, or loss of forward motion ends the hold and puts the crew back on poles, often after the load has been priced for a held passage."
  variation "Channel holders work the named reaches of their home water; long-haul holders ride freight strings in relays and make a formal handover at every watch."
  variation "Rail tuning is its own small craft — riverside fitters who true a helm rail like a luthier — and a barge's rail carries its tuner's mark where the holder's hands rest."
end
