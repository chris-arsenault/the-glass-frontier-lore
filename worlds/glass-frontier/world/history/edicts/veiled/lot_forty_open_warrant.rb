edict :lot_forty_open_warrant do
  name "The Lot Forty Open Warrant"
  summary "The Lot Forty Open Warrant is an emergency authorization allowing any equipped crew to cut a dangerous hull in return for its first stable component."
  type_of :local_order
  belongs_to :doctrine, :open_salvage_warrant
  subkind :edict
  status :complete
  prominence :marginal
  veiled "The Lot Forty Open Warrant lets any equipped crew cut a dangerous hull in exchange for surrendering its first stable component."
end

relate :rel_open_salvage_warrant_at_crowncut_refinery, :manifests_at, :lot_forty_open_warrant, :crowncut_refinery
relate :rel_open_salvage_warrant_at_pell_cut, :manifests_at, :lot_forty_open_warrant, :pell_cut
relate :rel_open_salvage_warrant_at_lot_forty, :manifests_at, :lot_forty_open_warrant, :lot_forty
relate :rel_open_salvage_warrant_at_brake, :manifests_at, :lot_forty_open_warrant, :brake
