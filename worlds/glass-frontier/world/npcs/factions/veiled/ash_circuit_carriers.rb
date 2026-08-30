faction :ash_circuit_carriers do
  name "Ash Circuit Carriers"
  summary "Ash Circuit Carriers is a freight company that moves hot ore between Crucible and Ashvane in linked pods."
  subkind :company
  type_of :commercial_standing
  status :complete
  prominence :marginal
  veiled "Ash Circuit Carriers move hot ore in linked pods whose owners share every loss along the route."
end

relate :rel_ash_circuit_carriers_at_crucible, :operates_in, :ash_circuit_carriers, :crucible
relate :rel_ash_circuit_carriers_at_ashvane, :operates_in, :ash_circuit_carriers, :ashvane
relate :rel_ash_circuit_carriers_at_shadewell, :operates_in, :ash_circuit_carriers, :shadewell
relate :rel_ash_circuit_carriers_at_coldside_bench, :operates_in, :ash_circuit_carriers, :coldside_bench
