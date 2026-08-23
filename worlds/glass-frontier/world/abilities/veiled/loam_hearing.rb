ability :loam_hearing do
  name "Loam Hearing"
  subkind :innate_ability
  status :complete
  prominence :marginal
  veiled "Loam hearers feel root damage as a faint pulse through bare fingertips."
end

relate :rel_loam_hearing_at_lumenshard, :manifests_at, :loam_hearing, :lumenshard
relate :rel_loam_hearing_at_miraeth, :manifests_at, :loam_hearing, :miraeth
relate :rel_loam_hearing_at_mera, :manifests_at, :loam_hearing, :mera
