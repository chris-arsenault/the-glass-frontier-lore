npc :miraeth_loam_hearer do
  name "The Miraeth Loam Hearer"
  summary "The Miraeth Loam Hearer feels root damage as a faint pulse through bare fingertips."
  type_of :specialist_practitioner
  belongs_to :ability, :loam_hearing
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Miraeth Loam Hearer feels root damage as a faint pulse through bare fingertips."
end

relate :rel_loam_hearing_at_lumenshard, :manifests_at, :miraeth_loam_hearer, :lumenshard
relate :rel_loam_hearing_at_miraeth, :manifests_at, :miraeth_loam_hearer, :miraeth
relate :rel_loam_hearing_at_mera, :manifests_at, :miraeth_loam_hearer, :mera
