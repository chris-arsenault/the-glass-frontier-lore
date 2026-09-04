encyclopedia :plumb do
  name "Plumb"
  summary "Plumb is an innate sense of physical scale that preserves balance and reach when resonance playback distorts a room's apparent dimensions. Sable recording towns roster its bearers for deep-stack work."
  kind :ability
  subkind :innate_sensitivity
  status :complete
  log "2026-08-31 — Renamed Echo Orientation to Plumb; Sable stack schools use the working word for a body that keeps its true line inside false acoustic geometry."
  log "2026-08-31 — Removed the broad tier. Plumb is an innate sensitivity, not a resonant spell."
  topics :"ringglass", :resonance, :archives, :training
  prevalence :rare
  appears_when all: { place: [:ringglass_rich] }

  descriptive_identity(
    signs: "In a corridor whose playback swells the walls apart, the " \
           "echo-oriented walk the true line down the middle, unhurried, " \
           "while everyone else drifts wall-ward with a hand out — the gait " \
           "itself is the diagnostic, and the stack schools test for it with " \
           "a taped line and a loud room.",
    effect: "Body scale holds against acoustic scale: distances judged by " \
            "ear give way to the stable physical sense, balance keeps its floor, " \
            "and reaching, stepping, and stacking work stay accurate inside " \
            "soundscapes that misplace the walls for everyone else.",
    limits: "The trait stabilizes balance, stepping, and reach. It does not " \
            "locate a recording's source, and its bearers often learn acoustic " \
            "direction later through deliberate practice."
  )

  prose <<~PROSE
    Resonance playback in the #{encyclopedia_ref :sable_backecho, "Sable"} recording stacks can make a corridor sound wider, shift the apparent walls, or deepen the floor. Most people drift toward the false geometry even while their eyes show the actual passage. Stack schools call the contrary trait *plumb*. Its bearers retain a stable bodily scale, walk the physical centerline, judge reach accurately, and handle fragile holdings while leakage fills the corridor.

    Stack schools test children and new workers with a taped line through a room under playback. Those who hold the line can train as walkers, the deep-stack workers who fetch and shelve material during heavy leakage and lead visitors along marked routes. Walkers use hand rules and fixed tape for acoustic direction because the trait supplies balance, not source location. Ordinary playback also reaches them with little spatial depth. Deep-stack crews therefore pair a walker with a listener when a task requires both safe movement and accurate interpretation of the recording.
  PROSE

  cue "The corridor's leakage swells the walls a span apart and the visitors drift wall-ward, hands out — while the walker leads them straight down the taped line at an unhurried working pace, carrying the fragile crate plumb."
  cue "The stack school's intake test: a taped line, a loud room, and a child walked through twice — and the one who tracks the tape both times, bored, gets the letter home that glass country families know on sight."
  affordance "A rostered walker keeps true footing and reach while handling fragile deep-stack holdings inside acoustics that misplace the room."
  pressure "Walkers retain footing but often misjudge acoustic direction, so deep-stack crews pair them with listeners and schedule work according to which qualification is available."
  variation "Sable's stack walkers are the trade's concentration; scattered echo-oriented elsewhere surface in glass yards and instrument floors, usually found by the same accident — the one worker unbothered in the hall everyone else leans through."
  variation "Most walkers hold against ordinary leakage; those who keep their line through full playback are lent between towns for recovery work."
end
