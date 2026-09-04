encyclopedia :attunement do
  name "Attunement"
  summary "Attunement is the learned ability to distinguish resonance from the pressure, vibration, heat, and sound that carry it through bodies, materials, and machines."
  kind :ability
  subkind :sensory_training
  status :complete
  topics :resonance, :training
  prevalence :uncommon
  available_globally

  descriptive_identity(
    signs:
      "Used, it looks like attention: a hand flat against a wall, a " \
      "pause over a tool, two practitioners trading unrelated private " \
      "words — pressure behind the eyes, weight across the teeth — " \
      "and agreeing on band, direction, and rate. Bystanders of a " \
      "species with an innate resonance sense feel nearby work each in " \
      "their own kind's way; everyone else feels nothing while the " \
      "work stays high-band and low-power, and when it runs low-band " \
      "at high power every species alike feels their cells drawn to " \
      "align toward an improper lattice.",
    effect:
      "The attuned tell resonance apart from the ordinary pressure, " \
      "vibration, heat, and sound that carry it, following a change " \
      "through a wall, a tool, or their own body far enough to call it " \
      "structural, kinetic, or signal. Experienced practitioners " \
      "separate nearby frequencies, recognize an unstable harmonic, " \
      "and hold one response in mind while the surrounding field " \
      "shifts.",
    limits:
      "It is perception without control: a person can name a " \
      "collapsing frequency and lack the skill, tool, or material to " \
      "correct it. Strong fields saturate the sense into merged " \
      "pressure and nausea, long exposure brings headaches, tremors, " \
      "lost sleep, and false readings — gnomes risk their own lattice " \
      "besides — and a quiet field shows which band failed first while " \
      "carrying little about the cause."
  )

  cue "An attuned person stops with a hand flat against a wall or pauses over a tool while following a change through the local field."
  cue "Two practitioners use different private sensory words and still agree on the field's band, direction, and rate of change."
  affordance "Attunement distinguishes structural, kinetic, or signal resonance and can identify an unstable harmonic early enough for someone to act."
  pressure "Attunement supplies perception without control, and strong or prolonged exposure produces nausea, headaches, tremors, lost sleep, and false readings."
  variation "Some practitioners hear intervals below audible sound or feel pressure behind the eyes and weight across the teeth."
  variation "Material workers often read resonance through differences in how glass, metal, or stone accepts a blow."

  prose <<~PROSE
    Attunement is the learned ability to distinguish resonance from the ordinary pressure, vibration, heat, and sound that carry it. An attuned person can follow a change through a wall, a tool, or their own body and identify enough of its pattern to act. The first useful distinction is usually broad: structural, kinetic, or signal. Experienced practitioners can separate nearby frequencies, recognize an unstable harmonic, and hold one response in mind while the surrounding field shifts.

    The sensation has no universal form. One person hears intervals below audible sound. Another feels weight across the teeth or pressure behind the eyes. Material workers often notice it first through their hands, as a difference in how glass, metal, or stone accepts a blow. Training gives those private sensations repeatable references. Two attuned people may describe a field differently and still agree on its band, direction, and rate of change.
  PROSE
  prose <<~PROSE, section: :biology, heading: "Bodies and Training"
    #{encyclopedia_ref :gnomes, "Gnomes"} begin with direct sensory access because ringglass runs through their bones and nerves. A gnomish child may recognize a bad structural tone before learning its name. That sensitivity provides detail and speed; it does not supply judgment. Gnomes still train to separate a dangerous reading from fatigue, reflected vibration, or the noise of their own lattice.

    #{encyclopedia_ref :humans, "Humans"} usually learn through instruments. They compare a stable reference tone with the sensation produced by a working array until the difference becomes recognizable without the display. #{encyclopedia_ref :orcs, "Orcs"} often approach the same ability through material response: a plate that carries stress unevenly, a seam that rings too long, a tool whose balance changes near active ringglass. These starting points shape specialities, but none confines them. Any species can develop attunement, and no species acquires a complete understanding of resonance by sensation alone.

    The #{ref :clarisant, "Clarisant"} teaches students to name what they perceive only after they can reproduce the observation. Its examiners use blind housings, swapped samples, and deliberately silent controls to expose confident guesses. Folk teachers tend to use familiar places instead: the same bridge before and after a freight crossing, a household concentrator at the beginning and end of a heavy draw, or a quarry face in changing weather.
  PROSE
  prose <<~PROSE, section: :applications, heading: "Daily Use"
    Most attuned people are not full-time #{encyclopedia_ref :resonant_tuner, "Tuners"}. They are mechanics who feel drift before a gauge moves, pilots who notice a change in a kite's thrust through the deck, healers who can separate lattice pain from an ordinary fracture, and householders who know which room will become uncomfortable when the local field runs thin. The ability becomes valuable wherever a device and its surroundings affect one another.

    Attunement also changes how people choose places. Sensitive sleepers avoid walls carrying a strong structural tone. Workshops set noisy arrays away from apprentices who have not learned to filter them. In gnomish homes, a newly repaired heater may be judged by the mood it puts into the floor as readily as by the warmth it produces.
  PROSE
  prose <<~PROSE, section: :limits, heading: "Limits"
    Attunement supplies perception, not control. A person may identify a collapsing frequency and lack the skill, tool, or material needed to correct it. Strong fields can saturate the sense until separate bands merge into pressure and nausea. Long exposure produces headaches, tremors, lost sleep, and false readings; gnomes risk damage to their own lattice as well.

    Quiet fields create a different problem. During #{encyclopedia_ref :drawdown, "drawdown"}, an attuned person can follow the remaining gradients and estimate which band failed first, but the absence carries little information about the cause. Crews compare that perception against a #{encyclopedia_ref :tuning_compass, "tuning compass"} and the recent load on local arrays before deciding whether to wait, shut down, or move.
  PROSE
end
