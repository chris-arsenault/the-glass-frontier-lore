npc :rusk_crown do
  name "Rusk Crown"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Rusk Crown tests slag seals at Crowncut Refinery and trades intact gauge glass in Cinder Gap."
end

relate :rel_rusk_crown_at_crowncut_refinery, :operates_in, :rusk_crown, :crowncut_refinery
relate :rel_rusk_crown_at_cinder_gap, :operates_in, :rusk_crown, :cinder_gap
