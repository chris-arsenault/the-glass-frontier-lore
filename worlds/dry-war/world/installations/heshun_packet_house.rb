installation :heshun_packet_house do
  name "The Heshun Packet House"
  tags :computation, :locality, :trade, :legibility
  prominence :marginal

  prose <<~PROSE
    Four rooms of the old village library at Heshun, west of Tengchong in #{ref :yunnan, "Yunnan"}, where the shelving was cleared in 2069 and the reading tables kept. The house writes items, packs and bands #{ref :outside_packets, "packets"}, numbers them, and keeps the book that says where each one went and whether it came back.

    It keeps no mind and consults none. That is the condition of its trade rather than a scruple: an examiner's independence rests on the material, and a house that owned a bounded mind would be selling questions it had an interest in the answers to.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Payment In Items"
    A settlement may pay in work instead of coin. It sends the house a problem its own mind could not touch — a case, a dispute, a fault, a text — with what actually happened written on a separate sheet, and the house credits it against packets. Most of what the house sells came in that way, which is how four rooms of writers hold material from trades none of them practise.

    An item is used in one packet and never again. The writers hold that a good item is one the settlement that sent it in would not recognize, so submitted work is rewritten, moved into another climate and another currency, and the sheet naming the original is filed separately from the item it produced.
  PROSE

  prose <<~PROSE, section: :limits, heading: "The Book"
    Four columns to a packet: the number, the hour the band was stamped, the carrier's counterfoil, and the day it came back opened with a card number on the wrapper. A packet that does not come back stands open in the book, and the house will not write a second item out of a standing-open packet's material or reuse its marker.

    Sales are against returns. A carrier who brings nothing back gets nothing new, whatever they offer, which is why #{ref :the_brokers, "the delta houses"} buy in blocks and pay a premium for the wrappers on the return leg. Two hundred and forty packets left Heshun last season and a hundred and ninety-one wrappers came back.
  PROSE

  log "2026-08-09 — Housed in a village subscription library of the kind the overseas-remittance towns west of Tengchong built for themselves, funded by families trading out of the country and run by a committee that catalogued and lent rather than published. That decided what the house is: rooms of writers and a numbering book, paid partly in material sent home by people who had gone away."
end
