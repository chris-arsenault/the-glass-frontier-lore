npc :pell_rusk do
  name "Pell Rusk"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Pell Rusk repairs heat and pressure carts in Pelhari, Pell Cut, Perch, and Pyre."
end

relate :rel_pell_rusk_at_pelhari, :operates_in, :pell_rusk, :pelhari
relate :rel_pell_rusk_at_pell_cut, :operates_in, :pell_rusk, :pell_cut
relate :rel_pell_rusk_at_perch, :operates_in, :pell_rusk, :perch
relate :rel_pell_rusk_at_pyre, :operates_in, :pell_rusk, :pyre
