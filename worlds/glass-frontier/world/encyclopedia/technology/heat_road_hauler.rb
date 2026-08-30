encyclopedia :heat_road_hauler do
  name "Heat-road Hauler"
  summary "Heat-road haulers are long, low surface vehicles that carry bulk freight between Ashvane towns without dependable landing fields. Broad wheels and a small kinetic array keep them moving across salt, basalt, and crater approaches."
  kind :technology
  subkind :transport
  status :complete
  topics :transport, :trade, :resonance, :"kinetic-freq", :"outer-system"
  prevalence :common
  appears_when all: { place: [:hot, :road] }

  descriptive_identity(
    appearance: "Long and low on broad wheel sets, under reflective cargo covers, with radiator frames that " \
                "fold flat on the move and rise above the body at a rest bay. Long combinations add a rear cab " \
                "watching the trailers.",
    aboard: "The lead driver reads the surface and the array response while a second crew member minds cargo " \
            "temperatures, water, and the next radiator stop. Sensitive freight rides the insulated center " \
            "bays; stone, salt, and kiln goods take the hotter outer racks, each bay sealed separately by the " \
            "freight house. Mail, apprentices, and patients fit for a slow journey ride along between small " \
            "towns.",
    behavior: "Wheels carry it and a small kinetic array in a removable ceramic cradle eases the worst ground — " \
              "soft salt, broken basalt, steep crater approaches — so a ringglass fault does not stop the " \
              "vehicle. At bad crossings it pulses a buried ringglass cut: a slow even return is solid basalt, " \
              "a divided one a hot cavity or opening fracture. Heat defeats it gradually — thinning grease, " \
              "opening joints, a cradle answering the ground instead of the drive — and crews stop on the first " \
              "combination of faults. Stranded, it gives shade and water long after it gives motion."
  )

  prose <<~PROSE
    Heat-road haulers carry bulk freight between Ashvane towns that do not justify a flight or cannot offer a dependable landing field. They are long, low surface vehicles with broad wheel sets, reflective cargo covers, and radiator frames that rise above the body when stopped. A loaded hauler moves slowly enough for its crew to inspect the road ahead and steadily enough to cross the moon's open plains before the next strong tidal heating period.

    Most use mechanical drives assisted by a small kinetic array. The wheels carry the vehicle. The array reduces the worst opposing load at soft salt, broken basalt, and steep crater approaches. Keeping the two systems separate allows a crew to continue after a ringglass fault and prevents the hauler from depending on the same field conditions that may have closed a kite route.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Built for Stored Heat"
    The cargo deck stands above a ventilated underframe. Ceramic breaks interrupt every metal path from the wheels to the load, slowing heat that enters through the road. Water, medicine, instruments, and other sensitive freight ride in the center bays behind packed mineral insulation. Stone, salt, kiln goods, and machinery occupy the hotter outer racks.

    The drive units sit at opposite ends. Either can move an empty vehicle and bring a loaded one to a safe stop. The kinetic array lies between them in a removable ceramic cradle, with short bus runs that a roadside crew can isolate without unloading the deck. Ashvane workshops favor parts that can be lifted by three people because repair shade is common and lifting machinery is not.

    Radiator frames fold flat while moving. At a rest bay the crew raises them, connects the cargo loops that need cooling, and sends accumulated heat into the night sky. A hauler cannot shed heat quickly during the day without making a bright target for every temperature sensor along the road. Legal carriers publish their stops. Carriers concealing cargo avoid them and accept a hotter load.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Heat Roads"
    Maintained routes follow cooled flows, ridge shadows, and old fracture lines stable enough to survey. Marker posts carry a road number, the last inspection date, and a simple heat strip visible from the cab. At difficult crossings a buried ringglass cut answers a reference pulse from the hauler. A slow, even return marks solid basalt. A divided answer can indicate a hot cavity or a fracture opening below the crust.

    Crews travel near evening when practical. The lead driver watches the surface and the array response. A second crew member manages cargo temperatures, water, and the next radiator stop. Long combinations add a rear cab so one operator can see a wheel set or trailer that has begun to settle before the pull reaches the front.

    Road houses maintain shade, water, repair pits, and public field readings. Some belong to towns, some to families, and some to freight associations that settle maintenance through reciprocal work. A carrier that uses a road house without replacing its water or reporting a damaged marker finds the next gate closed.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Loads in Both Directions"
    Outbound haulers bring salt, glazed ceramic, basalt shapes, heat-rated pumps, preserved food, and replacement radiator sections to #{ref :shadewell, "Shadewell"}. They return with medicine, precision parts, ringglass cuts, sealed instruments, and whatever passengers prefer a surface route to another flight.

    A hauler rarely carries one owner's goods. Freight houses assemble loads by temperature and handling need, then seal each bay separately. The crew may know the owner of every crate and remain unaware of the buyer. At small towns the vehicle also carries mail, legal notices, apprentices changing workshops, and patients whose condition permits a slow journey.

    Mobile lowland camps use the same chassis beneath their houses and workshops. When fractures shift, a camp strips its radiator masts, lifts the modular rooms onto hauler beds, and moves to a surveyed pad. Those haulers spend most seasons as stationary foundations and keep their drives covered against ash until the day the ground changes.
  PROSE

  prose <<~PROSE, section: :limits, heading: "When a Road Closes"
    Heat defeats the vehicle gradually. Wheel grease thins, ceramic joints open, cooling water warms, and the kinetic cradle begins answering the ground instead of the drive. Crews stop at the first combination of faults rather than waiting for a single decisive alarm. A stranded hauler provides shade and water for longer than it provides motion.

    Strong tidal periods close some low roads by schedule. Others close after a scout finds new steam, a changing marker tone, or salt crust too thin to carry a loaded wheel. The cargo then waits, transfers to smaller vehicles, or pays for a kite. Basalt temperature sets the delay.
  PROSE

  cue "Freight houses seal each bay by temperature and handling need, so the crew carrying a party's cargo can name every owner on the manifest and none of the buyers. At small towns the same vehicle brings mail, legal notices, apprentices changing workshops, and patients well enough for a slow journey."
  cue "They are long, low surface vehicles with broad wheel sets, reflective cargo covers, and radiator frames that rise above the body when stopped."
  affordance "Asking a crew to shed heat before dark means raising the radiator frames in daylight, visible to every temperature sensor along the road, and their cooling stop will not match the one they published. Carriers running concealed cargo already accept the hotter load rather than do it."
  pressure "At bad crossings the hauler pulses a buried ringglass cut and reads what returns: slow and even is solid basalt, a divided answer means a hot cavity or a fracture opening below. Crews turn back on that reading, and a stranded hauler gives shade and water long after it gives motion."
  variation "Long combinations add a rear cab so one operator can see a wheel set or trailer that has begun to settle before the pull reaches the front."
  variation "Mobile lowland camps use the same chassis beneath their houses and workshops."

end
