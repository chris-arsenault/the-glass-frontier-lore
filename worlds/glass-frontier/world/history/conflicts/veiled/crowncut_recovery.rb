conflict :crowncut_recovery do
  name "Crowncut Recovery"
  summary "Crowncut Recovery is a campaign by rival crews to stabilize drifting refinery sections before their salvage claims expire."
  subkind :campaign
  status :complete
  prominence :marginal
  veiled "Crowncut Recovery crews compete to stabilize the same drifting refinery sections before their claims expire."
end

relate :rel_crowncut_recovery_at_crowncut_refinery, :manifests_at, :crowncut_recovery, :crowncut_refinery
relate :rel_crowncut_recovery_at_lot_forty, :manifests_at, :crowncut_recovery, :forty
