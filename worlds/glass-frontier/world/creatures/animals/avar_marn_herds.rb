creature :avar_marn_herds do
  name "The Avar Marn Herds"
  summary "The Avar Marn Herds are the domesticated marn populations moved among Avar's seasonal wells, ridge shelters, farms, and Ladderwell market. Household marks and breeding obligations connect the herds across the steppe."
  subkind :animal
  type_of :marn
  status :complete
  tags :surface, :ecology, :trade, :resonance
  prominence :recognized

  prose <<~PROSE
    Herding families move #{encyclopedia_ref :marn, "marn"} between ridge shelter and open grass as water and road conditions change across #{ref :avar, "Avar"}. A family may keep a few animals beside a farm or move several hundred between seasonal camps. Public well orders name livestock basins explicitly, and herd allotments shift to outlying shafts during shortages.

    Ownership marks identify a household and season on horn sheaths that shed as the animal matures. Breeding loans, wool, young stock, and future water access create obligations that travel between wells and can outlast the animals that created them. #{ref :ladderwell, "Ladderwell"} receives the largest exchange of herds, wool, pack traffic, and machinery on the eastern steppe.
  PROSE

  gm_note :appears, "A market or wayhouse pen holds several household herds whose marks, water allotments, and next stops all differ, even when the animals will travel together."
  gm_note :triggered_by, "A whole herd refusing the same ground moves the caravan; route keepers still require an instrument survey before they change the road's status."
  gm_note :complicates, "Breeding loans and water access travel with the herds, so returning one lost animal can reopen an obligation between households at different wells."
end

relate :rel_avar_marn_herds_inhabit_avar, :inhabits, :avar_marn_herds, :avar do
  prose "Domestic marn herds graze across Avar between seasonal wells and ridge shelters."
end
relate :rel_avar_marn_herds_inhabit_ladderwell, :inhabits, :avar_marn_herds, :ladderwell do
  prose "Ladderwell's lower yards receive pack animals, wool herds, and livestock traders from the eastern steppe."
end
