encyclopedia :varr do
  name "Varr"
  summary "Varr is an innate Ashvane-born sensitivity to a pressure front for several hours after it crosses a sealed room. Certified tracers establish its entry point, path, force, and sequence during breach inquiries."
  kind :ability
  subkind :innate_sensitivity
  status :complete
  log "2026-08-31 — Renamed Pressure Memory to Varr; the Ashvane pressure-school term gives the local sense its own name instead of describing its evidence."
  log "2026-08-31 — Removed the broad tier. Varr is an innate sensitivity, not a resonant spell."
  topics :"outer-system", :danger, :training, :household
  prevalence :rare
  appears_when all: { place: [:sealed_hab] }

  descriptive_identity(
    signs: "The tracer walks the sealed room slowly with both hands open at " \
           "their sides, pausing at thresholds and corners, and narrates the " \
           "hours-old front as they go — in here, hard, along this wall, out " \
           "through the vent that was open then.",
    effect: "A pressure front leaves a pattern in a sealed space, and a " \
            "practiced bearer reconstructs entry, path, strength, and " \
            "sequence hours after the air went still.",
    limits: "The pattern fades within hours and new pressure changes disturb " \
            "it. Rescue traffic therefore reduces the detail available to a " \
            "tracer even after the room is safe to enter."
  )

  prose <<~PROSE
    Ashvane pressure schools call the sense *varr*. A tracer can retrace a pressure front several hours after it crossed a sealed room, walking slowly with open hands and calling where the front entered, which surfaces it struck, which openings redirected it, and how much force reached each part of the room. The schools debate whether varr follows residual gradients, settled dust, or strain still relaxing in the seals. Their examinations use staged rooms because the resulting reconstruction can be checked against a known event.

    Breach protocols place a certified tracer first into the room after rescue crews declare it safe. A recorder witnesses the walk and transcribes every call before investigators compare the result with seal logs, casualties, and maintenance records. The pattern fades within hours and is disturbed by later pressure changes, so rescue and tracer crews drill a shared entry order. Long walks leave tracers exhausted and ear-sore. At home, the same sensitivity keeps recent door-slams and ventilation changes present at low grade.
  PROSE

  cue "First in after safe-to-enter, the tracer walks the breached gallery with open hands, pausing at the thresholds — in here, hard, along this wall, out through the vent that was open then — while the recorder keeps pace and the rescue crews wait at the door."
  cue "The board weighs the two accounts against the tracer's transcript, and the seal log's tidy story comes apart at the one line the room contradicts."
  affordance "A certified tracer reconstructs entry, path, force, and sequence hours after a breach, supplying evidence for inquiries and safety audits."
  pressure "The pattern fades and new pressure changes disturb it, so rescue crews preserve the room for a witnessed tracer walk as soon as it is safe."
  variation "Inquiry tracers work under certification; pressure schools use staged-room examinations, while most bearers are first noticed at home after identifying a pressure event they did not witness."
  variation "Most tracers read the recent hours. The few deep tracers who recover structure from a day-old room work major inquiries and are lent between settlements."
end
