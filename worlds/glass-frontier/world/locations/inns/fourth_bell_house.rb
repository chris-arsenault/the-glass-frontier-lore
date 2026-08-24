installation :fourth_bell_house do
  name "Fourth Bell House"
  playable_as :chronicle_location
  subkind :installation
  status :complete
  tags :transport, :trade, :household, :surface, :governance
  prominence :marginal

  prose <<~PROSE
    Fourth Bell House is a municipal port hostel in #{ref :keelward, "Keelward"}, built above the freight rail between the outer arrival halls and the older terminal wards. It receives passengers whose onward booking failed, crews waiting on field release, and families who reached Sithari before their baggage or sponsor.

    The fourth bell is the sound made when a landed vessel and its berth have settled enough for ordinary handling. The first announces contact, the second closes the field, the third releases passengers, and the fourth releases cargo. A traveler still in the hostel after that bell has a problem beyond routine delay.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Courtyard and Galleries"
    The house surrounds a covered courtyard open to the rail noise below. Registration, meals, baggage claims, and public message boards occupy the ground arcade. Sleeping rooms line three upper galleries. Each gallery has small family rooms at the quiet end and rows of curtained bunks toward the stairs.

    The building was designed for turnover. Floors drain toward the courtyard, mattresses fit the wash lifts, and room doors carry removable number plates. A person moved after a closure takes the plate with them, so their messages and baggage follow the bed rather than the corridor.

    The roof holds a warm laundry, a shaded waiting garden, and a clear view of the outer terminal lights. Children learn the berth colors before they learn the vessel names. Adults watch the lights for a release the message board has not posted yet.
  PROSE

  prose <<~PROSE, section: :operations, heading: "A Bed After the Board Changes"
    Port staff issue lodging chits when a public closure breaks a booked connection. The chit covers a bunk, two meals, secure baggage space, and the first local rail trip after the route reopens. Carrier-caused delays are billed back to the carrier. Disputes about cause can continue after the traveler leaves.

    People without a chit can pay by the shift. Nobody is turned into the street during a field closure, though the courtyard becomes floor lodging once the bunks fill. The house keeps folded screens and bedding in the rail arches for that purpose.

    Claims staff work beside registration. A lost case, missed sponsor, or cargo seal entered there receives one paper number used across the port offices. The system is slow when several terminals close together and far faster than visiting the offices separately.
  PROSE

  prose <<~PROSE, section: :atmosphere, heading: "Port Time"
    Fourth Bell House has no common night. Outer-terminal crews sleep while the freight rail runs. Children eat breakfast beside passengers taking the late meal. The kitchen posts food by hot, cold, light, and filling instead of assigning it to a time of day.

    Each room has a small berth lamp connected to the public arrival board through a one-way mechanical shutter. The lamp changes color when the assigned route changes. It cannot carry a message into the room, an old privacy rule kept after the rest of the hostel modernized.

    Residents of the surrounding wards use the courtyard stalls and claims desk. That traffic keeps the hostel from becoming a sealed traveler district. It also means anyone searching for an overdue passenger can ask half a neighborhood before reaching the register.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Every Bed Taken"
    The shifted Glassfall front has filled the house and both rail arches. Crew from #{ref :nine_holds, "*Nine Holds*"} occupy one gallery while their seventh cargo box remains attached at berth. Passengers diverted from the inner fields sleep below them behind temporary screens.

    Several luggage numbers now appear on two different cases: one from the grounded freighter and one from a Vantara passenger arrival. Port staff have stopped releasing either set until the duplicate plates are traced through the wash lift that served both terminals.
  PROSE

  gm_note :appears, "A public closure that breaks a booking at #{ref :keelward, "Keelward"} ends in a lodging chit here, covering a " \
                    "bunk, two meals, secure baggage, and the first rail trip after the route reopens; whether the carrier caused " \
                    "the delay is argued long after the traveler leaves."
  gm_note :triggered_by, "A search for an overdue passenger reaches half a ward before it reaches the register, because the surrounding " \
                         "neighborhood uses the courtyard stalls and the claims desk."
  gm_note :complicates, "Room plates travel with the person, so baggage and messages follow the bed rather than the corridor; duplicate " \
                        "plates have put one luggage number on two cases, and staff are releasing neither set until the wash lift is " \
                        "traced."
end

relate :rel_fourth_bell_located_keelward, :located_in, :fourth_bell_house, :keelward do
  prose "Fourth Bell House stands above the freight rail between Keelward's outer halls and terminal wards."
end
relate :rel_keelward_maintains_fourth_bell, :maintains, :keelward, :fourth_bell_house do
  prose "Keelward's port service maintains the hostel, claims desk, and closure bedding stores."
end
relate :rel_fourth_bell_resonates_nine_holds, :resonates_with, :fourth_bell_house, :nine_holds do
  prose "The freighter's crew are staying in the house while the disputed seventh hold remains at berth."
end
relate :rel_fourth_bell_active_corridor_disputes, :active_during, :fourth_bell_house, :the_corridor_disputes do
  prose "Conditional closures and broken connections determine who receives a public lodging chit."
end
