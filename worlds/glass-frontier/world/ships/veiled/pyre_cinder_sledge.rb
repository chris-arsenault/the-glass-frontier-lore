transport :pyre_cinder_sledge do
  name "The Pyre Mane"
  summary "The Pyre Mane is a surface cargo vehicle used between Pyre, Cinder Gap, and Crowncut Refinery. Its runners soften without melting while it drags hot salvage."
  subkind :transport
  type_of :cinder_sledge
  status :complete
  log "2026-08-31 — Renamed The Pyre Cinder Sledge to The Pyre Mane to use the hot-road freight class word."
  prominence :marginal
  veiled "The Pyre Mane drags hot salvage on runners that soften instead of melting."
end

relate :rel_cinder_sledge_at_pyre, :operates_in, :pyre_cinder_sledge, :pyre
relate :rel_cinder_sledge_at_cinder_gap, :operates_in, :pyre_cinder_sledge, :cinder_gap
relate :rel_cinder_sledge_at_crowncut_refinery, :operates_in, :pyre_cinder_sledge, :crowncut_refinery
