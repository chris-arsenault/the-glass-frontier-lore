culture :kesh_challenge_names do
  name "Kesh Challenge Names"
  summary "Kesh Challenge Names are working names earned by completing a kinetic trial without assistance and used to record the bearer's latest such feat."
  subkind :naming_practice
  status :complete
  prominence :marginal
  veiled "A Kesh challenge name records the last kinetic trial its bearer completed without assistance."
end

relate :rel_kesh_challenge_names_at_kesh, :manifests_at, :kesh_challenge_names, :kesh
relate :rel_kesh_challenge_names_at_mareth, :manifests_at, :kesh_challenge_names, :mareth
