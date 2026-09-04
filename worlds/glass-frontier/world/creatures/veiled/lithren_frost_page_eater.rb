creature :lithren_frost_page_eater do
  name "The Lithren Frost Page-Eater"
  summary "The Lithren Frost Page-Eater is an archive-dwelling creature ranging between Lithren and Pelhari. It digests written ink and leaves the same text behind as a line of frost."
  subkind :creature
  type_of :lacunae
  status :complete
  prominence :marginal
  veiled "The Lithren Frost Page-Eater digests written ink and leaves the same text behind as a line of frost."
end

relate :rel_lithren_page_eater_in_lithren, :inhabits, :lithren_frost_page_eater, :lithren
relate :rel_lithren_page_eater_in_pelhari, :inhabits, :lithren_frost_page_eater, :pelhari
