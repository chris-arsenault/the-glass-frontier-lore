encyclopedia :ratter_order do
  name "Ratter Order"
  summary "Ratter Order is the unwritten salvage law through which independent Shear crews recognize debts, distress obligations, claim rulings, and the temporary authority of long-rats."
  kind :culture
  subkind :social_order
  status :complete
  log "2026-08-31 — Renamed The Order to Ratter Order; the name identifies the salvage crews whose law the order carries."
  topics :salvage, :navigation, :trade, :"social-structure", :orbital
  prevalence :uncommon
  appears_when all: { place: [:debris_field] }

  prose <<~PROSE
    Ratter Order gives independent #{encyclopedia_ref :ratters, "Ratter"} crews a common standing while each ship keeps its command, claims, and haul. A crew enters a hearing through records other captains can inspect: claim ledgers, crossing charts, witnessed debt, rescue coverage, and the marks of ships that will answer for the account. A long-rat settles the dispute because captains continue to bring that person their business and accept the calls.

    The authority travels with the records. Captains copy a ruling into their own ledgers, carry it to the next port, and decide there whether the call belongs to the same debt, route, or claim. A long-rat's standing grows as those copies circulate and ends when crews begin carrying their charts and disputes elsewhere. Circulating ledgers and repeated acceptance are the full basis of the authority.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Hearings and Route Orders"
    A hearing begins with the work: where the mass crossed, which vessel sounded it, what the cutter record shows, who answered the channel, and who can repeat the debt's terms. The long-rat compares the accounts and states what one crew owes another. Payment may be material from a later claim, a repair berth, a rescue watch, a chart, or another thing equivalent to the original loss in the trade that incurred it.

    Route-local orders accumulate from the same calls. One flotilla may grant first claim to the crew that charted a new mass through a full crossing. Another may require a lamp on abandoned debris or a witness before an open cut. These orders are copied in working ledgers and apply while the crews using that route keep accepting them. Together they form the route-local enactments through which crews apply the broader order.
  PROSE

  prose <<~PROSE, section: :values, heading: "Debt and Distress"
    Two obligations cross flotilla boundaries. Material debt is repaid in kind even when years and several ships separate the loss from payment. Reachable distress is answered by every crew able to turn toward it. The responding vessels log who came, what they abandoned, and what the rescue consumed; those records become the next debts and the evidence for later standing.

    Claim marks, crossing periods, salvage shares, cutting warrants, and abandoned-hazard rules vary by route. Captains can reject one another's local orders and still exchange charts or answer distress together. A crew that walks a witnessed material debt or leaves a reachable distress call unanswered loses access to hearings until other crews accept its account again.
  PROSE

  cue "Crew marks, claim ledgers, and old rescue debts are inspected before anyone asks which written authority applies."
  affordance "A crew with a witnessed debt, a clean crossing record, or an unanswered distress call can demand a hearing, and an accepted ruling travels through copied ledgers to other flotillas and ports."
  pressure "Standing follows the ledgers and witnesses that circulate between ships; when two flotillas stop exchanging records, the same old debt can carry two histories until their crews compare accounts."
  variation "Flotillas disagree over claims and salvage shares; debt paid in kind and aid to reachable distress remain the common boundary."
  cue "Two captains lay crossing charts, cutter records, and copied debt lines before a long-rat; the resulting call enters both ledgers before either ship leaves."
  variation "A long-rat's authority can last one season or several decades, according to how many crews keep copying the calls and bringing back their disputes."
end
