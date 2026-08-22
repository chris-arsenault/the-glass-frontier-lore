npc :venn_olven do
  name "Venn Olven"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Venn Olven tests Issel irrigation salts against the pale-root beds cultivated in Olven."
end

relate :rel_venn_olven_at_olven, :operates_in, :venn_olven, :olven
relate :rel_venn_olven_at_issel, :operates_in, :venn_olven, :issel
