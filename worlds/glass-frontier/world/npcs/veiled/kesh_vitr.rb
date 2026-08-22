npc :kesh_vitr do
  name "Kesh Vitr"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Kesh Vitr rebuilds heat shutters in Vitrael and carries the rejected plates to Ashenmaw."
end

relate :rel_kesh_vitr_at_vitrael, :operates_in, :kesh_vitr, :vitrael
relate :rel_kesh_vitr_at_ashenmaw, :operates_in, :kesh_vitr, :ashenmaw
