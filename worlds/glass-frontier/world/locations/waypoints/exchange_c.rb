installation :exchange_c do
  name "Rattle"
  summary "Rattle is Carom's largest sorting deck, where six marked routes distribute cargo and passengers from a Ring Age transfer drum."
  playable_as :chronicle_location
  aka "Exchange C"
  subkind :station
  status :complete
  tags :"ring-hab", :transport, :trade, :household
  prominence :marginal
  omit_facts :maintained_by

  prose <<~PROSE
    Rattle is Carom's largest sorting deck. Exchange C remains painted above the main doors from the Ring Age transfer drum, but couriers named the deck for the frame wheels striking its expansion gaps. Six floor colors radiate from the unloading lane toward neighborhood tables, cold lockers, meal racks, and the drum queue.

    The exchange stays loud through every alignment. Frame wheels strike gaps in the deck. Drum bells announce five minutes, two minutes, and closure. Couriers call route changes across the colored bands while residents wait behind the outer rail for hand delivery.

    The correction wall covers the passage to the cold lockers. Its oldest surviving card records a parcel that crossed all three segments nineteen times before reaching a room beside the exchange where it began.
  PROSE

  log "2026-08-21 — Made the courier name Rattle primary while retaining the Ring Age designation Exchange C."

  gm_note :complicates, "Frame wheels over the expansion gaps, drum bells at five minutes, two minutes and closure, and couriers calling changes across the colored bands mean any conversation on the deck is shouted or moved into the cold-locker passage."
  gm_note :appears, "Residents waiting for hand delivery stand along the outer rail with nothing to do but watch the unloading lane, which makes them witnesses to whatever happens in the six colored bands."
  gm_note :triggered_by, "Asking after a parcel that went astray gets a party sent to the correction wall, whose oldest surviving card follows one across all three segments nineteen times to a room beside the exchange it started in."
end
relate :rel_exchange_c_located_in_carom, :located_in, :exchange_c, :carom, since: 2435 do
  prose "Rattle sorts Carom's busiest drum traffic and most off-hab deliveries."
end
