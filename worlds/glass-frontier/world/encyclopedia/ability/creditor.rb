encyclopedia :creditor do
  name "Creditor"
  summary "Creditor is the route-trade name for an innate sensitivity to rapid heat loss in an occupied hull. A counter wakes before level-reading gauges show the drop, giving cold-route crews time to find a loose hatch, breached seal, or failing jacket."
  kind :ability
  subkind :innate_sensitivity
  status :complete
  log "2026-08-31 — Renamed Cold Count to Creditor; the route trade's stove-creditor honorific supplies a distinctive name for the sensitivity."
  log "2026-08-31 — Removed the broad tier. Creditor is an innate sensitivity, not a resonant spell."
  topics :danger, :"outer-system", :household, :training
  prevalence :rare
  appears_when all: { place: [:cold] }

  descriptive_identity(
    signs: "The counter comes awake all at once, upright and certain, usually " \
           "with the same first words — check the shell — while the board's " \
           "needles still read steady.",
    effect: "A sudden rise in the hull's rate of heat loss wakes the counter " \
            "minutes to an hour before level-reading gauges register the drop.",
    limits: "The sense follows heat loss from the surrounding structure. A " \
            "sound hull shields the counter from outdoor cold, while an open " \
            "door or routine pressure change can still wake them."
  )

  prose <<~PROSE
    Creditor wakes a sleeper when the surrounding hull begins losing heat faster than its recent pattern. A breached seal, failing scrubber jacket, or hatch working loose changes that rate before the compartment temperature falls far enough for ordinary gauges to show it. The counter wakes upright and certain, usually with the route trade's first instruction: *check the shell*. Crew logs record the waking beside the later instrument confirmation.

    Cold-country households recognized counters as the people who woke when a banked fire failed. Route crews formalized the practice on the Lithren and Vastine runs. They berth a counter nearest the shell plating, act on the waking before waiting for the board, and lighten the counter's day watch after a broken night. Outdoor cold does not wake someone inside a sound hull, but a routine hatch opening or a sharp weather-driven loss can. Experienced crews therefore budget a counter's sleep alongside the passage watches. The name preserves the honorific inherited from the old households: the stove's creditor.
  PROSE

  cue "The counter comes upright in the dark all at once — check the shell — and the watch, by standing orders, is already moving while the board's needles still read steady."
  cue "An hour later the gauge finally shows the fall, the log gets its two entries — counter's waking, instrument confirmation — and the correlation column grows by one more row."
  affordance "A berthed counter announces a leak, failing jacket, or working hatch during the interval before level-reading gauges register the heat loss."
  pressure "Routine hatch use and sharp weather changes also wake counters, so the standing order spends night labor and the counter's sleep on every apparent loss."
  variation "Route crews berth counters at the shell and log wakings against instruments; cold settlements give a household counter the outer room and the old honorific."
  variation "Most counters wake for sharp breaks in a hull's pattern; the most sensitive feel a slow jacket failure across several days as mounting unease, described in the trade as a spendthrift hull."
end
