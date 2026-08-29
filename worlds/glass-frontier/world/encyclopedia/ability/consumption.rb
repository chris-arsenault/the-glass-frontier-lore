encyclopedia :consumption do
  name "Consumption"
  summary "Consumption takes a usable quality from a target into the user: heat, strength, memory, skill, resonance, or an active power."
  kind :ability
  subkind :ability
  status :complete
  topics :resonance, :danger, :"kinetic-freq"
  prevalence :rare
  available_globally

  tier :broad,
       effect: "Draw heat, momentum, strength, or active resonance from one touched target into the user",
       cost: "Ordinary food and rest cease to satisfy the user until the stolen quality is spent"
  tier :focused,
       effect: "Take a memory, trained skill, or bodily capacity and use it for a short time",
       cost: "The user's corresponding appetite or pleasure becomes permanently weaker"
  tier :narrow,
       effect: "Consume an extraordinary ability, engine output, or shared strength from a group and wield it as one reserve",
       cost: "The user loses the ability to feel sated by one ordinary need and begins craving what was taken"
  tier :apex,
       effect: "Strip a city, army, or great creature of a named quality and gather the whole of it into the bearer",
       cost: "The bearer can never again be satisfied by that quality and must consume greater expressions of it to quiet the hunger"

  descriptive_identity(
    signs: "The target becomes abruptly cold, weak, forgetful, silent, or inert while the user displays the missing quality with excessive intensity.",
    effect: "Consumption transfers an existing capacity from a target into the user, who can spend or express what was taken.",
    limits: "It cannot take an abstraction without a present physical expression, cannot hold contradictory capacities safely, and does not create more than the target possessed."
  )

  cue "Color and motion drain from the target toward the user along a darkened resonant trace."
  cue "The user names what they are taking, then displays it more intensely than its former owner did."
  affordance "Consumption can still a weapon, rob a pursuer of speed, take a pilot's skill, drain an enemy power, or feed a failing machine from another source."
  pressure "Every use teaches the body that theft is nourishment, making ordinary food, sleep, touch, and achievement progressively less satisfying."
  variation "Physical consumption leaves targets cold, slack, and intact enough to recover if the quality is returned or naturally renewed."
  variation "Consumption of memory or skill leaves clean absences that the victim often discovers only when attempting a familiar act."

  prose <<~PROSE
    Consumption takes a quality that is presently doing work. Heat can be drawn from a burning room. Momentum can be stripped from a falling mass. Strength can leave a fighter's limbs and enter the person facing them. Memory, trained motion, resonance output, and extraordinary powers can also be taken when they are active enough to follow.

    The transfer is exact in quantity and violent in use. A consumed engine output may drive the user as speed, heat, or force according to its original character. A stolen memory arrives with sensation and habit but no assurance that the user understands its place in a life. A stolen ability carries its limits as well as its effect.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "The Hunger That Learns"
    The first loss belongs to ordinary satiety. Food still nourishes, sleep still repairs, and company still changes the mind, but none of them feels complete while a stolen quality remains in the user. Repeated use teaches the body a narrower appetite. Someone who often consumes strength begins to feel hunger only in the presence of stronger bodies. Someone who takes memories may stop finding pleasure in their own past.

    The apex expression is #{ref :all_hunger, "the All-Hunger"}. Its bearer can empty a city of heat, an army of courage, or a great array of resonance. Each such act permanently removes another ordinary way of being satisfied, leaving only the scale of the next taking capable of quieting the need.
  PROSE
end
