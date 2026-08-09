concept :the_engagement_allotment do
  name "The Engagement Allotment"
  aka "an allotment note"
  tags :trade, :identity, :autonomy, :prediction

  prominence :marginal

  prose <<~PROSE
    A term written into a work contract before the work starts, under which the buyer pays a stated fraction of the price to one named person who is not the worker. #{ref :market, "Market"} accepts it because it is not an assignment: the allottee's entitlement is created with the contract rather than carved out of a completed claim, so #{ref :the_named_payee_rule, "the Named Payee Rule"} has nothing to void and no dependent's support is being sold.

    The class of allottee is closed. A note may name a registered parent, grandparent, sibling or child of the worker, resident at a standing address, with the relationship appearing in a record Market can query. The fraction is capped at two-fifths. A note signed after the work has been accepted is void, a buyer may not advance money against one, and claiming a relationship one does not hold is the only part of the procedure Market prosecutes rather than merely refuses.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Filed Before The Crew Goes On"
    The note is filed at an engagement counter — most of them, in the corridor, at #{ref :conowingo_engagement_counter, "Conowingo"} — and the clerk's stamp carries the hour, because a note and a crew cannot both be on the same side of the same minute.

    The counter queries the allottee's record and not the worker's. On acceptance the buyer funds the whole price into #{ref :claim_escrow, "escrow"}, the allotted fraction leaves reserve on the counter's ordinary payment days, and the remainder waits for an identity record entitled to it. For a worker who will not have one, the remainder does not lapse and does not return to the buyer. It stands.

    A note is good for one engagement. It comes back to the window when the crew comes off, is stamped surrendered, and is shelved for a year against a later query.
  PROSE

  prose <<~PROSE, section: :limits, heading: "What A Note Costs A Travelling Group"
    A note names one person, at one address, paid on fixed days. A group that files one has produced a standing address and a rhythm, and #{ref :the_pilgrims, "Pilgrim"} practice treats both as the thing a travelling group exists in order not to have. #{ref :the_priced_return, "The Priced Return"} is the season that settled how the culture handles it.

    Some groups file nothing and leave the whole price standing, which produces the same object the #{ref :the_unpersons, "Unpersons"} accumulate in the BosWash files — a completion record proving work was done and paid for, against no account that can receive it.

    Market's models enter an unfiled remainder as wages earned and not collected, and read a season on the corridor as a wage-earning population with an unusually poor collection rate. Groups that have discussed the classification say the money was never theirs to be counted in the first place.
  PROSE

  log "2026-08-09 — The instrument is the merchant seaman's allotment note: a written direction, signed at the engagement and not afterwards, paying part of a wage to a person ashore drawn from a closed class of relatives, with wages otherwise unassignable and a penalty for falsely claiming to qualify as an allottee. The closed class is what makes it survive Market's rule against assignment — a relative cannot be a purchaser of the claim."
end
