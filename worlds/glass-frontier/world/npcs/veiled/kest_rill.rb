npc :kest_rill do
  name "Kest Rill"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Kest Rill carries sailcloth, furnace felt, and brace webbing among Perch, Pyre, Ravel, and Rib."
end

relate :rel_kest_rill_at_perch, :operates_in, :kest_rill, :perch
relate :rel_kest_rill_at_pyre, :operates_in, :kest_rill, :pyre
relate :rel_kest_rill_at_ravel, :operates_in, :kest_rill, :ravel
relate :rel_kest_rill_at_rib, :operates_in, :kest_rill, :rib
