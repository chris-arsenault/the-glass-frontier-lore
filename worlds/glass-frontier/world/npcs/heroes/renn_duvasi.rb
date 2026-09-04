npc :renn_duvasi do
  name "Renn Duvasi"
  summary "Renn Duvasi is a Pelhari archive scholar who joins damaged pre-Glassfall maintenance records to the casebooks of living Tuners."
  subkind :specialist
  occupation "Archive scholar at the Pelhari academy"
  specialty "Pre-Glassfall resonance maintenance records"
  type_of :humans
  belongs_to :culture, :sitharians
  descriptive_identity disposition:
    "Put a question about an old record to Duvasi and out come the " \
    "damaged sheet, the copies taken from it, and the overlays where " \
    "visiting mechanics disagreed, with an invitation to mark a new " \
    "reading on the transparency."
  tags :archives, :resonance, :"ring-era", :training
  prominence :recognized

  prose <<~PROSE
    A #{encyclopedia_ref :humans, "human"} archive scholar whose work joins damaged pre-Glassfall maintenance records to the casebooks of living #{encyclopedia_ref :resonant_tuner, "Tuners"}. Renn Duvasi is best known for publishing the #{ref :vashtenri_thesis, "Vashtenri Thesis"}, which used Lira Vashtenri's refinery notes to show that a working array can shift resonance load far beyond the equipment being adjusted.

    Duvasi works at the #{ref :pelhari, "Pelhari"} academy, where the #{ref :clarisant, "Clarisant"} keeps its oldest casebooks beside copies of ring-era service material. Their rooms hold more damaged records than whole ones. Heat has darkened some crystal sheets at the edges; repeated copying has turned fine diagrams into pale blocks; several surviving ledgers preserve only the mechanics' corrections because those marks were cut deeper than the original text.
  PROSE
  prose <<~PROSE, section: :history, heading: "The Repeated Correction"
    Duvasi's early work concerned ordinary ring maintenance before the Glassfall. They catalogued a recurring mark beside load readings: a short diagonal crossed by three shallow cuts. Different archives had assigned it different meanings, including danger, retune, and bad instrument. The surrounding numbers did not support any one translation.

    The same pattern appeared in copies of Lira Vashtenri's refinery books, drawn beside adjustments that moved stress away from one ringglass seam and into another. Lira had never learned the old mark. She had developed her own notation for a response she could feel and her gauges registered late. Duvasi compared the two bodies of records and found that the old corrections predicted the direction of local #{encyclopedia_ref :drawdown, "drawdown"} after a heavy draw.

    That comparison became the Vashtenri Thesis. Duvasi named it for #{ref :lira_vashtenri, "Lira"} because her records supplied the complete observations and because her work had already turned the same effect into practical containment. The choice also kept the publication from being mistaken for a translation of the pre-Glassfall fragments. Duvasi can show that the old mechanics tracked coupled fields. The surviving sheets do not say what they believed caused the coupling.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Archive Work"
    Duvasi publishes. The academy's working copies carry broad margins, layer numbers, and a visible chain back to each damaged source. Field casebooks are returned with clean copies and a list of passages used. Mechanics who visit Pelhari are invited to mark interpretations directly on transparent overlays, where disagreement remains legible instead of being folded into a single restored diagram.

    This method has made Duvasi useful outside the archive. Chapters send them sets of readings that appear unrelated: heaters failing on one deck while a distant refinery starts, a signal array recovering when a structural line is cut, a compass that points through solid rock. Duvasi maps the observations against known ringglass paths and returns a prediction of where the load moved. The prediction is often good enough to choose the next survey site. It is not a repair instruction.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Duvasi is assembling a second edition from post-Rekindling casebooks whose original places can now be surveyed again. The work has taken them beyond the academy more often than they prefer. A copied mark means little when a wall has been rebuilt twice, a habitat has rotated, or salvagers have stripped the ringglass conduit that once joined two readings.

    Their current concern is a set of depleted sites where the predicted receiving field never strengthens. The measurements rule out a simple broken path. They do not distinguish between resonance leaving the mapped substrate, being held by an unknown sink, or returning too slowly for the available records to show it.
  PROSE

  gm_note :triggered_by, "Bring Duvasi readings that do not belong together — a dead heater, a distant refinery starting, a compass pointing into rock — and they map the set against known ringglass paths and say where the load went. The answer is good enough to choose the next survey site and is not a repair."
  gm_note :complicates, "Duvasi answers a question about an old record by producing the damaged sheet, the copies taken from it, and the overlays where visiting mechanics disagreed. Whoever wanted one authoritative reading gets three and an invitation to mark their own on the transparency."
  gm_note :appears, "The second edition keeps Duvasi out of the archive and standing in the places their records describe, asking who rebuilt a wall and where a conduit went. Salvage crews meet them as a scholar with exact questions about a run of #{encyclopedia_ref :ringglass, "ringglass"} already sold."
end

relate :rel_renn_located_in_pelhari, :located_in, :renn_duvasi, :pelhari, since: 2411 do
  prose "#{ref :renn_duvasi, "Renn Duvasi"} works in the Pelhari academy archives, among the Clarisant's casebooks and copied ring-era service sheets."
end
relate :rel_renn_member_of_clarisant, :member_of, :renn_duvasi, :clarisant, since: 2411 do
  prose "Duvasi publishes through the #{ref :clarisant, "Clarisant"} and draws much of their evidence from its working casebooks."
end
relate :rel_renn_created_vashtenri_thesis, :created, :renn_duvasi, :vashtenri_thesis do
  prose "Duvasi created the #{ref :vashtenri_thesis, "Vashtenri Thesis"} by comparing Lira's complete field notes with damaged pre-Glassfall maintenance records."
end
