conflict :vitrael_cut_war do
  name "The Vitrael Cut War"
  summary "The Vitrael Cut War was fought by Vitrael and Ashenmaw crews over a crystal seam; armed cutting frames remain in the abandoned workings."
  subkind :war
  type_of :armed_conflict
  status :complete
  prominence :marginal
  veiled "Vitrael and Ashenmaw crews still recover armed cutting frames abandoned during their war over a crystal seam."
end

relate :rel_vitrael_cut_war_at_vitrael, :manifests_at, :vitrael_cut_war, :vitrael
relate :rel_vitrael_cut_war_at_ashenmaw, :manifests_at, :vitrael_cut_war, :ashenmaw
