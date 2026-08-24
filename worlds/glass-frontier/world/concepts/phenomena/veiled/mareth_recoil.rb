phenomenon :mareth_recoil do
  name "Mareth Recoil"
  summary "Mareth Recoil is a brief reversal of corridor pull after a heavy vessel leaves Mareth under load."
  subkind :physical_phenomenon
  status :complete
  prominence :marginal
  veiled "Mareth recoil reverses a loaded corridor's pull for one breath after a heavy vessel departs."
end

relate :rel_mareth_recoil_at_mareth, :manifests_at, :mareth_recoil, :mareth
relate :rel_mareth_recoil_at_kesh, :manifests_at, :mareth_recoil, :kesh
