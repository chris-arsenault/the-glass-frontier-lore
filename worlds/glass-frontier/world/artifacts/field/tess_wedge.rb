artifact :tess_wedge do
  name "Var's Wedge"
  subkind :instrument
  function "Separates thin ringglass plates while preserving their signal impressions"
  status :complete
  tags :ringglass, :archives, :"signal-freq", :materials
  prominence :marginal

  prose <<~PROSE
    Twelve intact plates came from the first archive face cut with Var's Wedge. Talven cutter #{ref :tess_var, "Renn Var"} made the tool from a clear offcut, a ceramic heel, and a grip wrapped in lift cable after every metal edge broke the recorded signal. The archive manifest attached her name to the successful instrument.

    A user seats the clear edge along the crystal grain and taps the ceramic heel. The wedge answers the signal held in the layer and carries the same vibration through its grip. Pressure applied during that return opens a flat fracture behind the recording and leaves the signal-bearing face whole.

    The edge has shortened through repeated dressing. Talven keeps the instrument at the Sixth Bench and assigns it to archive cuts whose surrounding layer has already been mapped. Several workshops can reproduce its shape. Their copies split glass cleanly and scatter the recorded signal across both faces.
  PROSE

  log "2026-08-21 — Renamed Tess Wedge to Var's Wedge after its maker's personal name changed."
end
relate :rel_talven_possesses_tess_wedge, :possesses, :talven, :tess_wedge, since: 2435 do
  prose "Talven's archive crews hold Var's Wedge and issue it for mapped recording cuts."
end


relate :rel_tess_var_designed_tess_wedge, :designed, :tess_var, :tess_wedge do
  prose "Renn Var shaped the wedge for a damaged archive face that broke under metal tools."
end

relate :rel_tess_wedge_derived_from_ringglass, :derived_from, :tess_wedge, :ringglass do
  prose "The wedge's clear edge is cut from signal-bearing ringglass and dressed along its crystal grain."
end
