encyclopedia :unmaking do
  name "Unmaking"
  summary "Unmaking destroys the coherence that lets an object, effect, body, or constructed system continue as one thing."
  kind :ability
  subkind :resonant_effect
  status :complete
  topics :resonance, :danger, :catastrophe, :"structural-freq"
  prevalence :rare
  available_globally

  tier :broad,
       effect: "Break the coherence of one hand-sized object or active resonant effect",
       cost: "One of the user's senses goes dark until the remains stop moving"
  tier :focused,
       effect: "Unmake a person-sized target, weapon emplacement, barrier, or machine into inert constituent matter",
       cost: "The user loses a sense or trained ability for several hours"
  tier :narrow,
       effect: "Collapse the coherent operation of a creature, vessel, structure, or distributed field",
       cost: "One sense, memory faculty, or resonant band becomes permanently weaker"
  tier :apex,
       effect: "Unmake a city, army, great creature, or sustained phenomenon as a single coherent subject",
       cost: "The bearer permanently loses a sense, ability, or portion of resonant bandwidth necessary to perceive what was destroyed"

  descriptive_identity(
    signs: "The target separates without impact or heat. Joined matter becomes loose material, active fields go silent, and coordinated parts cease recognizing one another.",
    effect: "Unmaking removes the physical or resonant coherence that lets many parts persist and act as one subject.",
    limits: "The user must perceive the target as a coherent whole. Matter remains, consequences already produced remain, and abstract institutions or beliefs cannot be targeted directly."
  )

  cue "Edges, seams, and signals cease agreeing about where the target continues."
  cue "The user's corresponding sense fails at the instant the target comes apart."
  affordance "Unmaking can silence a power, open armor, collapse a war machine, kill a creature, or end an anomaly whose manifestations still share one coherent pattern."
  pressure "Misidentifying the whole either leaves dangerous parts active or expands the target to include structures, passengers, and supports the user meant to spare."
  variation "Material unmaking leaves sorted fragments, fluids, dust, and disconnected components where the subject stood."
  variation "Resonant unmaking ends the active figure first, often leaving charged equipment or unstable matter behind."

  prose <<~PROSE
    Unmaking attacks the fact that many parts are acting as one thing. A lock becomes separate pins, springs, and housing. A weapon loses the agreement among charge, barrel, sight, and hand. A resonant barrier ceases to be a continuous field. No blast is required. The subject simply stops maintaining the relationships that made it whole.

    The remains do not disappear. A vessel becomes plates, compartments, atmosphere, cargo, and people moving according to their own momentum. A body becomes tissue that no longer coordinates life. An ended field leaves charged glass and heat where its coherence had contained them. Unmaking can remove a threat and release every hazard that threat was holding.
  PROSE
  prose <<~PROSE, section: :limits, heading: "Naming the Whole"
    The user must perceive a coherent subject. A visible wall may be part of a pressure hull; unmaking the larger whole would include everything tied into its structural figure. A marching force can be one target while its orders and shared rhythm hold it together, then become many targets when it scatters. Beliefs, offices, debts, and nations have no single physical coherence for the ability to seize.

    #{ref :unmaker, "The Unmaker"} can destroy coherence at the scale of cities, armies, great creatures, and sustained phenomena. Every apex use removes from the bearer some faculty needed to perceive the destroyed whole. The title's history is therefore also a history of narrowing senses, lost abilities, and resonant bands that no later bearer has recovered.
  PROSE
end
