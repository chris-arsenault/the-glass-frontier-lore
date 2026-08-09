artifact :the_thorong_book do
  name "The Thorong Book"
  tags :water, :ecology, :legibility, :biotech
  prominence :marginal

  prose <<~PROSE
    A stitched ledger on the stone bench at #{ref :thorong_cold_house, "the Thorong cold house"}, behind a hasp and a stone at 5,400 metres, wintering where it is written. Forty-one sets read, nine abandoned, one line each.

    Everything above the pass and a good deal below it rests on this book, and there is one copy of it.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "One Line To A Set"
    A line carries the year, what went up, whose it was, the case-lid drawing folded in against it, the carrier's name, the melt date and the hour the case was opened, and the reading: ten organism tubes, five withheld, five blanks, growth or clean in each. An abandoned set gets the same line with the reading left empty and the shelter named.

    The reference line is written first each melt and sits at the head of the year — the #{ref :gate_moss, "gate-moss"} set, read the same morning, against which that winter is severe or mild. A year's other lines are read with it or not read at all, and a #{ref :the_season_credit, "credit"} computed off a line without its reference line above it is not a credit.
  PROSE

  prose <<~PROSE, section: :limits, heading: "Why There Is Only One"
    Nobody has proposed a duplicate that survived the objection to it: a second copy is written somewhere warm, by somebody who was not at the opening, off a line already written. The house's whole claim is that the reading and the writing happen in the same hour in the same cold room.

    So the book is exposed in a way nothing else in the practice is. It has been carried down twice for rebinding and carried back up, both times in the melt push, and both times the carry went as a set does — one push through the night, no shelter, and if it had been abandoned the practice would have gone with it.

    Extracts are given out by hand, one line at a time, and only the reference lines go out whole. The other lines name parties, and #{ref :the_catchment_list, "a list"} that carries a party's name on its cover for a term is enough of that. What a #{ref :the_gatekeepers, "Gatekeeper"} clerk gets for the carry fee is the reference figure for the year and the ratio for the class, in a hand copy, unsigned.
  PROSE

  log "2026-08-09 — The reference line at the head of each year is the exposure-site control specimen: the site's severity is not constant, so results are only comparable against a control run in the same cycle, and a result without its control is uninterpretable. That decided the book's structure and its single-copy rule — the value is the co-located reading, which a transcription made elsewhere destroys."
end
