npc :venn_out do
  name "Venn Out"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Venn Out carries Far Bell departure slips to crews waiting Outside and returns with their docking pledges."
end

relate :rel_venn_out_at_outside, :operates_in, :venn_out, :outside
relate :rel_venn_out_at_far_bell, :operates_in, :venn_out, :far_bell
