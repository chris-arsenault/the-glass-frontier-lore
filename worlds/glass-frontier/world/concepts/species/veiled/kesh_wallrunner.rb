species :kesh_wallrunner do
  name "Kesh Wallrunner"
  subkind :species
  status :complete
  prominence :marginal
  veiled "Kesh wallrunners store kinetic force in their tails and release it in one straight leap."
end

relate :rel_kesh_wallrunner_at_kesh, :inhabits, :kesh_wallrunner, :kesh
relate :rel_kesh_wallrunner_at_perch, :inhabits, :kesh_wallrunner, :perch
