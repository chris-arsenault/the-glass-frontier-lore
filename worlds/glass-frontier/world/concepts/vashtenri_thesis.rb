resource :vashtenri_thesis do
  name "Vashtenri Thesis"
  summary "The Vashtenri Thesis is Renn Duvasi's published study of how resonance loads spread through connected ringglass beyond the equipment drawing the field."
  subkind :data
  tags :archives, :resonance, :"ring-era"
  prominence :marginal

  descriptive_identity(
    appearance:
      "A three-part volume: pre-Glassfall service fragments reproduced " \
      "at actual size with their burns and overwritten figures, Lira " \
      "Vashtenri's refinery readings laid over substrate maps on " \
      "transparent leaves, and recorded drawdown cases. Working copies " \
      "are usually missing leaves, carried off to engine rooms and not " \
      "returned.",
    working:
      "Laid in order, the transparent leaves show a heavy draw as a " \
      "darkened region spreading along ringglass-bearing seams, and a " \
      "reader can lift a layer to separate instrument record from " \
      "Duvasi's inference. Crews use it to look past a failed device: " \
      "map the gradient across the surrounding structure before " \
      "declaring a source exhausted.",
    risks:
      "The model holds only where the substrate has been surveyed — in " \
      "loose debris, fractured deep-Shear claims, and Bloom-altered " \
      "material its predictions miss. In the deep Shear an annotated " \
      "copy outvalues a clean one because the margins record where the " \
      "published maps are wrong, which makes it a trade good other " \
      "crews will bargain, borrow, or lift for.",
  )

  prose <<~PROSE
    The Vashtenri Thesis is Renn Duvasi's published study of resonance load moving through connected ringglass. Its central claim is practical: an array draws from a field larger than its housing, and the strongest effect may appear where that field narrows rather than where the work occurs. A refinery can quiet a distant household line. A structural array can strengthen one seam while leaving another slow to recover. Boundaries drawn around equipment rarely match the paths the resonance follows.

    The study takes its name from #{ref :lira_vashtenri, "Lira Vashtenri"}. Her refinery books record years of small adjustments made before gauges showed a fault, followed by the first containment work that became #{ref :liras_wall, "Lira's Wall"}. Duvasi set those observations beside damaged pre-Glassfall service ledgers carrying the same correction pattern. The comparison links present work to an older practice without claiming that the lost text has been translated.
  PROSE
  prose <<~PROSE, section: :structure, heading: "The Published Work"
    The public edition has three parts. The first reproduces the surviving service fragments at their actual size, including burns, cracks, overwritten figures, and empty areas where a copy failed. The second lays Lira's readings over maps of the refinery substrate and the early Bloom cordons. The third applies the resulting model to recorded cases of #{encyclopedia_ref :drawdown, "drawdown"} from Clarisant chapter casebooks.

    Transparent leaves carry the maps. When laid in order, they show a heavy draw as a darkened region spreading along ringglass-bearing seams. Readers can remove a layer to separate what an instrument recorded from what Duvasi inferred. Working copies are often missing one or more leaves because mechanics take them to walls, engine rooms, and survey sites where a flat map is easier to use than the complete volume.

    The archive master remains at #{ref :pelhari, "Pelhari"}. Copies circulate freely through Clarisant chapters and technical schools. Annotated copies have become more valuable than clean ones in the deep Shear, where local corrections expose faults in the published substrate maps.
  PROSE
  prose <<~PROSE, section: :applications, heading: "What It Changed"
    The thesis gave repair crews a reason to look past the failed device. A compass leaning away from a dead heater may be following the same field toward an industrial draw, a buried conduit, or a neighboring habitat frame. Surveyors now map the gradient across the surrounding structure before declaring a source exhausted. Tuner casebooks increasingly record what strengthened nearby as well as what went quiet.

    The model also made old disputes harder to contain within settlement borders. Two communities joined by buried ringglass can draw from the same local field while maintaining separate concentrators and separate accounts. Neither can establish responsibility from usage records alone. A time series of compass readings can show the load moving between them; it still cannot decide whose use was necessary.
  PROSE
  prose <<~PROSE, section: :limits, heading: "Where the Model Fails"
    The model predicts ordinary coupled fields best where the ringglass substrate has been surveyed. It performs poorly in loose debris, fractured deep-Shear claims, and Bloom-altered material. Some depleted sites show no stronger field at the predicted destination. Others recover from a direction with no mapped conductive path.

    Duvasi treats these cases as limits on the map and the model. The published evidence establishes that local draws can move load through connected material. It does not establish how ambient resonance replenishes, how far an unknown path can carry it, or whether every missing response has gone somewhere that current instruments can measure.
  PROSE

  gm_note :appears, "Any working copy a crew borrows is missing leaves, because mechanics carry the transparent maps off to walls and engine rooms and do not always bring them back. The party gets an answer with a hole in it and has to find who took the sheet before the layers line up."
  gm_note :triggered_by, "Plan from the thesis in loose debris, a fractured deep-#{ref :the_shear, "Shear"} claim, or Bloom-altered material and the prediction misses. The field is not stronger where the map sends the crew, or it recovers from a direction with no path drawn on any leaf."
  gm_note :complicates, "A marked-up copy is worth more in the deep Shear than a clean one, because the annotations record where the published substrate maps are wrong. Whoever holds one is carrying a trade good that other crews will bargain, borrow, or lift for."
end

relate :rel_vashtenri_thesis_derived_from_lira, :derived_from, :vashtenri_thesis, :lira_vashtenri do
  prose "The #{ref :vashtenri_thesis, "Vashtenri Thesis"} derives its complete working evidence from Lira Vashtenri's refinery and containment notes."
end
relate :rel_vashtenri_thesis_derived_from_liras_wall, :derived_from, :vashtenri_thesis, :liras_wall do
  prose "Its coupled-field account also follows the first measurements from #{ref :liras_wall, "Lira's Wall"}, where redirected load could be observed across a mapped substrate."
end
relate :rel_vashtenri_thesis_located_in_pelhari, :located_in, :vashtenri_thesis, :pelhari, since: 2427 do
  prose "The archive master of the thesis is held at #{ref :pelhari, "Pelhari"}; working copies circulate through Clarisant chapters and technical schools."
end

moment :vashtenri_thesis_published, year: 2427, of: :vashtenri_thesis do
  summary "Renn Duvasi published the Vashtenri Thesis through the Pelhari academy in 2427."
  prose "#{ref :renn_duvasi, "Renn Duvasi"} published the Vashtenri Thesis through the Pelhari academy in 2427."
end
