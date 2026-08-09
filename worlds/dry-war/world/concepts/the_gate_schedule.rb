concept :the_gate_schedule do
  name "The Gate Schedule"
  tags :trade, :governance, :legibility
  prominence :recognized

  prose <<~PROSE
    The posted fee list at a #{ref :the_gatekeepers, "Gatekeeper"} crossing, set in metal type and printed monthly. Every fee the station can charge appears on it: the plate read, the scraping read, the drying-shed hour, clinic days, lineage audit, certificate, and the surcharge for a westbound crossing inside two days of a convoy column.

    It is the only document at #{ref :yumen_gate, "Yumen Gate"} that both the connected and unconnected worlds treat as binding, and it is binding because it is physical.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "How A Fee Changes"
    Each line is a separate slug of type in a shallow tray. Changing one fee means lifting one line and setting another, and the lifted line goes into the back of the tray with the date it came out.

    A fee dispute is therefore settled by opening the tray. The traveller's certificate carries the month, the month's lines are in the tray in order, and the argument takes as long as it takes to read them. Neither party has to trust a record either of them keeps.

    The harder dispute is not the amount but the line: a traveller who says the figure on their certificate was never set at this station. That one is settled by #{ref :the_letter_match, "the letters"}. The station's type wears, unevenly and traceably, and #{ref :the_sort_book, "the sort book"} on the shelf beside the trays carries a dated impression of every sort in the fount for every month it has been in service. A certificate is matched to a page character by character.
  PROSE

  prose <<~PROSE, section: :economy, heading: "What It Prices"
    Time, mostly. The plate read is cheap and the scraping read is four times the plate; the drying-shed hour is nominal and the clinic day is not; the convoy surcharge is set high enough that most travellers arrive three days early and the intake hall has a permanent trade in beds and food that the station does not tax.

    The lineage audit is priced per generation of documented ancestry rather than per strain, which is the fee the #{ref :the_preservationists, "Preservationists"} complain about hardest, since their seventy-year lineages cost more to certify than a #{ref :the_brokers, "Pearl River"} strain three seasons old.
  PROSE

  log "The schedule is set in metal type because a fee has to be arguable by two parties who share no network and no trusted record. The tray of dated, lifted lines is the audit trail. This is the general Gatekeeper pattern — authority that rests on an object both sides can hold — and it should hold for anything else they certify."
end
