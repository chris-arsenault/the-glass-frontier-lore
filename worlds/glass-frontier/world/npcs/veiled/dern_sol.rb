npc :dern_sol do
  name "Dern Sol"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Dern Sol services survey shelters in Holl, Kyther Range, Lithren, and Mareth during one long maintenance circuit."
end

relate :rel_dern_sol_at_holl, :operates_in, :dern_sol, :holl
relate :rel_dern_sol_at_kyther_range, :operates_in, :dern_sol, :kyther_range
relate :rel_dern_sol_at_lithren, :operates_in, :dern_sol, :lithren
relate :rel_dern_sol_at_mareth, :operates_in, :dern_sol, :mareth
