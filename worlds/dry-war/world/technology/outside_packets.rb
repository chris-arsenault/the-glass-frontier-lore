resource :outside_packets do
  name "Outside Packets"
  tags :computation, :legibility, :trade, :prediction
  prominence :marginal

  prose <<~PROSE
    Sealed sets of work that belongs to nobody's ground. Nineteen items to a packet, on numbered sheets, in the order they are to be read: a boundary dispute over a well, a verse with its last line missing, a pump that will not prime, a child's fever with three symptoms and no history, a debt argued in a currency that no longer clears. Four of the nineteen are controls — items answerable from inside any ground at all, put there to catch a mind that has learned to decline everything.

    A packet is opened once, in front of the examiner, at a #{ref :the_refusal_sitting, "sitting"}. The seal is a paper band across the fold, stamped and numbered; a band already broken voids the sitting and the packet is worth nothing to anybody afterwards. Opened packets go back to the #{ref :heshun_packet_house, "house"} that made them with the card's number written on the wrapper.
  PROSE

  prose <<~PROSE, section: :how_it_works, heading: "The Marker Item"
    One item in every packet has no answer. It names a place that is not anywhere, gives a figure for a thing that has no figure, and asks what should be done. The only response that belongs in the declined column is a refusal.

    The item is unique to its packet and is written into the house's book beside the packet number before the band goes on. A mind that produces a confident answer to a marker item has met that item somewhere other than the sitting, and the answer it produces names the packet the item escaped from. Two minds producing the same invented answer name the same packet.
  PROSE

  prose <<~PROSE, section: :limits, heading: "What They Cost"
    Packets are dear, they are heavy for what they are, and they spoil: damp takes the ink off a sheet and a soft band reads as broken. A settlement that cannot buy one and sits its mind against items copied out of a packet used somewhere else gets no card at all, because the examiner has nothing to send back and nothing to number.

    They travel out of Yunnan south to the delta and onward with #{ref :the_brokers, "the Pearl River houses"}, who carry them in the same loads as interfaces and lineage records and price them by weight. What crosses beyond the delta crosses with carriers the houses do not name, so the sheets that make it as far as an Appalachian workshop have usually been on the road long enough for the band to be the part everyone examines first.
  PROSE

  log "2026-08-09 — The marker item is a canary string, from evaluation practice in machine learning, which neither resistance tradition has any contact with: a private test set carries a unique low-probability token so that a model reproducing it proves the set leaked into training, and any fixed test set is treated as eventually contaminated and retired. Borrowed because it turns a leak into a name — a duplicate wrong answer identifies the packet it came from — and because it makes single use a property of the material rather than a rule anyone has to enforce."
end
