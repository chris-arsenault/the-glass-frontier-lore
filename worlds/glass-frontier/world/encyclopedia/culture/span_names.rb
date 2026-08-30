encyclopedia :span_names do
  name "Span Names"
  summary "Span Names are signal-work names amended with the last relay their bearer repaired — a working title that updates with each repair and is spoken on the lines in place of any other name. The name is the service record, worn aloud."
  kind :culture
  subkind :expressive_tradition
  status :complete
  topics :"signal-freq", :"social-structure", :training
  prevalence :uncommon
  appears_when all: { place: [:damaged_signal] }

  descriptive_identity(
    manner: "On the lines, span names replace every other form of address — 'Dessa of " \
            "Ninth Bell' outranks any family name until Dessa repairs something else — " \
            "and asking a signal hand their span name is asking, politely, what they " \
            "have done lately.",
    hospitality: "A crew hosting a visiting hand toasts the guest's current span, and " \
                 "the guest's answering toast names the host line's hardest relay — the " \
                 "compliment being that one knows which it was."
  )

  prose <<~PROSE
    On the signal lines, the name is the service record. A span name joins the bearer's given name to the last relay they brought back — Dessa of Ninth Bell, Corun of the Far Bell Repeater — and it updates with the work: repair a harder relay and the name moves, the old span passing into the recitation that trails a long career like a wake. Line crews use span names to the exclusion of everything else on working channels, and the custom's practical spine shows through the ceremony — on a folded burst or a flood-thinned line, a span name carries the bearer's competence inside the address, and the receiving station knows what the sender's word on a fault is worth before the fault is described.

    The amendments are witnessed like anything the lines take seriously. A repair claims a span when the relay holds through its next scheduled tide, at which point the crew speaks the new name aloud at shift-end — the naming, a small fixed ceremony with a long toast tradition attached — and the line's log carries the amendment beside the repair record. Recitation custom scales with occasion: daily work uses the current span alone, formal introductions add the two or three proudest, and a funeral on the lines recites the whole chain, every relay in order, the trade's plain biography format. The old hands' joke about it holds the culture's actual values: the recitation tells you where someone has been, and the current span tells you whether to lend them your tools.
  PROSE

  cue "The shift-end circle raises cups while a crew member's new name is spoken aloud — given name, then the relay that now trails it — and the line log is signed under the toast."
  cue "Two strangers on a working channel exchange span names before anything else, and both sides' tone adjusts to what the names carry."
  affordance "A span name is a portable, verifiable competence claim — the address itself tells a receiving station what the sender's word on a fault is worth, and the log-backed amendments make the claim checkable down any line."
  pressure "The name updates on the work and on nothing else, so a hand in a quiet posting watches their span age in public — and the temptation to claim a shared repair alone is fenced by crews who were all present at the naming."
  variation "Trunk-line crews amend only on relays above a class threshold and wear their names for years; branch lines amend freely, and the two traditions rank each other's spans with cordial contempt."
  variation "Funerals on the lines recite the full chain of a career's spans in order, and the long recitations of the Famine-era repair generations are performed at trade gatherings as the closest thing the lines have to an epic."
end
