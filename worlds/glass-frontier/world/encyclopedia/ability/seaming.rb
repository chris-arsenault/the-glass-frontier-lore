encyclopedia :seaming do
  name "Seaming"
  summary "Seaming is a broad spell that opens, closes, or moves one existing join through a hand-sized extent of nonliving material."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Separated Seaming from the former Shaping ladder because it works only through an existing join and leaves the surrounding mass unchanged."
  topics :resonance, :"structural-freq", :materials, :rebuilding
  prevalence :uncommon
  available_globally

  tier :broad
  effect "Open, close, or move one existing join through a hand-sized extent of understood nonliving material"
  limits "The practitioner must touch and trace the join, cannot create or remove material, and cannot carry the seam through living tissue, an unknown layer, or a load that changes during the casting"
  consequence "The working hand becomes numb and loses precise touch for several minutes, while strain already crossing the seam enters the practitioner's corresponding fingers, wrist, and elbow"

  descriptive_identity(
    signs: "A traced join travels beneath the practitioner's fingertips while grain, weld marks, sealant, and old stress bend toward its new line without the surrounding material changing shape."
  )

  prose <<~PROSE
    Seaming moves an existing join. A seized panel can part along its buried service seam, two clean break faces can close around a pin, or a leaking plate join can be moved away from a corroded edge. The spell works through a hand-sized extent at a time and leaves the material on either side in its present form.

    The practitioner traces the complete path before beginning. Paint can hide a seam without removing it; a mixed layer or concealed fastener can change where the join actually runs. If the traced path reaches material the practitioner did not account for, the seam stops there and the unworked portion remains joined.
  PROSE
  prose <<~PROSE, section: :limits, heading: "Load Across the Join"
    A seam under steady load can be worked when that load is understood and held. The strain passes through the practitioner's hand as the join moves. A shifting machine, settling hull, or person leaning on the far side changes the load during the cast and breaks the trace before the seam closes.

    #{encyclopedia_ref :shaping, "Shaping"} reforms a person-sized mass and can create geometry no previous join supplied. Seaming is broad-band workshop work: exact at one existing boundary and powerless over the bulk around it.
  PROSE
end
