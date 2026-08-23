concept :shared_gravity do
  name "Shared Gravity"
  subkind :physical_system
  status :complete
  prominence :marginal
  veiled "Shared Gravity links four habs that trade counterweight schedules so cargo arrives under the force it was packed for."
end

relate :rel_shared_gravity_at_mareth, :manifests_at, :shared_gravity, :mareth
relate :rel_shared_gravity_at_holl, :manifests_at, :shared_gravity, :holl
relate :rel_shared_gravity_at_eleven, :manifests_at, :shared_gravity, :eleven
relate :rel_shared_gravity_at_vey, :manifests_at, :shared_gravity, :vey
