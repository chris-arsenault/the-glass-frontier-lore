npc :dern_sail do
  name "Dern Sail"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Dern Sail repairs tension cloth in Ravel, Rib, Sable Crescent, and Seren and marks each patch with its load limit."
end

relate :rel_dern_sail_at_ravel, :operates_in, :dern_sail, :ravel
relate :rel_dern_sail_at_rib, :operates_in, :dern_sail, :rib
relate :rel_dern_sail_at_sable_crescent, :operates_in, :dern_sail, :sable_crescent
relate :rel_dern_sail_at_seren, :operates_in, :dern_sail, :seren
