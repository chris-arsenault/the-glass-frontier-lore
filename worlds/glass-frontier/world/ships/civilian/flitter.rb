transport :flitter do
  name "Flitter"
  summary "A flitter is a short-range kite for ordinary passenger travel and light freight. Public and commercial fleets use compact craft to cross cities, climb between surface terminals and low orbit, and reach nearby settlements."
  subkind :vessel
  status :complete
  capacity "One to six passengers, or an equivalent light cargo load"
  tags :transport, :resonance, :"kinetic-freq", :surface, :orbital, :household
  prominence :recognized

  descriptive_identity(
    appearance: "A compact cabin slung beneath a ringglass drive frame, sized for two to six people, " \
                "with landing feet and a luggage box built into a rigid cradle. Regional builds show at a glance: " \
                "broad detachable skids on steppe craft, pale catch cloth folded over the joints of shower-route " \
                "machines, plain washable lower shells on Lowbank models.",
    aboard: "Seats or paired benches inside a weather shell, with the faint hum of a working array under everything; " \
            "larger cabins add pressure seals and their own air for an orbit climb. Turns, climbs, and a rough landing " \
            "all reach the passengers, and shifting seats mid-flight can put the balance past what an older craft " \
            "corrects.",
    behavior: "It flies itself along registered routes by reading local beacons against its hull compass, and refuses " \
              "a leg when the two disagree; a pilot can take manual control to leave the route. After landing it " \
              "settles into a berth frame and holds its doors until the pad lights fall together and the residual " \
              "kinetic pull has drained. In a depleted field it descends on stored charge and simply waits."
  )

  prose <<~PROSE
    A flitter is the short-range #{ref :kite_sail, "kite"} used for ordinary passenger travel and light freight. Most carry two to six people in a compact cabin beneath a ringglass drive frame. They cross a city, climb between a surface terminal and low orbit, or follow a marked route to the next settlement. Their range is modest by system standards and ample for the journeys most people make in a day.

    Public fleets outnumber privately owned flitters. A city department, passenger cooperative, pilots' guild, hotel, hospital, or large employer may keep its own pool. Commercial carriers operate many more without owning the category. The same landing board may dispatch municipal craft in the morning, a family carrier after midday, and a hired freight shell at night.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Cabin and Cradle"
    The smallest flitters are a seat, weather shell, luggage box, and kinetic array held in a rigid cradle. Larger models have paired benches, a separate cargo compartment, pressure seals, and enough independent air for a surface-to-orbit climb. The cradle keeps the array, landing feet, and passenger mass in a known relationship so the control system can redirect motion without twisting the hull around its occupants.

    A flitter does not remain weightless in flight. Its array reduces or redirects selected opposing forces while the cradle carries every force the operator chooses to leave alone. Passengers still feel turns, climbs, and a poor landing. Cargo is strapped against those expected loads, and changing seats after departure can move the balance beyond what an older craft corrects cleanly.

    Most models can fly themselves along registered routes. They read local beacons, compare their field with a hull-mounted tuning compass, and refuse a leg when the two disagree beyond the maker's tolerance. Manual controls allow a pilot to leave the route or bring a damaged craft down. Fleet operators still require human inspection because an obedient craft can repeat a bad reading all day.
  PROSE

  prose <<~PROSE, section: :operations, heading: "A Routine Passage"
    A passenger books a berth or joins a queue at a marked pad. The arriving flitter settles into a berth frame before its doors release. Lights around the pad show whether the residual kinetic pull is still passing into the frame. Ground crews unload only after those lights fall together; an impatient hand can transfer the last correction into a case, a loading arm, or another person.

    Dense cities dispatch craft continuously. Smaller settlements publish departures around market hours, school terms, medical visits, and the arrival of longer-distance vessels. A remote landing may have no office at all: the route board shows which cooperative is flying, which household holds the current ground watch, and where to leave payment if the returning pilot is carrying a patient.

    Freight flitters replace the cabin with a locking shell. Food, mail, medicines, repair parts, and clean laundry move this way. Heavy material rarely does. A flitter can lift a dense load, but the array wear and berth time cost more than putting the same mass on a road hauler, barge, or scheduled cargo vessel.
  PROSE

  prose <<~PROSE, section: :limits, heading: "Weather, Quiet Fields, and Bad Pads"
    Flitters rely on frequent places to land. Glassfall fronts close exposed routes. Wet ringglass beneath a surface pad can pull unevenly across the cradle. In a depleted field, a craft preserves enough ordinary thrust and stored charge to descend, then waits for the local gradient to recover or leaves on a different system.

    Pilots treat the landing surface as part of the vehicle. Before using an unfamiliar pad they compare its marked tone with their own compass, inspect the berth frame, and ask what landed last. A pad that accepted an empty passenger craft may settle under a loaded freight shell. One that handled a heavy shuttle can retain a pull strong enough to turn a light flitter during touchdown.

    Regional designs follow those conditions. Steppe craft carry broad feet and detachable skids for routes whose marked ground has moved. Shower-route flitters fold pale catch cloth over vulnerable joints. Ashvane cabins put cooling ahead of insulation. Lowbank models keep their controls high and their lower shells plain enough to wash after a flooded landing.
  PROSE

  gm_note :triggered_by, "Order a flitter onto a leg where the local beacons and its hull #{ref :tuning_compass, "tuning compass"} disagree beyond tolerance and it refuses to fly. Someone has to take manual control and own the departure from the registered route, or the trip waits for a better reading."
  gm_note :complicates, "A flitter that has just landed sits in its berth frame until the pad lights fall together and the residual kinetic pull has drained into it. Reaching into the cabin before that transfers the last correction into whatever is touched: a case, a loading arm, or the person holding it."
  gm_note :appears, "In a depleted field a flitter descends on stored charge and then waits for the local gradient to recover. Passengers end up beside an undamaged craft whose pilot cannot name a departure time, and the only way onward is another system."
end

relate :rel_flitter_depends_on_kite, :depends_on, :flitter, :kite_sail do
  prose "A #{ref :flitter, "flitter"} is the smallest common passenger use of a #{ref :kite_sail, "KITE"} array."
end
relate :rel_flitter_operates_keelward, :operates_in, :flitter, :keelward do
  prose "Flitters cycle between #{ref :keelward, "Keelward"}'s inner fields, city stops, and nearby orbital terminals."
end
relate :rel_flitter_operates_ladderwell, :operates_in, :flitter, :ladderwell do
  prose "Regional flitters connect #{ref :ladderwell, "Ladderwell"} with steppe markets and Kyther landing fields."
end
relate :rel_prismwell_maintains_flitters, :maintains, :prismwell_kite_guild, :flitter, since: 2312 do
  prose "Prismwell yards maintain shower-rated flitters for surface-access routes around Glasswake and Sithari."
end
