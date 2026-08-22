npc :nera_olven do
  name "Nera Olven"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Nera Olven grafts cold-root cuttings in Olven and Seren and marks every plant that survives both soils."
end

relate :rel_nera_olven_at_olven, :operates_in, :nera_olven, :olven
relate :rel_nera_olven_at_seren, :operates_in, :nera_olven, :seren
