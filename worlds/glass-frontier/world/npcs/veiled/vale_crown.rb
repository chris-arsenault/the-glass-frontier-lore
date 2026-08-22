npc :vale_crown do
  name "Vale Crown"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Vale Crown traces refined fuel from Crowncut Refinery through the storage meters at Pell Cut."
end

relate :rel_vale_crown_at_crowncut_refinery, :operates_in, :vale_crown, :crowncut_refinery
relate :rel_vale_crown_at_pell_cut, :operates_in, :vale_crown, :pell_cut
