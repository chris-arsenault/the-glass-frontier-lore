artifact :the_sort_book do
  name "The Sort Book"
  tags :trade, :legibility, :governance
  prominence :forgotten

  prose <<~PROSE
    A quarto book on the shelf beside the fee trays in the case room at #{ref :yumen_gate, "Yumen Gate"}. On the first working day of each month, before the month's tray is locked, an inspector inks every sort in the station's fount and pulls one impression of each onto a dated page. Both key holders initial the page. #{ref :ma_renqing, "Ma Renqing"} pulls the impressions herself when she is on shift.

    Forty-one sorts: the ten figures, the fraction rule, the measure characters, and the words that appear on every line of #{ref :the_gate_schedule, "the schedule"}.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Reading The Wear"
    The book records the type rather than the fees. The 4 lost the corner of its foot in 2083 and has printed short on the left since. The 7 has carried a filled counter since a cleaning with the wrong spirit. Three of the measure characters came from a replacement sort and stand a hair high, so they bruise the paper where the others only ink it.

    A certificate produced against a tray line is matched to the month's page character by character. The #{ref :the_letter_match, "match"} settles the question the tray cannot: whether the line in front of both parties was set at this station at all.
  PROSE

  prose <<~PROSE, section: :limits, heading: "Three Founts"
    The station has worked three founts, laid in 2071, 2079 and 2086. They are cast to order and come up on the Delta run with the rest of the station's hardware. #{ref :the_brokers, "The houses that cast them"} fill each order from the sorts in their trays and do not number the shipment. A new fount arrives with no wear at all, so a page from its first month distinguishes nothing, and the book's early pages match sorts that no longer exist.

    A certificate older than 2086 can therefore be matched to a page and never to a tray. The book is kept inside the case room's two-key lock with the trays and the balance, and a fair copy of the year's pages goes down to Jiayuguan each spring.
  PROSE
end
