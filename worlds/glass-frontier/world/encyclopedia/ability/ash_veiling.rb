encyclopedia :ash_veiling do
  name "Crucible Veiling"
  summary "Crucible Veiling is a focused heat-working spell that suspends charged ash around one worker as a turning cloak, shedding radiant heat while maintaining a clear pane before the visor."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Renamed Ash Veiling to Coppicing; the furnace-yard verb already names the cloak's continuous growth, trimming, and renewal."
  log "2026-08-31 — Renamed Coppicing to Crucible Veiling. Coppicing names one repair motion within the practice; the Crucible yards and their veilers own the complete technique."
  log "2026-08-31 — Recast Crucible Veiling as one focused-tier spell; its effect, operating limit, and consequence now belong to the spell rather than a tier expression."
  topics :resonance, :danger, :salvage, :training
  prevalence :uncommon
  appears_when all: { place: [:hot] }

  tier :focused
  effect "Suspend local charged ash as a turning cloak around one worker, shedding radiant heat while preserving a clear visor pane and free working hands"
  limits "The practitioner must continually tend the cloak; clean ground starves it, strong wind strips it, and the spell protects only the veiled worker within the ash available at the site"
  consequence "Maintaining the veil divides attention like a second posture, and a full working leaves bone-deep fatigue, ash-cough, and too little reserve for an immediate second casting"

  descriptive_identity(
    signs: "The worker walks inside a slow-turning shroud of suspended ash that " \
           "moves with them like heavy cloth in water, thinning to a clear pane " \
           "before the visor and thickening across the shoulders and back where " \
           "the radiant load is worst."
  )

  prose <<~PROSE
    Charged ash in Crucible's surface yards answers kinetic-band work. An ash veiler draws that dust into a hanging cloak around the body, keeps it moving in a slow turn, and opens a clear pane before the visor. The suspended layer receives radiant heat and sheds it outward. Dense ash gathers across the shoulders and back; the visor pane and working hands remain thin enough for sight and movement.

    Veilers call the first minutes *seeding*. Dust rises from the ground, takes charge, and settles into overlapping layers. During work, the veiler trims clotted ash, feeds thin places from the ground, and re-lays the side exposed to wind. The furnace yards call these motions growing, laying, and coppicing. Each word also serves as a hand call when speech is lost in the yard noise.
  PROSE
  prose <<~PROSE, section: :operations, heading: "The Second Posture"
    Holding a veil occupies attention like maintaining a second posture. A healthy cloak turns slowly and keeps a reserve layer behind the surface taking the heat. Faster rotation, thinning across the back, or ash clinging motionless to one shoulder tells the partner which part needs feeding. At the rest line, the worker coppices the cloak to the shoulders and tends the remaining seed for the next walk inward.

    Apprentices spend years walking partner to a senior before approaching a hot face alone. They learn to leave while the second layer still holds, because the return crosses ground that may provide little fresh ash. A full shift produces deep muscular fatigue and an hour of coughing ash from the throat and suit seals. Clean ground thins the cloak; a hard wind can strip it in seconds.
  PROSE

end
