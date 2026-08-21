npc :mik_sorn do
  name "Mik Sorn"
  subkind :courier
  occupation "Meal and medical courier"
  route "Rattle, Neighborhood Eight, the cold wards, and Dock Four"
  species "human"
  culture "Hab-Worlder"
  status :complete
  tags :transport, :household, :trade
  prominence :marginal

  prose <<~PROSE
    Mik Sorn carries hot meals and temperature-sensitive medicine from #{ref :exchange_c, "Rattle"} through Carom's eighth neighborhood. His route crosses two transfer drums and ends at Dock Four. When a delay would spoil the load, he rides *Tally* across the outer docks and rebuilds the route from the far frame lock.

    Sorn writes route changes on his left cuff and recipient changes on his right. The habit leaves his coat covered in pale chalk by midday. Apprentices work the same route from his copied marks until they can rebuild it after a missed drum.

    He has taken personal custody of the white case that returned full after four accepted deliveries. Its mark names his regular recipients in the correct daily order.
  PROSE
end
relate :rel_mik_sorn_located_in_carom, :located_in, :mik_sorn, :carom, since: 2435 do
  prose "Mik Sorn carries the medical and hot-meal route through Carom."
end
