incident :kesh_mareth_recoil do
  name "Kesh Mareth Recoil"
  summary "Kesh Mareth Recoil is a brief reversal of corridor pull after a heavy vessel leaves Mareth under load."
  type_of :mareth_recoil
  subkind :incident
  status :complete
  prominence :marginal
  veiled "Kesh Mareth Recoil is a brief reversal of corridor pull after a heavy vessel leaves Mareth under load."
end
relate :rel_mareth_recoil_at_mareth, :manifests_at, :kesh_mareth_recoil, :mareth
relate :rel_mareth_recoil_at_kesh, :manifests_at, :kesh_mareth_recoil, :kesh
