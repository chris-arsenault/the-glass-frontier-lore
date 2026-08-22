npc :kerr_pell do
  name "Kerr Pell"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Kerr Pell audits fuel losses between Crowncut Refinery and Pell Cut with a hand-balanced flow wheel."
end

relate :rel_kerr_pell_at_crowncut_refinery, :operates_in, :kerr_pell, :crowncut_refinery
relate :rel_kerr_pell_at_pell_cut, :operates_in, :kerr_pell, :pell_cut
