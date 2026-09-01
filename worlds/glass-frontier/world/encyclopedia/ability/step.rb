encyclopedia :step do
  name "Step"
  summary "Step is a broad spell that carries its practitioner across one local obstruction to an unoccupied point they can see."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Separated Step from the former Waybearing ladder because self-translocation through direct sight opens no threshold and carries none of Waybearing's two-way traffic."
  topics :resonance, :navigation, :transport, :"kinetic-freq"
  prevalence :rare
  available_globally

  tier :broad
  effect "Carry the practitioner and what they can hold across one local obstruction to one unoccupied point in direct sight"
  limits "The destination must remain visible, support the practitioner's body, and lie within the same local resonance field; the spell carries no other creature and opens no route for air, matter, or pursuit"
  consequence "Balance and depth remain fixed on the departure for several breaths, leaving the practitioner disoriented and likely to fall if the destination has a different slope, motion, or gravity"

  descriptive_identity(
    signs: "The practitioner leans into an ordinary stride, disappears at the obstruction's near edge, and completes the same step at the visible destination with their body still balancing for the ground they left."
  )

  prose <<~PROSE
    Step carries one practitioner across a local obstruction without opening the space between. A barred doorway, broken bridge, pressure window, or gap between nearby decks can be crossed when the practitioner sees an empty place capable of taking their weight. Clothing, worn equipment, and a load held close arrive with the body.

    The destination must remain in direct sight throughout the stride. A reflection, recording, coordinate, or remembered room supplies no destination. Smoke, sudden darkness, or another body entering the chosen space breaks the casting before the practitioner leaves.
  PROSE
  prose <<~PROSE, section: :aftermath, heading: "The Ground Left Behind"
    The body arrives with the balance of its departure. A level step onto a turning deck pitches the practitioner sideways; a step from a moving vessel keeps the vessel's motion; a destination under different local gravity meets muscles prepared for the old down. Experienced steppers choose a landing they can fall across and keep one hand free.

    #{encyclopedia_ref :passage, "Waybearing"} instead opens a fixed, two-way threshold to a genuinely known destination and can carry a small group. Step uses direct sight, carries only the caster, and leaves nothing open behind them.
  PROSE
end
