geographic_location :kyther_range do
  name "Kyther Range"
  summary "The Kyther Range is a long mountain chain east of Avar on Kaleidos, with dark peaks, settled valleys, glaciers, and crystal-bearing seams."
  playable_as :chronicle_location
  context_tags :surface, :cold, :ringglass_rich
  subkind :region
  status :complete
  tags :surface, :resonance, :navigation, :materials, :danger
  prominence :recognized
  position frame: :kaleidos_surface, latitude_deg: 10, longitude_deg: -58,
           size_class: :region

  descriptive_identity(
    setting:
      "A long chain of dark peaks, high valleys, and year-round " \
      "snowfields east of Avar, with glaciers in the central heights " \
      "whose ice runs in bands darkened or cleared by fine ringglass. " \
      "Thin native crystal seams thread the rock, and where shower " \
      "dust has entered the cracks a whole face can carry a faint " \
      "structural answer — climbers hear the mountain before they see " \
      "it move.",
    activity:
      "Valley households farm terraces, herd, quarry stone, guide, " \
      "and take turns as pass workers through winter, trading wool, " \
      "hard cheese, and instrument crystal for steppe grain. Pass " \
      "keepers maintain sounding posts whose wind-blown notes tell " \
      "both the state of the snow and the way through white weather, " \
      "and seasonal survey traffic climbs toward Vigil Breach on " \
      "their forecasts.",
    hazards:
      "A low structural hum can bind a snow slab far beyond its " \
      "visible supports, and anything that breaks the shared response " \
      "— a quarry blast, a warm-water channel, a passing shower — " \
      "brings it down with rock, road, and buildings. Springs change " \
      "valleys when an active seam shifts the meltwater's path, and " \
      "a community with one pass out keeps stores sized for a full " \
      "closure."
  )

  prose <<~PROSE
    The Kyther Range is a long mountain chain of dark peaks, high valleys, and snowfields east of #{ref :avar, "Avar"}. Its western slopes feed #{ref :miraeth, "Miraeth"}; water leaving its southern valleys eventually reaches the #{ref :sable_crescent, "Sable Crescent"}. The highest passes hold snow through the year. The lower valleys support towns, pasture, quarrying, and narrow belts of terrace agriculture.

    Pale mineral glass runs through the range in thin native seams. Most is ordinary crystal rather than ringglass, but centuries of shower dust have entered cracks and glacial ice. Where the two meet, a whole face can carry a faint structural answer. Climbers hear the mountain before they see it move.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Peaks and Valleys"
    Kyther's western wall rises in steps above the grassland. Roads use river cuts and old landslide benches to reach the interior valleys. The eastern side descends more gradually through forest and grove country. Northward, the range becomes colder and more broken until permanent settlements give way to seasonal mines and survey shelters.

    Glaciers occupy the central heights. Fine ringglass darkens some bands of ice and leaves others almost clear. Meltwater follows those bands, appearing from cliff faces in places no surface contour predicts. A spring may change valleys after a warm season because the active crystal seam has shifted the path of least resistance through the ice.

    Sheltered valleys are fertile and crowded. Houses gather on fans of old stone above rivers, with fields below and pasture higher on the slope. Each valley has at least two routes out where the terrain permits it. Communities with only one pass maintain food stores sized for a full closure and treat bridge inspection as public office.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "Reading the Snow"
    Snow settles differently above active seams. A low structural hum can bind a slab across a slope, allowing it to grow far larger than its visible supports suggest. A passing shower, a quarry blast, or a warm-water channel can break the shared response. The resulting release takes rock, road, and buildings with the snow.

    Pass keepers place sounding posts through the snow into stone. The posts carry colored vanes and hollow heads that answer in wind. A clean series of notes means the slab and slope are still moving together. A missing note closes the pass. Teams then cut the dangerous section from a safe ridge or wait for it to fall.

    The posts also guide travelers in white weather. Every maintained pass has its own interval pattern, repeated often enough that a person can follow it without seeing the next marker. Moving or retuning a post is a serious crime. Old posts remain stacked beside pass houses with their last recorded fault carved into the shaft.
  PROSE
  prose <<~PROSE, section: :people, heading: "Valley Communities"
    Kyther people farm, herd, quarry, guide, carry, and maintain waterworks. The same household may keep animals in summer, cut stone in autumn, and provide a pass worker during winter. Highland towns trade wool, hard cheese, preserved fruit, building stone, and instrument crystal for steppe grain and manufactured parts.

    Local Tuners train first on water and snow. They learn which spring has moved, whether a retaining wall has taken the field from the slope behind it, and how far a quarry strike will carry through a seam. Clarisant methods are respected for unfamiliar instruments. A new graduate still follows the pass keeper who has sounded the same ridge since childhood.

    Valley speech changes quickly across the range. Long closures during the Signal Famine strengthened those differences, as did the habit of marrying and trading along watersheds rather than across high passes. Shared work remains legible: warning colors, bridge counts, and the right to close a route carry from one valley to the next even when everyday words do not.
  PROSE
  prose <<~PROSE, section: :history, heading: "Vigil Breach"
    #{ref :vigil_breach, "Vigil Breach"} draws seasonal survey traffic into the central heights. The nearest valley communities provision the shelters below it, provide the guides, and decide when the snow route is safe enough to use. Synod observers and traders wait on the same opening forecasts and answer to the same pass closures.

    Objects brought down from the breach must be logged before sale. The rule keeps a fragment's position, finder, and first measured response attached to it; valley councils enforce it at the shelters rather than trying to control trade after a buyer leaves the range.
  PROSE

  gm_note :appears, "Each maintained pass has its own interval of sounding posts, repeated closely enough to follow by ear in weather that hides the next marker. A note missing from the series does not mean a lost trail; it means the slab and the slope beneath it have stopped moving together."
  gm_note :triggered_by, "Anything that breaks a slope's shared response brings the slab down with rock, road, and buildings inside it. A quarry strike, a heated channel, or a kinetic array run hard is enough, and a valley Tuner can say how far the shock will carry through a seam before anyone makes it."
  gm_note :complicates, "A valley with only one route out keeps food stores sized for a full closure and elects the person who inspects its bridges. A party caught there when the pass shuts is fed and housed for as long as it takes and expected to take a turn at the work the closure creates."
end

relate :rel_kyther_range_on_kaleidos, :on_surface_of, :kyther_range, :kaleidos do
  prose "The Kyther Range forms the high watershed between Kaleidos's western steppe and its rain-fed basin country."
end
relate :rel_kyther_supplies_miraeth, :supplies, :kyther_range, :miraeth do
  prose "Kyther rain and meltwater feed the channels and root mats of #{ref :miraeth, "Miraeth"}."
end
relate :rel_kyther_supplies_sable_crescent, :supplies, :kyther_range, :sable_crescent do
  prose "The range's southern rivers carry water and mineral sediment toward the #{ref :sable_crescent, "Sable Crescent"}."
end
relate :rel_kyther_adjacent_miraeth, :adjacent_to, :kyther_range, :miraeth,
       props: { frame: :kaleidos_surface, bearing_deg: 225 } do
  prose "Miraeth's wooded basins lie along Kyther's wet foothills."
end
