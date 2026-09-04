artifact :vars_wedge do
  name "Var's Wedge"
  summary "Var's Wedge is a hand instrument for separating thin ringglass plates without destroying the signals recorded in them. Renn Var made it at Talven, which keeps the shortening original for mapped archive cuts."
  subkind :instrument
  function "Separates thin ringglass plates while preserving their signal impressions"
  status :complete
  tags :ringglass, :archives, :"signal-freq", :materials
  prominence :marginal

  descriptive_identity(
    appearance:
      "A clear ringglass edge cut from an offcut, backed by a ceramic " \
      "heel, its grip wrapped in lift cable. Repeated dressing has " \
      "shortened the edge, and Talven keeps it at the Sixth Bench " \
      "between assignments.",
    handling:
      "Seat the clear edge along the crystal grain and tap the heel; " \
      "the wedge answers the signal in the layer and sends the same " \
      "vibration up through the wrapped grip, so the holder feels the " \
      "recording before the listening points do. Pressure during that " \
      "return opens a flat fracture behind the recording and leaves the " \
      "signal-bearing face whole.",
    risks:
      "Talven assigns it only to archive cuts whose surrounding layer " \
      "has been mapped, so a fresh face costs a mapping shift first. " \
      "Workshop copies match its shape, split the glass just as " \
      "cleanly, and scatter the recorded signal across both new faces.",
  )

  prose <<~PROSE
    Twelve intact plates came from the first archive face cut with Var's Wedge. Talven cutter #{ref :renn_var, "Renn Var"} made the tool from a clear offcut, a ceramic heel, and a grip wrapped in lift cable after every metal edge broke the recorded signal. The archive manifest attached her name to the successful instrument.

    A user seats the clear edge along the crystal grain and taps the ceramic heel. The wedge answers the signal held in the layer and carries the same vibration through its grip. Pressure applied during that return opens a flat fracture behind the recording and leaves the signal-bearing face whole.

    The edge has shortened through repeated dressing. Talven keeps the instrument at the Sixth Bench and assigns it to archive cuts whose surrounding layer has already been mapped. Several workshops can reproduce its shape. Their copies split glass cleanly and scatter the recorded signal across both faces.
  PROSE

  log "2026-08-21 — Renamed Tess Wedge to Var's Wedge after its maker's personal name changed."

  gm_note :appears, "Whoever taps the ceramic heel feels the recording come back up through the wrapped grip, so the player holding the wedge hears the layer a moment before the crew at the listening points does."
  gm_note :triggered_by, "Several workshops will cut a copy of the wedge within a day. The copy splits the glass just as cleanly and scatters the recording across both new faces, so what it lifts grades as instrument stock rather than as an archive plate."
  gm_note :complicates, "Talven issues the original only for cuts whose surrounding layer has already been mapped, so a request to use it on a fresh face means paying for or working a mapping shift first."
end
relate :rel_talven_possesses_tess_wedge, :possesses, :talven, :vars_wedge, since: 2435 do
  prose "Talven's archive crews hold Var's Wedge and issue it for mapped recording cuts."
end


relate :rel_tess_var_designed_tess_wedge, :designed, :renn_var, :vars_wedge do
  prose "Renn Var shaped the wedge for a damaged archive face that broke under metal tools."
end
