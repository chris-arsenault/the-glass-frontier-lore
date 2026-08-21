npc :tess_var do
  name "Renn Var"
  subkind :specialist
  occupation "Archive-face cutter"
  specialty "Separating recorded ringglass along the crystal grain"
  species "human"
  culture "Hab-Worlder"
  status :complete
  tags :ringglass, :archives, :materials, :training
  prominence :marginal

  prose <<~PROSE
    Renn Var cuts recorded ringglass at #{ref :talven, "Talven"}. She made Var's Wedge after metal tools scattered the signal in a damaged archive face. Her hands appear in the recording held by the first plate she lifted with it: a blurred pair of shadows crossing an older work crew's voices.

    Var now leads the Sixth Bench archive cut. She marks each intended plate with a white grain line and seats the wedge herself. Apprentices handle the dampers, listening points, and finished plates until their readings match hers across three cuts.
  PROSE

  log "2026-08-21 — Renamed Tess Var to Renn Var to remove a duplicated personal name from the same habitat pass."
end
relate :rel_tess_var_located_in_talven, :located_in, :tess_var, :talven, since: 2435 do
  prose "Renn Var leads archive cutting on Talven's Sixth Bench."
end
