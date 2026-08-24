phenomenon :korvath_groundsong do
  name "Korvath Groundsong"
  summary "Korvath Groundsong is a vibration that travels through river mud and turns suspended kiln loads toward its source."
  subkind :physical_phenomenon
  status :complete
  prominence :marginal
  veiled "Korvath groundsinging travels through river mud and makes suspended kiln loads rotate toward the source."
end

relate :rel_korvath_groundsong_at_korvath, :manifests_at, :korvath_groundsong, :korvath
relate :rel_korvath_groundsong_at_dovra, :manifests_at, :korvath_groundsong, :dovra
relate :rel_korvath_groundsong_at_ninth_kiln, :manifests_at, :korvath_groundsong, :ninth_kiln
relate :rel_korvath_groundsong_at_the_reed_door, :manifests_at, :korvath_groundsong, :the_reed_door
