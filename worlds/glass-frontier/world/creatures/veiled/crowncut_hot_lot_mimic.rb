creature :crowncut_hot_lot_mimic do
  name "The Crowncut Hot-Lot Mimic"
  summary "The Crowncut Hot-Lot Mimic is a salvage-yard anomaly ranging around Pyre, Cinder Gap, and Crowncut Refinery. It resembles hot salvage until a cutter reaches for it, then unfolds hooked legs."
  subkind :anomaly
  type_of :cinder_mimic
  status :complete
  prominence :marginal
  veiled "The Crowncut Hot-Lot Mimic takes the shape of hot salvage and unfolds hooked legs when a cutter reaches for it."
end

relate :rel_cinder_mimic_in_pyre, :inhabits, :crowncut_hot_lot_mimic, :pyre
relate :rel_cinder_mimic_in_cinder_gap, :inhabits, :crowncut_hot_lot_mimic, :cinder_gap
relate :rel_cinder_mimic_in_crowncut_refinery, :inhabits, :crowncut_hot_lot_mimic, :crowncut_refinery
