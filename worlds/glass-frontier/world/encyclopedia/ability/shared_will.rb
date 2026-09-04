encyclopedia :shared_will do
  name "Shared Will"
  summary "Shared Will drives a person, creature, machine, or weapon beyond its ordinary limits in service of one declared purpose."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Renamed Exaltation to Shared Will; the Three Forms term distinguishes willing purpose held in common from the Red Sovereign's Outside Will."
  log "2026-08-31 — Kept one broad-tier spell affecting one willing subject. The former focused and narrow rows enlarged the same declared-purpose effect without defining another operation; collective exaltation remains the Triumphant mantle's work."
  topics :resonance, :"kinetic-freq", :military, :religion
  prevalence :rare
  available_globally

  tier :broad
  effect "Drive one willing person, creature, machine, or weapon beyond its ordinary strength, speed, endurance, or precision in service of one spoken purpose"
  limits "The subject must accept and understand the purpose, possess the necessary skill or function, and continue acting toward it; divided or abandoned intent ends the spell"
  consequence "When the spell ends, all deferred fatigue, heat, impact, and mechanical strain arrive at once in the subject, and the practitioner shares any serious injury produced during the working"

  descriptive_identity(
    signs: "The subject moves with fierce economy. Waste heat brightens, the voice carries, and every action settles into the rhythm of the declared purpose."
  )

  prose <<~PROSE
    Shared Will makes one willing subject's effort answer a declared purpose. A runner becomes faster while carrying medicine to a named patient. A gun holds together while defending a named gate. A damaged machine continues working while its operator brings someone clear. The practitioner states the purpose aloud, and the subject accepts it before the spell takes hold.

    The declaration must be understood by a living subject and physically expressible by a machine. *Win* is too empty. *Hold this stair until the children clear the lower dock* is enough. Within that purpose, Shared Will sharpens judgment already present, drives muscle or mechanism past ordinary reserve, and postpones failures that would interrupt the act. It cannot teach an untrained hand to fly or make an unloaded weapon fire.
  PROSE
  prose <<~PROSE, section: :limits, heading: "The Declared Purpose"
    Shared Will ends when the subject knowingly turns against the declaration. Practitioners therefore speak plainly and in public, because the subject's understanding governs the spell. A purpose that changes halfway through the work requires the first spell to end before another can begin.

    Nothing spent under Shared Will is forgiven. Heat, fatigue, cracked housings, blood loss, and strained joints arrive when the spell releases them. The practitioner shares any serious injury the working produced. #{ref :triumphant, "The Triumphant"} extends the same declared purpose across collective subjects and receives their accumulated strain.
  PROSE
end
