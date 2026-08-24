installation :marker_house_twelve do
  name "Marker House Twelve"
  playable_as :chronicle_location
  subkind :station
  status :complete
  tags :surface, :transport, :trade, :resonance, :household
  prominence :marginal

  prose <<~PROSE
    Marker House Twelve is a stone wayhouse on the eastern road from #{ref :ladderwell, "Ladderwell"} across #{ref :avar, "Avar"}. It stands beside a public well, a marn pen, and the twelfth paired set of singing route stakes maintained from town. Hauler crews, pack caravans, well workers, and road surveyors share its roof.

    The house has no resident keeper. Each departing group leaves the water level, road tone, weather, and next intended stop on a slate inside the door. The next arrival checks those marks before adding its own.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Stone Between Two Stakes"
    Thick walls surround one common room, a raised sleeping platform, and a store alcove sealed against dust. The roof slopes into a covered cistern fed by rain and the well overflow. An exterior stair reaches the sleeping platform so travelers can enter during a floor repair without crossing the common room.

    The animal pen lies downwind and below the well apron. Its fence posts pull free if moving ground takes the outer edge, preventing the herd from dragging a rigid line through the yard. A low loading wall lets packs shift between marn and a road vehicle.

    The paired route stakes stand on opposite sides of the road. One takes the deep bench. The other reads the moving surface. Their interval tells a crew whether the road remains seated between them.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Reading the House"
    An arriving crew sounds both stakes before drawing water. Matching tones mean the surface and bench are moving together. A divided tone closes the vehicle track until somebody walks the next marker interval and checks where the change begins.

    The slate also records the water level, pen use, and state of the roof. A low well changes livestock allotments. A full pen changes where the next caravan can stop. A broken roof channel may make the house unusable during rain even while the road remains open.

    Emergency stores contain grain, salt, pipe patch, roof cloth, and hand tools. Travelers replace what they use at Ladderwell or the next maintained house. The painted tally inside the alcove lets road crews charge missing stock to a known passage without accusing whoever arrived afterward.
  PROSE

  prose <<~PROSE, section: :people, heading: "One Shared Roof"
    The common room has no assigned beds. Early arrivals take the raised platform; late arrivals sleep below after clearing a path from door to water jars. Herd dogs remain in the pen passage. Marn stay outside unless injury or a ground warning requires bringing one onto stone.

    Road news accumulates on the walls: bridge repairs, market days, well orders, lost animals, and offers to carry a machine part onward. Old notices remain beneath new ones until someone from the named place removes them.

    Surveyors receive priority at the small table beside the stakes. Everyone else eats around their instruments and listens for the result.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The East Hollow"
    Three caravans have recorded matching stake tones while their marn refused the road into the east hollow. The first turned south. The second waited and crossed with animals led one at a time. The third returned to Marker House Twelve after every lead animal planted its feet at the same bare patch.

    The road board remains open to foot and light vehicle traffic. Ladderwell has sent a survey crew with mechanical pins and no powered sounder. Until they arrive, the house pen is full and the slate shows more intended departures than the well order can supply.
  PROSE

  gm_note :appears, "With no resident keeper, the slate inside the door is the only authority here: water level, road tone, weather, and where the last group meant to go. A party that reads it learns who is ahead of them, and whatever they write is what the next crew plans around."
  gm_note :triggered_by, "Every arrival sounds the paired stakes before drawing water. If the tones divide, the vehicle track closes until somebody walks to the next marker interval to find where the change begins, and the crew that heard the split is the crew expected to walk it."
  gm_note :complicates, "The pen is full and the slate lists more departures than the well order can supply, because caravans have backed up behind the east hollow. The road stays open to foot and light vehicles, so a party willing to cross without animals can leave while the rest wait."
end

relate :rel_marker_house_located_avar, :located_in, :marker_house_twelve, :avar do
  prose "Marker House Twelve stands on the eastern steppe road beside a public well and route stakes."
end
relate :rel_ladderwell_maintains_marker_house, :maintains, :ladderwell, :marker_house_twelve do
  prose "Ladderwell road crews maintain the house, well, emergency store, and paired stakes."
end
relate :rel_marker_house_resonates_marn, :resonates_with, :marker_house_twelve, :marn do
  prose "Its pen, well order, and loading wall serve pack and herd caravans crossing the steppe."
end
relate :rel_marker_house_resonates_heat_hauler, :resonates_with, :marker_house_twelve, :heat_road_hauler do
  prose "Road vehicles use the house to exchange condition marks and shift cargo to pack animals when the track closes."
end
