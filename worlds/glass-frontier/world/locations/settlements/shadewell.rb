installation :shadewell do
  name "Shadewell"
  playable_as :chronicle_location
  subkind :settlement
  status :complete
  population 240_000
  population_band "About two hundred forty thousand across the crater city and port ridge"
  role "Largest city on Ashvane and surface terminus of the Keel"
  setting "Terraced crater wall above a deep ice lens, beside a high freight ridge"
  access "Keel port, regional kites, heat-road haulers, and crater lifts"
  tags :"outer-system", :resonance, :trade, :transport, :"kinetic-freq"
  prominence :recognized
  position frame: :ashvane_surface, latitude_deg: 0, longitude_deg: 0,
           size_class: :site

  prose <<~PROSE
    Shadewell descends the inner wall of a deep crater on #{ref :ashvane, "Ashvane"}. The inhabited terraces remain in shadow for most of the day. Reservoirs and cold stores occupy the lower rock above a buried ice lens. The freight port stands on the sunward rim, where clear approaches and firm basalt matter more than comfort.

    The two halves meet through inclined rail, cargo lifts, and a covered stair road cut into the crater wall. Port workers call the trip down "coming indoors" even though most of the city opens to the sky. Visitors understand the phrase when the stair crosses from direct heat into the first cool terrace.
  PROSE
  prose <<~PROSE, section: :operations, heading: "The Well"
    Shadewell's ice lies below fractured volcanic rock. Warm groundwater reaches it from the south, melts a narrow face, and collects in a chamber cut above the lens. Pumps lift the water without exposing the main ice to settlement heat. Survey shafts around the chamber measure melt, pressure, and resonance response.

    Water passes first to drinking storage, then clinics and food production, then workshops and washing. The final warm return irrigates outer terrace fields before entering evaporation beds. Every stage extracts another use. Closing one line changes the heat and salt load of all the stages below it.

    The water board publishes flows by terrace. Households see the figures beside the shade schedule. A leak is reported by temperature as often as sight: a warm stair wall or a cool patch in a return bed can locate the failed line before water reaches the surface.
  PROSE
  prose <<~PROSE, section: :trade, heading: "Rim Port"
    The Keel terminus occupies a chain of landing fields along the crater rim. Heavy kites settle on basalt pads separated by ceramic breaks. Cargo moves under reflective sheds and enters the city lifts only after its temperature and field have equalized. A sealed crate cold enough to contract on descent can break its restraints halfway down the wall.

    Freight yards store ringglass, machine parts, medicine, ceramics, salts, and preserved food. Scheduled carriers dominate long-haul traffic, while local cooperatives run crater lifts and #{ref :heat_road_hauler, "heat-road haulers"}. The distinction matters during delays. A cargo can have arrived on Ashvane and remain unavailable to the town that ordered it until a surface crew has room on the correct route.

    Passenger halls open onto a shaded court with water stations, clothing stalls, and benches built over cool return lines. Porters check visitors' outer layers before directing them toward the surface exits. A person dressed for the crater can still be injured crossing one unshaded freight apron.
  PROSE
  prose <<~PROSE, section: :geography, heading: "The Terraces"
    Lower terraces are older, cooler, and denser. They hold reservoirs, markets, schools, bath houses, clinics, and stone homes with small exterior openings. Middle terraces support workshops and gardens under high shade cloth; #{ref :coldside_bench, "Coldside Bench"} receives port and road machinery on one of the shaded public repair terraces. Upper terraces house port workers, warehouses, repair yards, and people willing to trade heat for a shorter commute. #{ref :south_shade, "South Shade"} stands below the southern rim where the highland road meets the cargo lifts.

    Heat moves downhill through public return lines while water and freight move up. Buildings attach to those flows in registered order. A kiln can feed a dryer, bath house, greenhouse, and household loop before its remaining heat reaches a radiator. Breaking the chain without notice can leave the next use cold while overheating the line beyond it.

    Public courts sit where two or more return paths meet. They remain warm after sunset and draw food stalls, repair tables, musicians, and evening meetings. The coldest halls are the archive rooms beside the water chamber. Residents visit them for records and linger for the air.
  PROSE
  prose <<~PROSE, section: :people, heading: "Port and Crater"
    Rim and crater residents depend on each other and argue about whose work keeps the city alive. The port brings scarce parts and income. The crater supplies water, cooling, food, labor, and every refuge used when the rim closes. Municipal seats are divided between terrace wards and the port district so neither can set utility rates alone.

    Children learn heat paths as part of street safety. They know which painted lines can be touched, which grates vent at giant-shade, and where to wait if a warning tone clears a stair. Apprentices in any building trade spend time with a cooling crew before working unsupervised.

    The city speaks several trade registers at the rim and a distinct Ashvane dialect below. Words for shade depth, stored cool, and kinds of waste heat enter ordinary conversation. Off-world workers often learn the vocabulary before they learn why a local has refused their proposed repair.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Surveyors have measured a small increase in melt along the southern edge of the ice lens. The water remains within its managed range, but the warm groundwater channel feeding it has widened. The city has reduced workshop draw on two lower return lines while crews drill a new temperature shaft.

    Rim businesses want the lines restored before the next heavy Keel arrivals. Terrace wards have refused a fixed date. The water board will reopen them when the new shaft shows where the additional heat enters, leaving several port repair yards to run shorter shifts during the hottest part of the day.
  PROSE
end

relate :rel_shadewell_in_ashvane, :located_in, :shadewell, :ashvane do
  prose "#{ref :shadewell, "Shadewell"} fills a cool crater on Ashvane and extends onto the freight ridge above it."
end
relate :rel_shadewell_terminus_keel, :terminus_of, :shadewell, :keel do
  prose "Shadewell's rim port is the surface terminal at the far end of #{ref :keel, "the Keel"}."
end
relate :rel_shadewell_depends_on_resonance, :depends_on, :shadewell, :resonance do
  prose "The city's linked heat uses and cooling loops depend on kinetic-band #{ref :resonance, "resonance"}."
end
