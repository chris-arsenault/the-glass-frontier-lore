npc :ashenmaw_afterimage_watcher do
  name "The Ashenmaw Afterimage Watcher"
  summary "The Ashenmaw Afterimage Watcher retains the safe outline of moving debris for several breaths after it vanishes."
  type_of :specialist_practitioner
  belongs_to :ability, :fracture_afterimage
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Ashenmaw Afterimage Watcher retains the safe outline of moving debris for several breaths after it vanishes."
end

relate :rel_fracture_afterimage_at_the_fracture, :manifests_at, :ashenmaw_afterimage_watcher, :the_fracture
relate :rel_fracture_afterimage_at_ashenmaw, :manifests_at, :ashenmaw_afterimage_watcher, :ashenmaw
