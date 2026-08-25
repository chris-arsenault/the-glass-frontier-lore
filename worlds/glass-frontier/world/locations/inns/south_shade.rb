installation :south_shade do
  name "South Shade"
  summary "South Shade is a road house below Shadewell's southern rim, where Ashvane's highland road meets the cargo lifts to the Keel fields."
  playable_as :chronicle_location
  subkind :installation
  status :complete
  tags :"outer-system", :trade, :transport, :household, :resonance
  prominence :marginal

  descriptive_identity(
    setting:
      "A road house below Shadewell's southern rim where the highland " \
      "road meets the cargo lifts, its sleeping rooms cut into the cool " \
      "side of a basalt ledge — the deepest have no exterior wall at " \
      "all. A long roof shades the vehicle court's six stone-walled " \
      "bays, and night here follows Ashenmaw's shadow, not the terminal " \
      "clock.",
    activity:
      "Heat-road crews rest and repair before entering the port " \
      "schedule, reading the court board that translates shade periods, " \
      "road departures, and lift slots into one interval. The busiest " \
      "meal begins when Ashenmaw crosses the sun: market tables under " \
      "the vehicle roof, drivers trading vent-storm reports, mechanics " \
      "arguing substitutions onto the port's parts lists.",
    access:
      "Anyone off the road can pay for a bay and a bed, but the deep " \
      "cool rooms go to children, heat injuries, and emergency arrivals " \
      "— a paying guest loses one the moment a casualty comes down the " \
      "highland road. Cargo with an active field waits outside until " \
      "the port sounders clear it, and a driver who accepts an " \
      "impossible turn forfeits the covered bays.",
    hazards:
      "The cinderback handlers hold the two outer bays, and any pump " \
      "start near the road turns the herd back toward the port with the " \
      "handlers close behind asking who did it. The hot return is " \
      "closed for the herd's sake, so the baths run cold and warm " \
      "machinery cannot be washed until the next road station."
  )

  prose <<~PROSE
    South Shade is a road house below #{ref :shadewell, "Shadewell"}'s southern rim, where the highland road meets the cargo lifts climbing to the Keel fields. Its sleeping rooms are cut into the cool side of a basalt ledge. A long roof shades the vehicle court, and a municipal return line carries kitchen and bath heat toward radiator frames on the empty slope above.

    Heat-road crews stop here before entering the port schedule. Highland handlers use it when bringing animals or produce to the rim. Off-world arrivals come down for an Ashvane night, then discover that “night” at South Shade follows Ashenmaw's shadow rather than the terminal clock.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Cool Side"
    The common room and kitchen occupy the ledge face. Sleeping chambers extend behind them along a gently descending passage. The deepest rooms have no exterior wall and remain cool through most surface cycles. They cost more when the port is busy and are reserved for children, heat injuries, and workers arriving from the low roads during an emergency.

    The vehicle court holds six roofed bays separated by stone walls. Warm machinery faces outward. Passenger doors open toward the shaded passage. Folding screens close each bay at ground level to keep cinderbacks from settling behind wheels and drive housings.

    Water enters through a public tap beside the kitchen and leaves through marked warm and hot returns. Guests wash tools in the warm trough. The hot return is sealed because a bucket poured there can push kitchen heat backward into the bath rooms.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Road and Port"
    A board in the court translates between shade periods, road departures, and Keel cargo calls. Haulers post arrival by road condition. Port agents post the lift slot. The house clerk writes the interval between them as rest, repair, or impossible. Drivers who accept an impossible turn lose access to the covered bays.

    Meals follow the thermal chain. Ovens use heat from the machine wash. Drying cabinets take the oven return. Bath water receives what remains before the line climbs toward the radiators. When one step closes, the kitchen changes its work rather than forcing the same load through a shorter path.

    Cargo stays in the vehicle court under its carrier's seal. The house stores medicines, personal equipment, and small heat-sensitive cases in a cool room beside the tap. Anything with an active field remains outside until the port sounders clear it.
  PROSE

  prose <<~PROSE, section: :people, heading: "Giant-shade"
    The busiest meal begins when Ashenmaw crosses the sun. Road crews who worked the exposed morning arrive as port hands leave the rim. Market sellers set tables beneath the vehicle roof, and the common room doors remain open until direct light returns.

    Drivers trade reports about vent storms, road-softening heat, and which public tanks are enforcing herd limits. Port workers bring substitution lists for off-world parts. Highland mechanics mark local replacements directly onto the lists and argue over which modification the port will accept.

    The house keeps a quiet chamber for people arriving with heat exhaustion. It contains water, loose cooling cloth, low lamps, and no questions until the patient's speech steadies.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Culvert Herd"
    Handlers moving the cinderbacks from Shadewell's cargo-yard culverts have taken the two outer bays. Young animals sleep behind the screens while adults follow the damaged cold-store return beneath the road. Every pump start turns the herd back toward the port.

    South Shade has closed its hot return so the line does not add another gradient across the handlers' path. The kitchen is using stored fuel, the baths are cold, and hauler crews must clean warm machinery at the next road station.
  PROSE

  gm_note :appears, "The court board posts hauler arrivals against Keel lift slots, and the house clerk writes " \
                    "the interval between them as rest, repair, or impossible. Drivers who take an impossible " \
                    "turn keep the cargo moving and lose their claim on the covered bays."
  gm_note :triggered_by, "Starting a pump anywhere near the road turns the cargo-yard #{ref :cinderback, "cinderbacks"} " \
                         "back toward the port, and the handlers camped in the two outer bays come looking for " \
                         "whoever did it. The hot return is closed for the same reason, so warm machinery gets " \
                         "washed at the next road station."
  gm_note :complicates, "The deepest sleeping rooms have no exterior wall and go to children, heat injuries, and " \
                        "workers arriving off the low roads in an emergency. A paying guest holding one through a " \
                        "busy port cycle loses it the moment a casualty comes down the highland road."
end

relate :rel_south_shade_located_shadewell, :located_in, :south_shade, :shadewell do
  prose "South Shade sits below Shadewell's southern rim at the meeting of the highland road and cargo lifts."
end
relate :rel_shadewell_maintains_south_shade, :maintains, :shadewell, :south_shade do
  prose "The city maintains the public water, return lines, and emergency cool rooms under a road-house lease."
end
relate :rel_south_shade_resonates_heat_hauler, :resonates_with, :south_shade, :heat_road_hauler do
  prose "Its divided vehicle court and machine wash are built around heat-road crews entering the port."
end
relate :rel_south_shade_resonates_cinderback, :resonates_with, :south_shade, :cinderback do
  prose "Handlers are using the outer bays while they move the cargo-yard herd toward an unused quarry."
end
