npc :davan_koralis do
  name "Davan Koralis"
  summary "Davan Koralis is Vantara's Chief Experience Officer, a company leader trained in passenger operations and convoy service."
  subkind :leader
  born 2388
  occupation "Chief Experience Officer of Vantara"
  species "human"
  culture "Sithari"
  tags :trade, :transport, :governance, :salvage
  prominence :recognized
  status :complete

  prose <<~PROSE
    Davan Koralis leads #{ref :vantara, "Vantara"} under the title Chief Experience Officer. He treats a delayed meal, a failed berth light, and a missed rescue window as parts of the same journey. Vantara crews know him for inspections that begin in passenger cabins and end in maintenance spaces, with each fault assigned to a named manager before he leaves.

    Koralis rose through the Keelward passenger office and the convoy service rather than finance. He can read a route ledger and has served aboard armed escorts, but he measures the company through whether travelers arrive rested and whether crews return on schedule. The title predates his promotion; he made it the chief office when he took command in 2428.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Koralis is traveling between ports to sell Vantara's proposed passenger cruises through the broad, slow-moving reaches of #{ref :the_shear, "the Shear"}. The ships are converted survey carriers with structural arrays visible through the dining-deck walls. Each public stop includes a rescue drill and a meeting with local pilots.

    The #{ref :shear_compact, "Shear Compact"} has certified the first hull and has not approved a regular passenger route. Koralis is taking refundable reservations while Vantara and the Compact argue over how quickly a scenic segment can be closed after a drift forecast changes. He will not announce a departure date without approval, and he will not stop advertising the service while approval remains possible.
  PROSE

  gm_note :appears, "Every port Koralis calls at gets a rescue drill and an open meeting for local pilots attached to the visit, so anyone working that harbor is invited into both before it becomes clear #{ref :vantara, "Vantara"} is selling a route."
  gm_note :triggered_by, "Mention a fault to him — a cold meal, a dead berth light, a rescue window missed — and it is written against a named Vantara manager before he leaves the room, whether or not the complaint was meant to travel that far."
  gm_note :complicates, "He takes refundable reservations for a Shear passenger route the #{ref :shear_compact, "Compact"} has not approved, names no departure date, and keeps advertising, which sends ticketholders to ask Shear crews and pilots when the ships actually sail."
end

relate :rel_davan_koralis_leads_vantara, :leads, :davan_koralis, :vantara, since: 2428 do
  prose "Koralis became Vantara's Chief Experience Officer in 2428 and made the title the company's chief executive office."
end
relate :rel_davan_koralis_located_keelward, :located_in, :davan_koralis, :keelward, since: 2410 do
  prose "His permanent office is above Vantara's passenger halls at Keelward, where he began as a route clerk."
end
relate :rel_davan_koralis_member_vantara, :member_of, :davan_koralis, :vantara, since: 2410 do
  prose "His career has run through Vantara's passenger office, convoy service, and executive command."
end
relate :rel_davan_koralis_operates_shear, :operates_in, :davan_koralis, :the_shear, since: 2435 do
  prose "He is visiting Shear ports and trial segments while the Compact considers Vantara's passenger-route proposal."
end
