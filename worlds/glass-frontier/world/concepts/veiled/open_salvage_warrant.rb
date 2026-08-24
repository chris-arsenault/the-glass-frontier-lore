concept :open_salvage_warrant do
  name "Open Salvage Warrant"
  summary "An Open Salvage Warrant is an emergency authorization allowing any equipped crew to cut a dangerous hull in return for its first stable component."
  subkind :doctrine
  status :complete
  prominence :marginal
  veiled "An open salvage warrant lets any equipped crew cut a dangerous hull in exchange for surrendering its first stable component."
end

relate :rel_open_salvage_warrant_at_crowncut_refinery, :manifests_at, :open_salvage_warrant, :crowncut_refinery
relate :rel_open_salvage_warrant_at_pell_cut, :manifests_at, :open_salvage_warrant, :pell_cut
relate :rel_open_salvage_warrant_at_lot_forty, :manifests_at, :open_salvage_warrant, :lot_forty
relate :rel_open_salvage_warrant_at_brake, :manifests_at, :open_salvage_warrant, :brake
