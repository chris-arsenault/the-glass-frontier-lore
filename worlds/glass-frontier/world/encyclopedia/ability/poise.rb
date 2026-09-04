encyclopedia :poise do
  name "Poise"
  summary "Poise is an innate ability to remain upright and oriented through the changing spin between adjoining habitat decks. Between-decks trades roster its bearers for junction, rigging, and machinery work."
  kind :ability
  subkind :innate_sensitivity
  status :complete
  log "2026-08-31 — Renamed Hollow Balance to Poise; between-decks crews use the familiar word for continuous orientation through changing spin, not merely graceful balance."
  log "2026-08-31 — Removed the broad tier. Poise is an innate sensitivity, not a resonant spell."
  topics :"ring-hab", :training, :danger
  prevalence :rare
  appears_when all: { place: [:sealed_hab] }

  descriptive_identity(
    signs: "The walker crosses a spin junction at conversational pace — " \
           "weight shifting grade to grade through their stride while the " \
           "party behind takes the rails hand over hand — and stands casually " \
           "on ladderway landings where standing is a taught skill.",
    effect: "The inner ear that spin changes scramble in most people " \
            "recalibrates continuously in a hollow-walker — up stays found, " \
            "footing stays sure, and nausea stays theoretical through " \
            "gradients, junctions, and the dead-spin pockets of damaged " \
            "sections.",
    limits: "The trait preserves orientation but supplies no grip. Incident " \
            "records show that comfort in a steep gradient encourages workers " \
            "to exceed their footing, so rope rules apply throughout the job."
  )

  prose <<~PROSE
    #{encyclopedia_ref :elves, "Elven"} habitat standards assigned different spin to working decks, gardens, and freight galleries. Ladderways and junction wells therefore change a person's apparent weight within a few steps. Most residents cross those transitions slowly and use the rails. Between-decks crews call the rarer constant recalibration *poise*: its bearers preserve the direction of up and avoid spin nausea through gradients, junctions, and dead-spin pockets.

    Yard schools test the trait in a tilted drum. Rostered hollow-walkers maintain junctions, rig ladderways, inspect spin machinery, and enter damaged sections where the gradient is unstable. The trait provides orientation but not grip, and experienced walkers can move fast enough to exceed a line or foothold. Between-decks crews therefore apply their rope rules most strictly to hollow-walkers. Many choose berths near junctions because steady decks leave their recalibrating sense faintly restless.
  PROSE

  cue "The junction well's weight shifts three grades in ten rungs, the party takes it rail by rail with drilled slowness — and the hollow-walker passes them at conversational pace, carrying the tool bag and the conversation."
  cue "The tilted drum spins up at the yard school testing day, the candidates stagger out in the usual order — and one child walks the moving floor like a corridor, and the examiner reaches for the roster forms."
  affordance "A rostered hollow-walker works the between-decks at working speed — junction maintenance, ladderway rigging, spin-machinery rounds, and the damaged sections' dead pockets — where everyone else's pace is set by their inner ear."
  pressure "Hollow-walkers remain comfortable beyond the point where a line or foothold is safe, so between-decks crews enforce rope rules throughout the job."
  variation "Junction and rigging crews carry the trade's core; the spin-machinery inspectorates prize walkers for rounds inside the moving works; and rescue rosters in damaged habs list them the way cold routes list counters."
  variation "The trait runs in hab families and surfaces at the drum tests; many walkers choose berths near junctions because they sleep more easily in a changing gradient."
end
