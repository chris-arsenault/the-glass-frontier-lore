installation :sithari do
  name "Sithari"
  summary "Sithari is the largest city in the Kaleidos system, an equatorial surface capital built in layers above a surviving ring-era research campus."
  playable_as :chronicle_location, :homeland
  origin_blurb "A surface capital where law, trade, and old institutions shape daily life."
  subkind :settlement
  path "player/locations/settlements/sithari.md"
  status :complete
  reviewed "2026-03-19"
  tags :surface, :governance, :trade, :"ring-era"
  prominence :mythic
  position frame: :kaleidos_surface, latitude_deg: 0, longitude_deg: 0,
           size_class: :site
  registry true
  population_band "A few million in the city proper"
  role "De facto capital, financial centre and seat of the Tempered Accord"
  setting "Equatorial surface city built in layers above a ring-era campus"
  access "Orbital shuttles and the surface terminus of the Keel"

  prose <<~PROSE
    Sithari is the largest city in the Kaleidos system, with a few million people inside the city proper and more in the eastern sprawl. It stands at the equator above the ring-era research campus that survived the Glassfall with power, walls, and much of its service infrastructure intact. The settlement that formed around that complex became the system's financial and administrative center during the Rekindling.

    The city's name is commonly translated as "the place that kept going." Its old campus remains in use beneath the government halls, colleges, apartments, and transit lines of the present city. Orbital traffic descends at its eastern fields, while the Tempered Accord meets within walking distance of the offices that govern Sithari itself.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Four Parts of the City"
    The #{ref :old_campus, "Old Campus"} occupies the center. Ring-era walls pass through government buildings, colleges, clinics, apartment courts, and public squares. Modern structures rise from old foundations, and many have service doors at levels that were once open ground.

    The #{ref :underlayers, "Underlayers"} extend below those streets. Their upper levels are an inhabited district of workshops, markets, schools, and homes. Below the marked limit, active campus systems can change which corridors meet. Fixed stair shafts and resident-maintained route boards keep those neighborhoods connected to the surface.

    #{ref :accord_shore, "Accord Shore"} lies west of the old center around an artificial lake. Its inner bank contains the standing halls of the #{ref :tempered_accord, "Tempered Accord"}; the surrounding streets house delegates, translators, clerks, and the businesses that serve them. #{ref :keelward, "Keelward"} spreads east from the old city to the shuttle fields and freight terminals where #{ref :keel, "the Keel"} reaches the surface.

    Other residential and industrial wards fill the ridges and transit corridors between them. The older west and south streets follow the terrain. Keelward follows successive port boundaries. Central addresses often include a building's surface entrance and its lowest public approach because the two can belong to different districts.
  PROSE
  prose <<~PROSE, section: :governance, heading: "The Continuity"
    #{embed :the_continuity, :public_profile}

    City departments operate from the Old Campus and through ward offices across Sithari. Keelward administers port work on schedules set by orbital traffic. Underlayers stewards can close a changing route before the central transport office updates its map. Accord Shore divides city services from Accord jurisdiction at the entrances to the inner compound. These local powers remain subject to city law while controlling decisions that cannot wait for an assembly session.
  PROSE
  prose <<~PROSE, section: :governance, heading: "The Accord Seat", drafted_by: :ai
    The Accord meets at #{ref :accord_shore, "Accord Shore"}, outside the Continuity's government grounds. Member delegations control the hearing rooms, while Sithari supplies water, transit, emergency response, and the legal services around them. The arrangement gives the Accord institutional independence without removing it from the city that hosts it.

    During the Contested Reach and Bitter Reach, Sithari remained formally neutral while Continuity governments supported combatants through credit, logistics, and access to city institutions. Other settlements demanded a visible separation between the new Accord and the government whose past policy they remembered. The lake, public causeway, and separate security boundary provide it. Sitharian forms, staff, and language still shape the work conducted inside.
  PROSE
  prose <<~PROSE, section: :economy, heading: "Economy"
    Sithari's largest trades are finance, law, certification, academic research, records, and media. A contract spanning three jurisdictions is often written, insured, translated, or litigated here. Ringglass cargo arriving in Keelward is graded and financed before it moves onward. Old Campus colleges train the clerks, engineers, and specialists who apply Sitharian standards elsewhere in the system.

    The city also makes and repairs precise instruments, household resonance devices, shuttle components, and the fittings used across its buried infrastructure. Heavy manufacturing occupies the outer wards; smaller workshops fill the Underlayers. Keelward handles the volume, the old center supplies records and judgment, and Accord Shore brings parties who need both.

    This centrality depends on other settlements accepting Sitharian institutions. A court order, cargo certificate, or financial instrument has value elsewhere only while its issuer is trusted. The Continuity invests in records, professional training, and compatible forms because each makes the city's work easier to accept and more expensive to replace.
  PROSE
  prose <<~PROSE, section: :access, heading: "Access"
    Orbital shuttles and kites arrive through #{ref :keelward, "Keelward"}. Its surface-access spurs connect to ring habs, Keel traffic, and routes whose outer stops serve Shear crews. Freight rail and city transit leave directly from the arrival halls. Passenger movement between surface and orbit is routine enough that terminal neighborhoods schedule work and school around it.

    Sithari attempted a space elevator during the Rekindling. Funding ended before the tower rose, and the surface works were dismantled. The ringglass anchor beds remain below capped foundations at Keelward's southern freight boundary. Debate over resuming the project returns whenever shuttle capacity tightens.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "What It Feels Like"
    The surface city is dense, vertical, and bright. Engineered crystal facades stand beside ring-era walls too useful to remove. Plazas open around transit stations and government buildings, while older residential streets narrow around foundations that have not moved since the Glassfall. Below grade, ceilings drop, corridors thicken with pipes and signs, and a public stair can pass through several centuries of construction before reaching its last stop.

    Equatorial light reaches the city through drifting ring debris. Passing fragments split the daylight across facades and leave moving bands of color on the streets. Residents read the approach of a dense drift from those bands before public weather notices update. Dawn and dusk stretch across repeated reflections from orbit.

    Sitharian is the language of government, contracts, schools, and most street life. Port districts carry many other registers, but anyone dealing with city institutions learns its measured phrasing and precise forms. In conversation, that precision can communicate care, authority, impatience, or all three at once.
  PROSE

  log "2026-08-20: Moved district-scale facts into Old Campus, Underlayers, Accord Shore, and Keelward so Sithari remains the city overview. The Continuity now owns its political history and structure."

  gm_note :appears, "A central Sithari address names a surface entrance and a lowest public approach, and the two can sit in different " \
                    "districts under different offices. A party given only one arrives at the wrong end of the right building."
  gm_note :triggered_by, "When players plan around a posted schedule, the residents around them are already reading the color bands that passing debris lays across the facades, and they call a dense drift before the public notice updates."
  gm_note :complicates, "Anything the party has graded, certified, financed, or ruled on here travels only as far as Sitharian institutions are trusted. A refusal issued in Sithari follows the document into every other jurisdiction."
end

relate :rel_sithari_on_surface_of_kaleidos, :on_surface_of, :sithari, :kaleidos do
  prose "Sithari is the largest surface settlement on #{ref :kaleidos, "Kaleidos"} and the system's principal prestige register."
end
relate :rel_sithari_depends_on_ringglass, :depends_on, :sithari, :ringglass do
  prose "Sithari grades, finances, certifies, and trades much of the #{ref :ringglass, "ringglass"} recovered from the Shear."
end
relate :rel_sithari_depends_on_resonance, :depends_on, :sithari, :resonance do
  prose "#{ref :resonance, "Resonance"} powers Sithari's transit, civic infrastructure, buried campus systems, and instrument trades."
end
relate :rel_sithari_hosts_tempered_accord, :hosts, :sithari, :tempered_accord, since: 2423 do
  prose "Since the Accord's founding, Sithari has hosted the #{ref :tempered_accord, "Tempered Accord"} at Accord Shore and supplied the district's city services."
end

# --- history (moments) ---
moment :sithari_held_the_glassfall, year: 2140, of: :sithari do
  summary "Sithari's hardened research campus retained power and shelter through the Glassfall in 2140, drawing survivors inside its walls."
  prose "Before the #{ref :the_glassfall, "Glassfall"}, the site was a ring-era #{ref :resonance, "resonance"} research complex with hardened walls, independent power, and sealed laboratories. The campus retained power and shelter after the ring broke. People from the surrounding region began consolidating within its walls in the following weeks."
  effects { set :sithari, standing: :surviving_complex }
end
moment :sithari_becomes_capital, year: 2305, of: :sithari do
  summary "Sithari became the principal surface government and de facto system capital during the Rekindling in 2305."
  prose "By the end of the #{ref :signal_famine, "Signal Famine"}, the surviving campus stood at the center of a city of hundreds of thousands. Its infrastructure, records, and administration made Sithari the principal surface government and the system's de facto capital during the Rekindling."
  effects { set :sithari, standing: :capital }
end
