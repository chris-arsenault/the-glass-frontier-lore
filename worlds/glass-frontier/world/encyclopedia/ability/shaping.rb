encyclopedia :shaping do
  name "Shaping"
  summary "Shaping is the resonant alteration of nonliving matter without cutting, melting, or replacing it."
  kind :ability
  subkind :ability
  status :complete
  topics :resonance, :"structural-freq", :materials, :rebuilding
  prevalence :rare
  available_globally

  tier :broad,
       effect: "Bend, join, part, or smooth a hand-sized piece of understood nonliving material",
       cost: "Numbness in the working hand and a brief loss of precise touch"
  tier :focused,
       effect: "Reshape a person-sized object or seal a breach while its load remains on it",
       cost: "Painful stiffness in the corresponding joints until the bearer rests"
  tier :narrow,
       effect: "Reform one connected section of a hull, fortification, or machine around its existing contents",
       cost: "The bearer takes fractures and internal bruising where the altered structure carried stress"
  tier :apex,
       effect: "Rewrite the shape and load path of a city-scale body of nonliving matter that the bearer understands",
       cost: "Every hidden flaw missed by the bearer appears in their own bones and cannot be removed by further shaping"

  descriptive_identity(
    signs: "Worked matter moves without heat or tool marks. Grain, seams, and old damage remain visible while their paths bend into the new form.",
    effect: "Shaping changes the geometry of nonliving matter while preserving its mass, composition, and continuous physical history.",
    limits: "The ability cannot make matter, alter living tissue, or substitute force for understanding. A mistaken model becomes a real flaw in the result."
  )

  cue "A rigid surface dimples under spread fingers, then carries the movement outward along its grain."
  cue "Old welds, growth lines, and cracks curve through the finished object instead of vanishing."
  affordance "A shaper can open sealed wreckage, improvise a bridge, turn cover into a weapon, or repair a failing structure while it remains under load."
  pressure "The material obeys the shaper's understanding exactly, including every mistaken assumption about an unseen void, mixed alloy, or moving load."
  variation "Stone and ringglass usually move as a slow fold whose edges remain cool."
  variation "Worked metal can change almost at once, with a deep tone that rises as internal stress is redirected."

  prose <<~PROSE
    Shaping changes the form of nonliving matter without adding material or erasing what was already there. A shaper can part a door along a new seam, draw shattered hull plate together, turn a fallen beam into an arch, or make a weapon from the wall that stopped it. The worked substance does not liquefy. It moves according to its own structure: crystal faces travel through glass, grain bends through stone, and old welds curve through metal.

    The ability is exact and literal. Mass remains mass. A hollow stays hollow unless its walls are moved to fill it. Mixed substances retain their boundaries unless the shaper understands how those boundaries can be joined. Living tissue resists the effect completely, though armor, implants, and foreign matter inside a body can still answer it. This makes delicate work around casualties possible and dangerous in equal measure.
  PROSE
  prose <<~PROSE, section: :limits, heading: "Understanding the Load"
    Shaping follows the model held by the person using it. Touch supplies much of that model, but training supplies the rest: the direction of a load, the way a material fails, the space hidden behind a panel, and the difference between a crack that can close and one carrying contamination. A clean alteration made from a bad model is still a bad alteration.

    At low power the error ruins an object or traps a hand. At high power it can turn a repaired span into a delayed collapse. Crews therefore expose joints, sound voids, and mark live conduits before a shaper begins. The greatest known expression is #{ref :worldsmith, "the Worldsmith"}, whose bearer can reform structures measured in districts and inherits every hidden flaw the work fails to account for.
  PROSE
end
