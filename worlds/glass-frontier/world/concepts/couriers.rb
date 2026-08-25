concept :couriers do
  name "Couriers"
  summary "Couriers are the hand-carry trade of the Kaleidos system, moving small, urgent, or custody-sensitive loads along routes held in one person's working memory."
  subkind :practice
  status :complete
  tags :transport, :trade
  prominence :recognized

  descriptive_identity(
    attire:
      "Dressed for transitions — layered against dock cold and drum heat, " \
      "cut close so nothing catches at a lock, with the route's working " \
      "notes carried somewhere on the body where a case cannot be set down.",
    tools:
      "The case is the standing: sealed, marked, and answered for from hand " \
      "to hand. A courier's record of accepted deliveries is the " \
      "introduction, and a case that comes back unopened is accounted for " \
      "to the sender in person.",
    manner:
      "Exact about custody — who handed what to whom, and when — and " \
      "restless about time held still. A courier reroutes rather than " \
      "waits, and can say which drum, lock, or landing a delay lives in."
  )

  prose <<~PROSE
    Freight moves on schedules; couriers move what cannot wait for one. Medicine that spoils, a replacement part a settlement is down without, pressure samples that lose their value in a day, papers whose chain of custody matters more than their weight — anything small enough to carry and urgent enough to pay for travels by hand. The trade exists wherever the #{ref :keel, "Keel"}'s manifests and the local freight yards leave a gap, which is everywhere.

    The unit of the trade is the route, not the run. A courier holds a route the way other trades hold a workshop: the transfer drums and their timings, the locks that stick, the stairs that beat the lift when the docks are crowded, the households and counters at either end. Route knowledge is personal and perishable. A courier who has been away a season walks their route before they carry on it again.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Custody"
    What separates a courier from anyone with fast legs is the custody habit. Every load is accepted from a named hand and delivered to a named hand, and the courier can recite the chain afterward without notes. Payment disputes, spoiled loads, and lost cases are settled against that recitation, so a courier's memory for handoffs is examined the way another trade's ledger would be.

    The case itself is sealed by the sender and opened by the recipient. A courier who opens a case has left the trade, whatever else happens next. Cases carry marks — sender, service, sometimes the run — and an experienced dock hand reads a courier's case the way they read a ship's registry.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Routes and Apprentices"
    Routes pass by copying. An apprentice works a route from the holder's marks and timings until they can rebuild it after a missed drum or a closed lock — the test is recovery, not repetition, since no route survives a season unchanged. A courier who retires hands the route to the apprentice who can rebuild it, and the households along the way learn a new face carrying the same custody habits.

    There is no guild. Standing is local: the counters, wards, and dock offices along a route know their courier, and a stranger claiming the route is asked about its details by people who walk it daily. Between settlements the trade runs on the same verification — a courier arriving at #{ref :keelward, "Keelward"} with a case from the ring is asked who handed it over, and the answer is checked.
  PROSE

  gm_note :appears, "Anything the players need moved fast, cold, quiet, or provably untouched goes by courier, and the courier who takes it will recite every hand it passes through afterward. Hiring one buys the custody chain, not just the speed."
  gm_note :triggered_by, "Ask a courier to open the case they are carrying and the conversation is over; ask them to carry something unsealed and they seal it in front of the sender first, because a case they cannot answer for is a case they will not take."
  gm_note :complicates, "A courier's route knowledge is current in a way no chart is — which drum runs late, which lock sticks, which ward is closed — so a party moving through a hab is faster following its courier and conspicuous the moment they interfere with one."
end

relate :rel_couriers_manifest_at_tgf, :manifests_at, :couriers, :the_glass_frontier do
  prose "The trade is densest in the ring habs, where transfer drums, locks, and dock schedules make a held route worth paying for."
end
relate :rel_couriers_manifest_at_keelward, :manifests_at, :couriers, :keelward do
  prose "Keelward's terminals are where ring routes meet surface ones, and cases change hands between couriers who will never see each other's ground."
end
relate :rel_couriers_depend_on_keel, :depends_on, :couriers, :keel do
  prose "Long-distance runs ride the #{ref :keel, "Keel"} between settlements; the courier's own work begins where its manifests end."
end
