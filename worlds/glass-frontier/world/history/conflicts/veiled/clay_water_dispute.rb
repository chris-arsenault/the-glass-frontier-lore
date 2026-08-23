conflict :clay_water_dispute do
  name "The Clay-Water Dispute"
  subkind :dispute
  status :complete
  prominence :marginal
  veiled "Ninth Kiln and the Reed Door each claim first use of the same low-water channel during firing weeks."
end

relate :rel_clay_water_dispute_at_ninth_kiln, :manifests_at, :clay_water_dispute, :ninth_kiln
relate :rel_clay_water_dispute_at_the_reed_door, :manifests_at, :clay_water_dispute, :the_reed_door
