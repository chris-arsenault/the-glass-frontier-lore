resource :lung_moss do
  name "Lung Moss"
  subkind :biological_material
  status :complete
  prominence :marginal
  veiled "Lung moss traps structural dust and turns bitter before an air shaft begins to buckle."
end

relate :rel_lung_moss_at_lung_three, :sourced_from, :lung_moss, :lung_three
relate :rel_lung_moss_at_kesh, :sourced_from, :lung_moss, :kesh
