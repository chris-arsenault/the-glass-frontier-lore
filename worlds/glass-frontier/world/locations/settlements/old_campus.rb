installation :old_campus do
  name "Old Campus"
  subkind :settlement
  population 110_000
  population_band "About one hundred ten thousand residents within the central wards"
  role "Sithari's civic, academic and administrative center"
  setting "The surviving ring-era research complex at the center of modern Sithari"
  access "City rail, pedestrian streets and controlled service descents into the Underlayers"
  tags :surface, :governance, :archives, :resonance, :"ring-era"
  prominence :recognized

  prose <<~PROSE
    The Old Campus is the surviving ring-era complex around which #{ref :sithari, "Sithari"} formed. Its hardened workshops and laboratories held power through the #{ref :the_glassfall, "Glassfall"}; its stores and walls sheltered the first post-Glassfall settlement. The modern district contains government offices, courts, colleges, archives, clinics, apartment courts, and public rooms fitted into structures built for purposes their current occupants only partly understand.

    "Old Campus" began as a practical distinction between the intact complex and the shelters beyond its walls. The name survived after both became one city. It now describes the central wards above the original ground line. The buried floors and service complex below belong to the #{ref :underlayers, "Underlayers"}, although many buildings have doors into both districts.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Walls in Use"
    The original campus wall appears throughout the district. In some streets it forms the back of shops and houses. Elsewhere it crosses a plaza at waist height because later construction raised the ground around it. Gate towers became stairwells, record stores, and neighborhood halls. City regulations forbid cutting a new opening until a structural survey identifies every active path in the old material.

    Ring-era buildings are broad, with high internal clearances and thick service cores. Later occupants inserted floors and partitions without removing the original walls. A courtroom may occupy one corner of a former instrument hall while apartments fill the levels above it. Public corridors widen abruptly where modern construction meets an old work bay.

    The central civic grounds remain open and heavily used. #{ref :the_continuity, "The Continuity"}'s assembly offices face the main square; courts and public archives line the adjoining streets. Colleges occupy the quieter northern wards. Residential courts begin within a few minutes' walk, keeping the district populated after clerks and students leave.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "The Campus Field"
    The old structures share a broad structural field. Engineers can map strong paths through the walls and foundations, but no surviving plan shows every connection. A repair in one building may change the load at another several streets away. The city therefore schedules major tuning work by district and keeps sensitive courtrooms, archives, and clinics on separate modern supplies during the change.

    Active wall panels provide useful warnings. Their light sharpens before a structural load moves and dims after it settles. Maintenance crews mark the sequence along a route and compare it with earlier work. A panel lighting out of order can indicate a blocked path, an unrecorded modern connection, or a ring-era room that has rejoined the field.

    Doors into the lower service complex respond to the same changes. Most are sealed or incorporated into ordinary basements. A few still open when the surrounding field reaches a particular state. The best documented of these routes lead toward the #{ref :folded_annex, "Folded Annex"}, well below the district's inhabited grade.
  PROSE
  prose <<~PROSE, section: :governance, heading: "Government Streets"
    #{ref :the_continuity, "The Continuity"} keeps its party offices and the city's executive departments in the Old Campus. The elected assembly meets in a rebuilt lecture hall whose original seating descends too steeply for modern public access; a newer gallery crosses its rear wall. Opposition members, press offices, courts, and civic archives occupy neighboring buildings rather than a separate government enclosure.

    The proximity gives public disputes a physical route. Petitioners can leave an assembly session, cross the square, file a court challenge, and bring a copy to a press office without arranging transport. It also concentrates the officials, lawyers, and clerks who know how to move a case through Sithari institutions. Residents from Keelward and the Underlayers regularly argue that the convenience belongs to the center at their expense.
  PROSE
  prose <<~PROSE, section: :economy, heading: "Study and Administration"
    The district's work is government, law, education, archives, medicine, and the maintenance of the old complex. Colleges train engineers, clerks, historians, and resonance specialists. Instrument shops near them repair precise equipment rather than heavy freight machinery. Copy houses prepare legal and technical records in the formats accepted across the system.

    Students and civil workers support dense food streets and rented rooms. A family with a spare room can keep it occupied through the academic year, election sessions, and long Accord cases. The oldest apartment courts remain under resident cooperatives formed during the #{ref :signal_famine, "Signal Famine"} and pay less than newer housing nearby.
  PROSE
  prose <<~PROSE, section: :people, heading: "Living at the Center"
    Old Campus carries prestige inside Sithari and irritation elsewhere. Its residents have the shortest path to the city's institutions, the most reliable transit, and the highest concentration of old buildings maintained at public expense. They also live with closures whenever a wall panel changes, security cordons around political events, and tourists entering residential courts in search of the first shelters.

    Families use ring-era courtyards as ordinary shared space. Laundry lines cross walls that appear in Glassfall histories. Children play against sealed laboratory doors. Building stewards know which polished surfaces are public exhibits and which are simply durable parts of the house.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    A planned court expansion has stopped after excavation exposed a lit service passage below the old wall. The passage appears on a pre-Glassfall maintenance diagram held by the public archive but not on any modern structural survey. The city has closed one side of the square while #{ref :clarisant, "the Sithari Clarisant chapter"} tests whether the light belongs to the court's field or to a deeper connection.
  PROSE
end

relate :rel_old_campus_located_in_sithari, :located_in, :old_campus, :sithari, since: 2140 do
  prose "The Old Campus forms the civic center of #{ref :sithari, "Sithari"}, above the original ring-era complex."
end
relate :rel_clarisant_operates_old_campus, :operates_in, :clarisant, :old_campus, since: 2310 do
  prose "The Clarisant's Sithari chapter inspects the Old Campus field and certifies major work on its ring-era structures."
end
relate :rel_echo_ledger_operates_old_campus, :operates_in, :echo_ledger_conclave, :old_campus, since: 2320 do
  prose "The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} maintains a reading room among the Old Campus public archives."
end
