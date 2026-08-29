resource :kesh_lung_moss_bed do
  name "The Kesh Lung-Moss Bed"
  summary "The Kesh Lung-Moss Bed is living filter material sourced from Lung Three and Kesh. It traps structural dust and turns bitter before an air shaft begins to buckle."
  subkind :biological_material
  type_of :lung_moss
  status :complete
  prominence :marginal
  veiled "The Kesh Lung-Moss Bed traps structural dust and turns bitter before an air shaft begins to buckle."
end

relate :rel_lung_moss_at_lung_three, :sourced_from, :kesh_lung_moss_bed, :lung_three
relate :rel_lung_moss_at_kesh, :sourced_from, :kesh_lung_moss_bed, :kesh
