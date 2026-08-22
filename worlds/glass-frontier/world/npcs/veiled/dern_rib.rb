npc :dern_rib do
  name "Dern Rib"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Dern Rib sorts structural bolts in Rib and Noll by the pitch each head returns under a tap."
end

relate :rel_dern_rib_at_rib, :operates_in, :dern_rib, :rib
relate :rel_dern_rib_at_noll, :operates_in, :dern_rib, :noll
