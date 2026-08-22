npc :dern_pyre do
  name "Dern Pyre"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Dern Pyre repairs heatproof webbing in Pyre, Ravel, Rib, and Sable Crescent."
end

relate :rel_dern_pyre_at_pyre, :operates_in, :dern_pyre, :pyre
relate :rel_dern_pyre_at_ravel, :operates_in, :dern_pyre, :ravel
relate :rel_dern_pyre_at_rib, :operates_in, :dern_pyre, :rib
relate :rel_dern_pyre_at_sable_crescent, :operates_in, :dern_pyre, :sable_crescent
