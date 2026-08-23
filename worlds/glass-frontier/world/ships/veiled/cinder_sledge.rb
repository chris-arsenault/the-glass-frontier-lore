transport :cinder_sledge do
  name "Cinder Sledge"
  subkind :transport
  status :complete
  prominence :marginal
  veiled "Cinder sledges drag hot salvage from Pyre on runners that soften instead of melting."
end

relate :rel_cinder_sledge_at_pyre, :operates_in, :cinder_sledge, :pyre
relate :rel_cinder_sledge_at_cinder_gap, :operates_in, :cinder_sledge, :cinder_gap
relate :rel_cinder_sledge_at_crowncut_refinery, :operates_in, :cinder_sledge, :crowncut_refinery
