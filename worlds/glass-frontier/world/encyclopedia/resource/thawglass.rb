encyclopedia :thawglass do
  title "Thawglass"
  kind :resource
  subkind :building_material
  status :complete
  summary "Thawglass is Mera's porous ceramic mesh threaded with ringglass fiber to guide the freezing and controlled melt of large water structures."
  function "Guides the freezing and controlled melt of large water structures"
  grades "Frame, stair, and household mesh"
  availability "Made in Mera from low-grade ringglass fiber and porous ceramic"
  topics :materials, :ringglass, :household, :resonance
  prevalence :common
  appears_when all: { place: [:cold] }

  cue "Thawglass is a porous ceramic mesh threaded with low-grade ringglass fiber."
  cue "Every piece is fired with a painted heat line showing the direction of the spring melt."
  affordance "A weak structural tone guides water to freeze on the mesh first and melt along the ceramic pores when the frame warms."
  pressure "Set against its painted line, a column freezes out of sequence and melts through the wrong face."
  variation "Heavy frame grade forms the central skeleton of Mera's seasonal ice columns."
  variation "Stair grade carries rough ribs that remain grippable under frost, while household mesh bends around cisterns and food stores."

  descriptive_identity(
    appearance:
      "A porous ceramic mesh threaded with low-grade ringglass fiber, " \
      "fired with a painted heat line marking the direction of the " \
      "spring melt. Heavy frame grade builds a column's skeleton, stair " \
      "grade carries rough ribs that grip under frost, and household " \
      "mesh bends around cisterns and food stores.",
    working:
      "A weak structural tone runs through the fibers, so water freezes " \
      "on the mesh first and binds the column to its frame, then melts " \
      "along the ceramic pores when the frame warms. Every piece is set " \
      "with its heat line facing the melt, and used pieces are owed " \
      "back to Mera's kilns after the thaw.",
    risks:
      "Set against its painted line, a column freezes out of sequence " \
      "and melts through the wrong face; a mis-frozen frame shows clear " \
      "fibers along one edge and gets crushed into household mesh, " \
      "whose short fibers cannot steer a public column. Thawglass " \
      "carried off the fragment stays on a kiln crew's recovery list.",
  )

  prose <<~PROSE
    Mera grows its seasonal ice columns around thawglass, a porous ceramic mesh threaded with ringglass fiber. A weak structural tone moves through the fibers. Water freezes there first and binds the column to its frame, then melts along the ceramic pores when the frame warms.

    Heavy frame grade forms the central skeleton. Stair grade carries rough ribs that remain grippable under frost. Household mesh bends around cisterns and food stores. Every grade is fired with a painted heat line showing the direction of the spring melt.

    Used pieces return to Mera's kilns after the thaw.

    A frame that freezes out of sequence develops clear fibers along one edge. Kiln crews crush it into household mesh, whose short fibers cannot steer a public column far enough to threaten its water schedule.
  PROSE

end
