artifact :the_bound_roots do
  name "The Bound Roots"
  summary "The Bound Roots are Olven's cool-chamber cultivation of velin-bound plants, closed from sale after one test cut made every root contract and silenced three control grafts."
  subkind :artifact
  type_of :velin
  status :complete
  tags :ecology, :materials, :trade, :resonance
  prominence :marginal

  descriptive_identity(
    appearance: "Living roots bound cleanly in a fast-growing pale velin form that follows condensation lines through Olven's cool chambers.",
    handling: "The affected plants remain healthy and carry sensation through their outer bark; Olven has assigned them an empty cultivation chamber and a separate market stall.",
    risks: "One test cut made every root contract at once and silenced sensation in three control grafts across the transfer room, leaving clinic buyers and root keepers opposed over the first harvest."
  )

  prose <<~PROSE
    A fast-growing velin form has appeared in the cool root chambers beyond its transfer room. It follows condensation lines along walls and binds cleanly to the roots stored there. The affected plants remain healthy and carry sensation when growers touch their outer bark.

    Olven has opened a separate market stall for the bound roots and assigned one empty chamber to their cultivation. Buyers from surface clinics and ship gardens have placed orders before the first harvest.

    The first test cut made every bound root in the chamber contract at once and silenced sensation in three control grafts across the transfer room. Growers closed the stall with the orders still posted. Root keepers want the cool stock separated intact; clinic buyers have offered to fund a destructive harvest if Olven releases the complete lineage record with it.
  PROSE

  gm_note :triggered_by, "Touching or cutting one bound root gets an answer from every other root in the chamber; one test cut silenced sensation in three control grafts across the transfer room."
  gm_note :complicates, "The stall is shut with its orders still posted. Root keepers want the cool stock moved out whole; clinic buyers will fund a destructive harvest if Olven releases the full lineage record with it."
end

relate :rel_the_bound_roots_located_in_olven, :located_in, :the_bound_roots, :olven do
  prose "Olven keeps the bound roots in an empty cool chamber with their market stall closed."
end

relate :rel_nara_pell_studies_the_bound_roots, :studies, :nara_pell, :the_bound_roots, since: 2435 do
  prose "Nara Pell compares the bound roots' velin lineage against the reserve cultures held at Seren."
end
