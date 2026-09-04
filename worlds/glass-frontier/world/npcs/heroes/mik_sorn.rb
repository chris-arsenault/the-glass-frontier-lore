npc :mik_sorn do
  name "Mik Sorn"
  summary "Mik Sorn is a meal and medical courier serving Rattle and Carom's eighth neighborhood."
  subkind :courier
  occupation "Meal and medical courier"
  route "Rattle, Neighborhood Eight, the cold wards, and Dock Four"
  type_of :humans
  belongs_to :culture, :hab_worlder
  belongs_to :role, :keeper_of_roads
  descriptive_identity attire:
    "Sorn's coat carries the route in chalk — changes on the left cuff, " \
    "recipients on the right — smeared pale by midday and gone by the next " \
    "wash."
  descriptive_identity disposition:
    "Sorn reads a delivery question off his own cuffs, left for route " \
    "changes and right for recipients. The white case stays in his " \
    "personal custody because its mark lists the people he brings " \
    "medicine to."
  status :complete
  tags :transport, :household, :trade
  prominence :marginal

  prose <<~PROSE
    Mik Sorn carries hot meals and temperature-sensitive medicine from #{ref :rattle, "Rattle"} through Carom's eighth neighborhood. His route crosses two transfer drums and ends at Dock Four. When a delay would spoil the load, he rides *Tally* across the outer docks and rebuilds the route from the far frame lock.

    Sorn writes route changes on his left cuff and recipient changes on his right. The habit leaves his coat covered in pale chalk by midday. Apprentices work the same route from his copied marks until they can rebuild it after a missed drum.

    He has taken personal custody of the white case that returned full after four accepted deliveries. Its mark names his regular recipients in the correct daily order.
  PROSE

  gm_note :triggered_by, "Ask Sorn about any delivery and he reads it off his coat: route changes chalked on the left cuff, recipient changes on the right, both smeared pale by midday and gone by the next wash."
  gm_note :complicates, "He is carrying the white case himself now, and its mark lists his regular recipients in their correct daily order, so a player asking for a look at it is asking a courier to hand over the names of people he brings medicine to."
  gm_note :appears, "Apprentices run his route off copied cuff marks until they can rebuild it after a missed drum, so the courier arriving with the hot meals and the cold-ward medicine is often someone working from Sorn's handwriting instead of Sorn."
end
relate :rel_mik_sorn_located_in_carom, :located_in, :mik_sorn, :carom, since: 2435 do
  prose "Mik Sorn carries the medical and hot-meal route through Carom."
end
