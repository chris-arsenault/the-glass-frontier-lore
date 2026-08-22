npc :venn_pell do
  name "Venn Pell"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Venn Pell carries docking and supply claims among Outside, Pelhari, Pell Cut, and Perch."
end

relate :rel_venn_pell_at_outside, :operates_in, :venn_pell, :outside
relate :rel_venn_pell_at_pelhari, :operates_in, :venn_pell, :pelhari
relate :rel_venn_pell_at_pell_cut, :operates_in, :venn_pell, :pell_cut
relate :rel_venn_pell_at_perch, :operates_in, :venn_pell, :perch
