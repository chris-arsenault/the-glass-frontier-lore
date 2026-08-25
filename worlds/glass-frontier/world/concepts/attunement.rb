ability :attunement do
  name "Attunement"
  summary "Attunement is the learned ability to distinguish resonance from the pressure, vibration, heat, and sound that carry it through bodies, materials, and machines."
  subkind :learned_ability
  tags :resonance, :training
  prominence :recognized

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

  prose <<~PROSE
    Attunement is the learned ability to distinguish resonance from the ordinary pressure, vibration, heat, and sound that carry it. An attuned person can follow a change through a wall, a tool, or their own body and identify enough of its pattern to act. The first useful distinction is usually broad: structural, kinetic, or signal. Experienced practitioners can separate nearby frequencies, recognize an unstable harmonic, and hold one response in mind while the surrounding field shifts.

    The sensation has no universal form. One person hears intervals below audible sound. Another feels weight across the teeth or pressure behind the eyes. Material workers often notice it first through their hands, as a difference in how glass, metal, or stone accepts a blow. Training gives those private sensations repeatable references. Two attuned people may describe a field differently and still agree on its band, direction, and rate of change.
  PROSE
  prose <<~PROSE, section: :biology, heading: "Bodies and Training"
    #{ref :gnomes, "Gnomes"} begin with direct sensory access because ringglass runs through their bones and nerves. A gnomish child may recognize a bad structural tone before learning its name. That sensitivity provides detail and speed; it does not supply judgment. Gnomes still train to separate a dangerous reading from fatigue, reflected vibration, or the noise of their own lattice.

    #{ref :humans, "Humans"} usually learn through instruments. They compare a stable reference tone with the sensation produced by a working array until the difference becomes recognizable without the display. #{ref :orcs, "Orcs"} often approach the same ability through material response: a plate that carries stress unevenly, a seam that rings too long, a tool whose balance changes near active ringglass. These starting points shape specialities, but none confines them. Any species can develop attunement, and no species acquires a complete understanding of resonance by sensation alone.

    The #{ref :clarisant, "Clarisant"} teaches students to name what they perceive only after they can reproduce the observation. Its examiners use blind housings, swapped samples, and deliberately silent controls to expose confident guesses. Folk teachers tend to use familiar places instead: the same bridge before and after a freight crossing, a household concentrator at the beginning and end of a heavy draw, or a quarry face in changing weather.
  PROSE
  prose <<~PROSE, section: :applications, heading: "Daily Use"
    Most attuned people are not full-time #{ref :tuners, "Tuners"}. They are mechanics who feel drift before a gauge moves, pilots who notice a change in a kite's thrust through the deck, healers who can separate lattice pain from an ordinary fracture, and householders who know which room will become uncomfortable when the local field runs thin. The ability becomes valuable wherever a device and its surroundings affect one another.

    Attunement also changes how people choose places. Sensitive sleepers avoid walls carrying a strong structural tone. Workshops set noisy arrays away from apprentices who have not learned to filter them. In gnomish homes, a newly repaired heater may be judged by the mood it puts into the floor as readily as by the warmth it produces.
  PROSE
  prose <<~PROSE, section: :limits, heading: "Limits"
    Attunement supplies perception, not control. A person may identify a collapsing frequency and lack the skill, tool, or material needed to correct it. Strong fields can saturate the sense until separate bands merge into pressure and nausea. Long exposure produces headaches, tremors, lost sleep, and false readings; gnomes risk damage to their own lattice as well.

    Quiet fields create a different problem. During #{ref :drawdown, "drawdown"}, an attuned person can follow the remaining gradients and estimate which band failed first, but the absence carries little information about the cause. Crews compare that perception against a #{ref :tuning_compass, "tuning compass"} and the recent load on local arrays before deciding whether to wait, shut down, or move.
  PROSE

  gm_note :appears, "The first person to notice a bad field is rarely a hired #{ref :tuners, "Tuner"}; it is the mechanic who feels drift before the gauge moves, the pilot reading thrust through a deck, or a householder who has lived with one room's tone for years. They can say something is wrong, not which band."
  gm_note :triggered_by, "When two attuned characters compare a reading they will use unrelated words for it — pressure behind the eyes, weight across the teeth, a difference in how a plate takes a blow — and still agree on band, direction, and rate. Disagreement about the rate means fatigue or a reflection."
  gm_note :complicates, "Attunement is perception without control, so a character can name a collapsing frequency and have no tool, material, or training that would correct it. The warning arrives well ahead of anyone who could act on it."
end

relate :rel_attunement_depends_on_resonance, :depends_on, :attunement, :resonance do
  prose "#{ref :attunement, "Attunement"} is trained perception of resonance as it passes through bodies, materials, and machines."
end
relate :rel_tuners_depend_on_attunement, :depends_on, :tuners, :attunement do
  prose "#{ref :tuners, "Tuners"} make a profession of attunement, refining a private sensation into observations other people can test and use."
end
relate :rel_clarisant_trains_attunement, :trains, :clarisant, :attunement, since: 2310 do
  prose "The #{ref :clarisant, "Clarisant"} teaches attunement through repeatable comparisons between felt changes and known resonance sources."
end
