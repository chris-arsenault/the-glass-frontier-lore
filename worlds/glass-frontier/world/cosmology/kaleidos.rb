geographic_location :kaleidos do
  name "Kaleidos"
  summary "Kaleidos is the inhabited world beneath the Glass Frontier, with oceans, old continents, and ringglass scattered through its soil, water, and foundations."
  log "2026-08-22 — Excluded as a chronicle location because the whole world is too broad to anchor a starting focus."
  subkind :celestial_body
  status :complete
  tags :surface, :resonance, :ringglass, :cosmology
  prominence :mythic
  position frame: :kaleidos_system_chart, radius: 2, angle_deg: 64
  registry true
  custom_fact :surface_character, "Oceans, continental stone, settled river plains, grassland, grove basins and high mountains",
              label: "Surface"
  custom_fact :largest_city, "Sithari",
              label: "Largest City"
  custom_fact :orbital_feature, "The shattered ring known as the Glass Frontier",
              label: "Orbital Feature"
  custom_fact :resonance_environment, "Uneven ringglass deposits through soil, water and old foundations",
              label: "Resonance Environment"

  descriptive_identity(
    setting:
      "An inhabited world of oceans and old continental stone under a " \
      "sky crossed by its broken ring: hard-edged slivers pass in " \
      "daylight while fine debris brightens whole reaches of sky and " \
      "casts moving colors on the ground. Ringglass lies unevenly " \
      "through soil and water, so the land itself answers — a spring " \
      "that carries voices, a grove that hums through its roots, two " \
      "buildings a street apart standing in different fields.",
    activity:
      "Most people live and work on the surface — coastal towns, river " \
      "settlements, steppe farms, grove basins, mountain communities — " \
      "moving goods by road, rail, river, and coastal vessel, with " \
      "kites for the long crossings. Builders sound a site before " \
      "raising anything on it, and route keepers publish closures with " \
      "the same authority as storm warnings.",
    hazards:
      "Glassfall showers still bring dust and larger pieces into the " \
      "atmosphere, closing air lanes and dusting exposed machinery. " \
      "Heavy rain softens shallow crystal beds, a strong orbital " \
      "alignment can make an old road pull a vehicle toward a buried " \
      "seam, and irrigation gates opened on the same response can " \
      "couple through wet ground."
  )

  prose <<~PROSE
    Kaleidos is an inhabited world of oceans, old continental stone, and a sky crossed by the remains of its ring. Most of its people live on the surface. #{ref :sithari, "Sithari"} is the largest city, but it does not contain the planet's population or set every local custom. Coastal towns, river settlements, upland farms, grove basins, and high mountain communities survived the #{ref :signal_famine, "Signal Famine"} with little contact between them. Reconnection made travel easier without making those places alike.

    The broken ring remains visible in daylight. Large fragments pass as hard-edged slivers; fine debris brightens broad reaches of sky and casts moving colors across the ground. #{encyclopedia_ref :glassfall_showers, "Glassfall showers"} still bring dust and occasional larger pieces into the atmosphere. A farmer covers a cistern, a pilot folds a sail, and a child lays out catch cloth for the same approaching front.
  PROSE
  prose <<~PROSE, section: :geography, heading: "The Settled Belts"
    Sithari stands on an equatorial tableland above a ring-era campus. The city's eastern port fields open toward long, dry ridges where surface roads and freight lines spread into the interior. Westward, older roads descend through farm country to a warm inland sea. The capital's reach follows those routes, thinning from municipal rail to hired carriers and then to weekly carts and kites.

    #{ref :glasswake, "Glasswake"} holds a western coast where a fallen hab fragment forms a ridge above the town. Inland lies #{ref :avar, "Avar"}, a broad grassland cut into terraces by glass-bearing scarps. Its wells are deep, its roads move when shallow crystal beds settle, and its market towns depend on pumps and bridges that cannot be replaced quickly.

    The #{ref :kyther_range, "Kyther Range"} rises beyond Avar. Snow and glacial water collect among dark peaks veined with old mineral glass. Rivers leaving the range feed #{ref :miraeth, "Miraeth"} on its western slopes and, farther away, the marshes of the #{ref :sable_crescent, "Sable Crescent"}. The Crescent is warm low country: cliff, canyon, floodplain, and slow water carrying voices through crystal sediment.

    These are the best-connected surface regions, not the planet's full extent. Other coasts retain towns reached more often by water than by orbital traffic. Inland settlements use local calendars, measures, and speech forms that survived the Famine because nobody arrived with enough authority to replace them. A map issued in Sithari can name the road and still fail to name the people who keep it open.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "Ground That Answers"
    Ringglass lies through Kaleidos's soil and water. The distribution is uneven. A Sable Crescent spring can carry signal traces dense enough to speak. A Miraeth grove draws broad structural frequencies through living roots. In Avar, shallow glass-bearing clay shifts under repeated kinetic loads. Two buildings separated by one street may stand in different local fields.

    Surface construction begins with sounding the site. Builders strike shallow stakes, run a reference tone through the proposed foundation, and listen for a response from buried crystal. A clean, short answer supports ordinary work. A returning beat can mark a second layer, moving water, or an old structure below. Large foundations are divided by breaks so that one active seam cannot pull the whole building with it.

    The same local variation enters household life. Wells acquire voices after heavy rain. Roof gardens catch fresh crystal dust and must be tested before the material reaches compost or drains. Irrigation gates are tuned separately because opening two on the same response can couple them through wet ground. People who never call themselves #{encyclopedia_ref :resonant_tuner, "Tuners"} learn the few readings their home requires.
  PROSE
  prose <<~PROSE, section: :people, heading: "Surface Peoples"
    Surface identity is local before it is planetary. Sitharians share a language of forms, schools, and contracts. Glasswake families count their town's history from the first signal and work around a wreck that is mine, shelter, and monument at once. Crescent communities build above floods and hear old speech in their water. Steppe towns judge distance by wells and safe crossings, while grove settlements rotate work around the condition of their living crystal beds.

    Species runs through every region without determining it. Human majorities are common on the surface, alongside orc, fae, gnome, and mixed households whose customs belong to the place where they were raised. A fae grower from Lumenshard and a human grower from the same basin usually share more habits than either shares with a city resident of their own species.

    The Signal Famine sits inside those differences. Settlements kept the practices that sustained them and lost the ones that depended on distant specialists. Some relearned resonance through apprenticeship. Others restricted it after local accidents. Reconnection brought credentials, replacement parts, and outside law into systems that had already worked for generations. The resulting arguments concern water boards, school standards, bridge inspections, inheritance, and whose reading of a local field carries legal weight.
  PROSE
  prose <<~PROSE, section: :access, heading: "Across the Surface"
    Kites make long crossings possible, but most people and goods still move by road, rail, river, and coastal vessel. A kite can clear a mountain range in hours and still be the wrong way to carry grain, stone, livestock, or a household. Surface routes gather at landing fields rather than yielding to them.

    Travel forecasts combine weather with resonance. Glassfall showers close air lanes and dust exposed machinery. Heavy rain strengthens some signal-bearing channels and softens the steppe's shallow crystal beds. Strong orbital alignments can make an old road pull a vehicle toward a buried seam. Route keepers publish closures with the same authority as storm warnings, and experienced drivers carry a #{encyclopedia_ref :tuning_compass, "tuning compass"} beside their map.

    The orbital ring dominates accounts written elsewhere in the system. On Kaleidos, weather services track its debris, towns collect its dust, and builders work the fallen material into walls, roads, fields, and drainage beds.
  PROSE

  gm_note :appears, "Every overland leg comes with a forecast that mixes weather and resonance: a shower front shutting air lanes, rain softening the steppe's shallow crystal beds, an alignment that pulls a vehicle toward a buried seam. Route keepers' closures bind the way storm warnings do."
  gm_note :triggered_by, "Carry a working technique to the next settlement, or the next street, and it fails about as often as it holds: two buildings a street apart can sit in different local fields. Builders, well-keepers and irrigation crews sound the ground first everywhere on the surface."
  gm_note :complicates, "A map drawn in Sithari names the road without naming the people who keep it open, and inland towns still run on calendars, measures and speech that outlived the Famine. An arrangement made in the capital gets renegotiated with whoever actually maintains the crossing."
end

relate :rel_kaleidos_orbits_the_sun, :orbits, :kaleidos, :the_sun do
  prose "Kaleidos holds the system's inhabited middle distance from #{ref :the_sun, "the sun"}."
end
relate :rel_kaleidos_inner_of_korvath, :inner_of, :kaleidos, :korvath do
  prose "Kaleidos follows an orbit inside #{ref :korvath, "Korvath"}."
end
relate :rel_kaleidos_part_of_system, :part_of, :kaleidos, :kaleidos_system do
  prose "Kaleidos is the second world of #{ref :kaleidos_system, "the Kaleidos system"}."
end
