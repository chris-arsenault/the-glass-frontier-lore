encyclopedia :elsewhere do
  name "Elsewhere"
  summary "Elsewhere is a focused spell that observes one distant place through a known person, object, or live signal physically present there."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Separated Elsewhere from the former Witnessing ladder because it observes a present place through a live anchor rather than reconstructing an event from surviving consequences."
  topics :resonance, :"signal-freq", :mystery
  prevalence :rare
  available_globally

  tier :focused
  effect "Receive the present sights and sounds around one known person, object, or live signal at a distant place"
  limits "The anchor must be physically present, personally known to the practitioner, and carrying an active signal or sensory response; the spell cannot move its viewpoint away from the anchor or reveal private thought"
  consequence "The distant place receives the practitioner in return: reflections show their face, instruments record their pulse, and resonance-sensitive observers can look back through the same anchor"

  descriptive_identity(
    signs: "The practitioner's eyes answer distant light while reflections and signal noise around the anchor acquire the practitioner's face and breathing rhythm."
  )

  prose <<~PROSE
    Elsewhere opens present perception around one distant anchor. A known person can carry the view through a room, a familiar tool can show the hands using it, and a live signal can place the practitioner beside the instrument sending it. The viewpoint remains with the anchor. A person can turn their head; a fixed object cannot look behind itself.

    Recognition binds the working. A name or description is insufficient. The practitioner must know the anchor through direct contact and distinguish its signal or physical response from every similar person or object. A copied transmission can be followed only while its original source remains live.
  PROSE
  prose <<~PROSE, section: :perception, heading: "Present at Both Ends"
    Observation is visible at the destination. A person beside the anchor sees the practitioner in polished metal. A machine records an unauthorized return pulse. Another resonance reader can meet the gaze and follow it back, bringing the practitioner's room into view for everyone near the anchor.

    #{encyclopedia_ref :revelation, "Witnessing"} begins from evidence left by an event and follows its consequences backward. Elsewhere has no past to recover: it holds one distant place in the present until the practitioner releases the anchor.
  PROSE
end
