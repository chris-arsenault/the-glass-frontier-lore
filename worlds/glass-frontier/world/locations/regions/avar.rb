geographic_location :avar do
  name "Avar"
  summary "Avar is a settled grassland on Kaleidos between Glasswake's coastal hills and the Kyther Range, crossed by glass-bearing stone shelves and deep wells."
  playable_as :chronicle_location
  subkind :region
  status :complete
  tags :surface, :resonance, :navigation, :trade, :ecology
  prominence :recognized
  position frame: :kaleidos_surface, latitude_deg: 12, longitude_deg: -68,
           size_class: :region

  descriptive_identity(
    setting:
      "Wind-kept grassland running inland from the coastal hills to " \
      "the first ridges of the Kyther Range, crossed by long shelves " \
      "of pale stone whose faces are packed with fine ringglass from " \
      "centuries of showers. Near sunrise and late afternoon the " \
      "ridges split the light into low gold bands, and green hollows " \
      "mark where water nears the surface.",
    activity:
      "Homesteads, market towns, and seasonal camps farm the deep " \
      "soils, move marn between ridge shelter and open grass, and " \
      "draw water from deep shafts whose posted order governs every " \
      "tap and trough. Route keepers sound suspect ground with staked " \
      "chains and mark it white, green, or red, while kites navigate " \
      "along the exposed ridgelines.",
    hazards:
      "Wet weather and repeated vibration align the crystal through " \
      "the clay between shelves, opening slick planes under a load — " \
      "a road used for years starts creeping, a pump settles its own " \
      "foundation while the houses stay level. Collapsed barns and " \
      "tilted pump houses mark the weak ground, and a moved or " \
      "repainted route stake endangers everyone who follows it."
  )

  prose <<~PROSE
    Avar begins behind the coastal hills above #{ref :glasswake, "Glasswake"} and runs inland to the first broken ridges of the #{ref :kyther_range, "Kyther Range"}. Old surface route books already write Avar beside the western wells. The spelling survived the Famine even as the mapped roads changed. Wind keeps most of the country in grass. Long shelves of pale stone rise through the soil at irregular intervals, their exposed faces filled with fine ringglass washed down from centuries of #{ref :glassfall_showers, "Glassfall showers"}. Near sunrise and late afternoon the ridges split the light into low gold bands.

    Farms and grazing land occupy the deeper soils between shelves. Towns stand where a reliable well, a sheltered landing field, and a route through the ridges coincide. None approaches Sithari in size. Together they support a large settled population spread across homesteads, market towns, pumping stations, bridge hamlets, and seasonal camps.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Shelves and Hollows"
    The visible ridges are only the upper faces of broad stone plates. Glass-bearing clay lies between them. In dry weather it carries a cart or a building without complaint. Water and repeated kinetic vibration align the fine crystal through the clay, opening slick planes beneath a load. A road used for years can begin creeping after a wet season. A pump fixed to one frequency can settle its own foundation while the houses around it remain level.

    Water runs below the surface more often than above it. Short streams leave the Kyther foothills and vanish into porous ground before reaching the central grassland. Settlements recover that water from deep shafts and sloping wells. Green hollows mark places where it approaches the surface. Collapsed barns, tilted pump houses, and abandoned bridge footings also mark the weak ground beneath them.

    The steppe is crossed by old impact scars. Most are shallow bowls softened by soil. A few contain fused debris from the ring, including structural members too large to move and rooms collapsed into the earth. Towns quarry around them, graze around them, or use them as windbreaks. Salvage rights remain local and are often attached to the nearest well rather than the land boundary drawn on a regional map.
  PROSE
  prose <<~PROSE, section: :access, heading: "Routes That Move"
    Steppe road crews expect routes to move. Main routes follow the stone shelves when they can, drop onto clay only at surveyed crossings, and change after flood or heavy traffic. Route keepers drive three shallow stakes across suspect ground and join them with a measured chain. When struck, the stakes answer through the local field. A widening interval between their tones shows that the layer below is starting to move.

    Markers use color and sound together. White heads indicate firm road. Green marks ground open to light traffic. Red closes a section. At busy crossings, a hanging plate repeats the current tone so a driver can compare it with the note under their own wheels. Maintained wayhouses such as #{ref :marker_house_twelve, "Marker House Twelve"} pair the stakes with water, shelter, animal pens, and a slate of recent passages. Removing or repainting a route stake is treated as endangering everyone who follows it.

    Kites use the ridges as low navigation lines. Their kinetic arrays pull cleanly above exposed stone and unevenly over wet hollows. Local pilots climb over the change instead of correcting against it. Cargo caravans carry wheels and short-run skids because a route can change from road to drag path between two market days.
  PROSE
  prose <<~PROSE, section: :people, heading: "Wells, Markets, and Work"
    A well defines the practical size of a settlement. Public pumps feed drinking taps, wash troughs, livestock basins, gardens, and fire tanks in a set order. Every town posts the order at the pump house. During repairs, temporary pipe reaches the drinking line first and the gardens last. Arguments about water are usually arguments about which use entered the order when.

    Steppe households grow grain, legumes, and tough-leaved vegetables in windbreak plots. Herding families move #{ref :marn, "marn"} between ridge shelter in the cold season and open grass after the first rains. Market towns process wool and hides, mill grain, repair pumps, and trade low-grade shower glass collected from roofs and field cloth. Glasswake takes much of the surplus; replacement machinery and coastal goods come back along the same roads.

    Folk resonance work is common. A well reader knows the local water-bearing tones. A mason knows which aggregate quiets a particular shelf. A route keeper may have no Clarisant credential and a better record on one crossing than any visiting Tuner. Outside certification matters for new machinery and legal disputes. Daily trust follows the person who has heard the same ground through twenty wet seasons.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Ladderwell"
    #{ref :ladderwell, "Ladderwell"} is the largest town in the eastern steppe and the usual transfer point for the Kyther foothills. It climbs a succession of stone benches above a deep water shaft. Its chain-pump house, mills, and upper reservoir make it a service center for smaller settlements that cannot maintain heavy machinery of their own.

    The town is also remembered for moving that pump house uphill while it remained in service. The job made the methods of #{ref :counterweight, "the Counterweight"} known across the surface. Several steppe water boards now require temporary service lines and worker stop calls in plans for a failing foundation.
  PROSE

  gm_note :appears, "Every town posts its well order at the pump house, so a party wanting water for animals, a wash, or a boiler finds their use ranked in a list somebody else wrote. During repairs the drinking line comes back first and the gardens last."
  gm_note :triggered_by, "Moving, repainting, or pocketing a route stake to save a detour endangers everyone traveling behind, and steppe crews answer it as that. Color and tone are read together: a white head means firm road, green light traffic, red closed."
  gm_note :complicates, "A credentialed Tuner arriving from off the steppe outranks nobody here, because daily trust follows the well reader or route keeper who has heard the same ground through twenty wet seasons. The certificate starts to matter when new machinery is signed for or a dispute reaches a board."
end

relate :rel_avar_on_kaleidos, :on_surface_of, :avar, :kaleidos do
  prose "Avar crosses #{ref :kaleidos, "Kaleidos"}'s western interior between Glasswake's coast and the Kyther foothills."
end
relate :rel_glasswake_in_avar, :located_in, :glasswake, :avar, since: 2160 do
  prose "#{ref :glasswake, "Glasswake"} stands on the western edge of Avar and handles much of its trade."
end
relate :rel_avar_adjacent_kyther, :adjacent_to, :avar, :kyther_range,
       props: { frame: :kaleidos_surface, bearing_deg: 90 } do
  prose "Avar's eastern steppe reaches the first ridges of the Kyther Range."
end
