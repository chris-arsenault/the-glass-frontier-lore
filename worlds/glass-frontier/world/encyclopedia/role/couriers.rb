encyclopedia :couriers do
  name "Couriers"
  summary "Couriers are the hand-carry trade of the Kaleidos system, moving small, urgent, or custody-sensitive loads along routes held in one person's working memory."
  kind :role
  subkind :courier
  status :complete
  topics :transport, :trade
  prevalence :common
  available_globally

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

  cue "A courier dresses in close-cut layers for dock cold and drum heat, with current route notes carried where the case never has to be set down."
  cue "The sealed and marked case travels with an exact recitation of every named hand that accepted or delivered it."
  affordance "Hiring a courier buys a current route through local delays and a custody chain for a small, urgent, or sensitive load."
  pressure "A courier will not open a case or accept one whose seal and custody cannot be answered for, and route knowledge decays after even a season away."
  variation "Courier loads include spoiling medicine, urgent replacement parts, short-lived pressure samples, and papers whose custody matters more than weight."
  variation "Each route has its own drums, locks, stairs, households, and counters, and passes to an apprentice who can rebuild it after disruption."

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
end
