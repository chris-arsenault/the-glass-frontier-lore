resource :thawglass do
  name "Thawglass"
  subkind :material
  function "Guides the freezing and controlled melt of large water structures"
  grades "Frame, stair, and household mesh"
  availability "Made in Mera from low-grade ringglass fiber and porous ceramic"
  status :complete
  tags :materials, :ringglass, :household, :resonance
  prominence :marginal

  prose <<~PROSE
    Mera grows its seasonal ice columns around thawglass, a porous ceramic mesh threaded with ringglass fiber. A weak structural tone moves through the fibers. Water freezes there first and binds the column to its frame, then melts along the ceramic pores when the frame warms.

    Heavy frame grade forms the central skeleton. Stair grade carries rough ribs that remain grippable under frost. Household mesh bends around cisterns and food stores. Every grade is fired with a painted heat line showing the direction of the spring melt.

    Used pieces return to Mera's kilns after the thaw.

    A frame that freezes out of sequence develops clear fibers along one edge. Kiln crews crush it into household mesh, whose short fibers cannot steer a public column far enough to threaten its water schedule.
  PROSE

  gm_note :triggered_by, "Any thawglass a crew buys or salvages carries a painted heat line showing which way it opens. " \
                         "Set against that line, a column freezes out of sequence and melts through the wrong face."
  gm_note :complicates, "#{ref :mera, "Mera"}'s kilns regrind every mis-frozen frame into household mesh. " \
                        "Thawglass acquired secondhand is usually that mesh, which bends around a cistern and cannot carry a column's freezing sequence."
  gm_note :appears, "Used pieces are owed back to Mera's kilns after each thaw, so thawglass carried off the fragment stays on a kiln crew's recovery list until it returns."
end
relate :rel_thawglass_sourced_from_mera, :sourced_from, :thawglass, :mera do
  prose "Mera's kilns make thawglass for the hab's seasonal ice structures."
end


relate :rel_thawglass_derived_from_ringglass, :derived_from, :thawglass, :ringglass do
  prose "Low-grade ringglass fiber carries the freezing sequence through thawglass mesh."
end

relate :rel_thawglass_attuned_to_resonance, :attuned_to, :thawglass, :resonance do
  prose "A weak structural tone determines where water first freezes and where a warmed frame first opens."
end
