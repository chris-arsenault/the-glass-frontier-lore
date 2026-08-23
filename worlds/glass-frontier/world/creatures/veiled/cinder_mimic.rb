creature :cinder_mimic do
  name "Cinder Mimic"
  subkind :anomaly
  status :complete
  prominence :marginal
  veiled "Cinder mimics take the shape of hot salvage and unfold hooked legs when a cutter reaches for them."
end

relate :rel_cinder_mimic_in_pyre, :inhabits, :cinder_mimic, :pyre
relate :rel_cinder_mimic_in_cinder_gap, :inhabits, :cinder_mimic, :cinder_gap
relate :rel_cinder_mimic_in_crowncut_refinery, :inhabits, :cinder_mimic, :crowncut_refinery
