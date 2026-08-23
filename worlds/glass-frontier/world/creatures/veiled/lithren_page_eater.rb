creature :lithren_page_eater do
  name "Lithren Page-Eater"
  subkind :creature
  status :complete
  prominence :marginal
  veiled "Lithren page-eaters digest written ink and excrete the same text as a line of frost."
end

relate :rel_lithren_page_eater_in_lithren, :inhabits, :lithren_page_eater, :lithren
relate :rel_lithren_page_eater_in_pelhari, :inhabits, :lithren_page_eater, :pelhari
