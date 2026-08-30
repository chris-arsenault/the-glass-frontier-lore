encyclopedia :exaltation do
  name "Exaltation"
  summary "Exaltation drives a person, creature, machine, or weapon beyond its ordinary limits in service of one declared purpose."
  kind :ability
  subkind :resonant_effect
  status :complete
  topics :resonance, :"kinetic-freq", :military, :religion
  prevalence :rare
  available_globally

  tier :broad,
       effect: "Sharpen one willing subject's strength, speed, endurance, or precision toward a spoken purpose",
       cost: "The subject suffers the exertion when the effect ends, compressed into several violent breaths"
  tier :focused,
       effect: "Exalt a small group or one machine so every useful motion serves the same purpose",
       cost: "The user shares the group's fatigue and every serious impact that reaches one of them"
  tier :narrow,
       effect: "Raise a company, vessel, or great weapon past its safe limits without immediate failure",
       cost: "The user can pursue no competing aim until the declared purpose is fulfilled or abandoned"
  tier :apex,
       effect: "Exalt an army, fleet, or city so long as its members continue to act toward one public purpose",
       cost: "When that purpose ends, its accumulated exhaustion and damage fall upon the bearer at once"

  descriptive_identity(
    signs: "Exalted bodies and machines move with fierce economy. Waste heat brightens, voices carry, and every action settles into the rhythm of the declared purpose.",
    effect: "Exaltation increases the useful capacity of its subjects toward one purpose they can understand or embody.",
    limits: "It grants no missing knowledge, cannot reconcile contradictory aims, and ends immediately for any subject who knowingly abandons the declaration."
  )

  cue "The user states one purpose aloud, and nearby movement falls into a shared cadence."
  cue "Strain appears as light along veins, seams, or weapon edges while performance climbs past rated limits."
  affordance "Exaltation can carry a crew through a breach, let a damaged vessel outrun pursuit, or make a desperate defense hold against superior force."
  pressure "Every gain becomes deferred strain, and ambiguity in the declaration divides the effect at the moment unity matters most."
  variation "On living subjects the effect often presents as heat, brightened eyes, and a voice audible through battle noise."
  variation "On machines it presents as clean synchronization, impossible acceleration, and warning gauges held at their stops."

  prose <<~PROSE
    Exaltation makes effort answer a declared purpose. A runner becomes faster while carrying medicine to a named patient. A gun holds together while defending a named gate. A crew works without hesitation while bringing a damaged hull home. The user chooses the purpose, with all of its wisdom or folly, and the ability drives bodies and machines beyond the limits they were built to endure.

    The declaration must be understood by living subjects and physically expressible by machines. *Win* is too empty. *Hold this stair until the children clear the lower dock* is enough. Within that purpose, exaltation sharpens judgment already present, drives muscles and mechanisms past ordinary reserve, and suppresses failures that would interrupt the act. It cannot teach an untrained hand to fly or make an unloaded weapon fire.
  PROSE
  prose <<~PROSE, section: :limits, heading: "The Declared Purpose"
    Exaltation ends for a subject who knowingly turns against the declaration. It also weakens when participants hold incompatible meanings for the same words. Commanders who use the ability learn to speak plainly and in public. Witnesses matter because a declaration remembered differently can divide an exalted force into several smaller purposes.

    Nothing spent under exaltation is forgiven. Heat, fatigue, cracked housings, blood loss, and strained joints arrive when the work releases them. The apex expression belongs to #{ref :triumphant, "the Triumphant"}. Its bearer can raise the purpose of an army or city above fear and mechanical limit, then receives the accumulated cost when the purpose has been fulfilled or forsaken.
  PROSE
end
