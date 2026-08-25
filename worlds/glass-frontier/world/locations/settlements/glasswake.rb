installation :glasswake do
  name "Glasswake"
  summary "Glasswake is a coastal mining town on Kaleidos, built between the sea and the fused ridge of a ring fragment that fell during the Glassfall."
  playable_as :chronicle_location, :homeland
  origin_blurb "A coastal mining town built against a fallen hab whose repaired transmitter began the Rekindling."
  subkind :settlement
  path "player/locations/settlements/glasswake.md"
  status :complete
  reviewed "2026-03-18"
  tags :surface, :trade, :"ring-era"
  prominence :recognized
  position frame: :kaleidos_surface, latitude_deg: 11, longitude_deg: -75,
           size_class: :site

  descriptive_identity(
    setting:
      "A coastal mining town on the surface of Kaleidos, pinned between " \
      "the sea and the fused ridge of a fallen ring fragment — dark stone " \
      "threaded with pale glass from the seaward side, exposed rooms and " \
      "pressure doors on the inland face. Mine dust reaches every street " \
      "near the ridge, and buildings meet it with deep awnings and grated " \
      "entries.",
    activity:
      "Sorting terraces start early in the cool part of the day while " \
      "harbor crews work the tides and repair yards bridge both " \
      "schedules. Tourists hike the first-signal trail past Span Nine; " \
      "at the dock fringe, Ratter crews and independent kites unload " \
      "beside an open hiring wall.",
    access:
      "The harbor takes kites and carriers that would rather skip " \
      "Sithari's fees, a surface spur connects the town to the Keel, and " \
      "mine roads enter the ridge at several levels. Nothing becomes a " \
      "certified mineral lot uptown until washing, grading, and a Shear " \
      "Compact inspection say so.",
    hazards:
      "Removing a grade from the wreck is a structural reader's call: " \
      "pulling the wrong seam can wake another or shift load into an " \
      "occupied part of the fragment. On the beaches, mine crews warn " \
      "children away from any bright patch that answers a tool strike."
  )

  prose <<~PROSE
    Glasswake is a coastal mining town built around the ruins of a ring hab fragment that fell during the #{ref :the_glassfall, "Glassfall"}. The wreck forms a fused ridge along the eastern edge of town. Homes, workshops, mines, and warehouses occupy the sheltered ground between it and the sea.

    The fragment's inter-hab communication equipment lay buried in the wreckage for #{elapsed :the_glassfall, :the_rekindling} and needed only minor repair to function. A salvage crew found a transmitter that still had power, and one of them knew enough to make it talk. The signal reached #{ref :hab_meridian, "Hab Meridian"} and began the #{ref :the_rekindling, "Rekindling"}.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Wreck Ridge and Coast"
    The ridge runs for several kilometers and rises high enough to break the prevailing wind. From the seaward side it resembles dark stone threaded with pale glass. The inland face exposes rooms, conduits, pressure doors, and structural ribs from the fallen hab. Some openings lead into worked mines. Others remain sealed because the surrounding material carries load in ways surveyors have not mapped.

    Older streets follow the base of the ridge. The harbor and lower yards spread west toward the coast, while newer housing climbs the gentler slopes north and south. Mine roads enter the ridge at several levels and emerge at sorting terraces above town. Dust screens and wash stations stand wherever those roads cross public streets.

    The coast is rocky near the harbor and broadens into beaches farther north. Storms throw ordinary sand against ringglass debris and leave thin bright lines after the water retreats. Children collect the visible pieces; mine crews warn them away from any patch that answers a tool strike.
  PROSE
  prose <<~PROSE, section: :origin, heading: "Origin"
    No surviving record identifies the original ring hab, its name, or its residents. Glasswake's town records and mining practice treat the fragment as a working resource rather than a heritage site. Miners work the ringglass deposits in the impact debris. Old hab structures serve as foundations and warehouses, and one intact service room houses a pub.
  PROSE
  prose <<~PROSE, section: :economy, heading: "Economy"
    Mining remains the town's largest industry. The impact debris field holds a consistent volume of low-grade #{ref :ringglass, "ringglass"} aggregate, and current surveys project decades of accessible material. The work supports sorting yards, repair shops, freight crews, and the households around them.

    The town also sorts shower glass brought down by the #{ref :prismwell_kite_guild, "Prismwell Kite Guild"} and handles freight for western #{ref :avar, "Avar"}. Repair yards build mine fittings, kite catch frames, pumps, and road gear; #{ref :three_arms_yard, "Three Arms Yard"} handles the flexible frames used by shower scouts. The #{ref :pell_freight_assembly, "Pell Freight Assembly"} pools cargo work among independent crews based here.

    Reconnection history brings visitors. The old transmitter building is a museum, and the first-signal trail leads from town to #{ref :span_nine, "Span Nine"}. Inns, guides, food stalls, and shops selling stamped ringglass support a modest tourist trade. Museum fees pay for preservation of the transmitter rooms and the public path through the upper wreck.
  PROSE
  prose <<~PROSE, section: :people, heading: "Mine Town and Port"
    Glasswake shifts follow mine lifts, harbor tides, and kite arrivals. Sorting terraces begin early to use the cooler part of the day. Harbor crews work the water. Repair yards and shops bridge both schedules. Schools post their calendar beside the mine closure board because a major survey or shower front changes which adults are available for pickup.

    Mine crews include cutters, surveyors, haulers, washers, and structural readers. A cutter follows the grade. A structural reader decides whether removing it will wake another seam or transfer load into an occupied part of the wreck. Apprentices begin in the wash yards, where material can be sounded without standing under it.

    The dock fringe receives #{ref :ratters, "Ratter"} crews, steppe carriers, and independent kites that avoid the larger fees at Sithari. Lodging houses, chandlers, and late markets face the harbor. #{ref :the_dry_net, "The Dry Net"} combines cheap beds, sealed equipment storage, and an open hiring wall. Uptown offices handle #{ref :shear_compact, "Shear Compact"} inspections and mineral contracts. A load unloaded on the fringe may enter uptown as a certified mineral lot after washing, grading, and inspection.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "Atmosphere"
    Mine dust reaches every street near the ridge. Buildings use ringglass-reinforced stone, deep awnings, and grated entries where workers can leave boots and outer clothes. The fallen hab dominates the skyline, weathered into a dark slope until an old room or structural rib emerges from it.

    #{ref :span_nine, "Span Nine"} — the relay that carried the first signal — is a landmark on the ridge between Glasswake and #{ref :sithari, "Sithari"}. Tourists hike to it. Locals use it as a reference point for directions. "Past Span Nine, take the left fork."

    A surface-access spur connects Glasswake to #{ref :keel, "the Keel"}, the system's primary orbital trade lane. Kites descending from the Keel use the town as a minor waypoint and resupply stop.
  PROSE

  gm_note :appears, "Cargo and hiring both come in at the dock fringe, where kites, #{ref :ratters, "Ratter"} crews, and steppe carriers dodge Sithari's fees; inspections and mineral contracts sit uptown. A crew can be hired at one end of that walk in the morning and audited at the other by evening."
  gm_note :triggered_by, "Whatever the party brings off a claim only exists uptown after washing, grading and a #{ref :shear_compact, "Shear Compact"} inspection turn it into a certified lot. The fringe buys the same material unwashed, for less, and asks nothing about where it came from."
  gm_note :complicates, "Taking anything out of the wreck ridge is a structural reader's call rather than a cutter's, because pulling a grade can wake a second seam or shift load into an occupied part of the fragment. Crews who open a sealed face anyway learn which rooms underneath were carrying it."
end

relate :rel_glasswake_on_surface_kaleidos, :on_surface_of, :glasswake, :kaleidos do
  prose "Glasswake sits on the surface of #{ref :kaleidos, "Kaleidos"} — one of the two settlements that first reconnected when the long silence broke."
end
relate :rel_glasswake_located_in_kaleidos, :located_in, :glasswake, :kaleidos, since: 2160 do
  prose "It has held its stretch of coast since the early Famine, a surface town that kept its lights on through the worst of the isolation."
end
relate :rel_glasswake_adjacent_avar, :adjacent_to, :glasswake, :avar,
       props: { frame: :kaleidos_surface, bearing_deg: 90 } do
  prose "Avar begins inland of Glasswake's coastal hills."
end
relate :rel_glasswake_terminus_keel, :terminus_of, :glasswake, :keel do
  prose "Glasswake's surface-access spur forms one of the Keel's principal termini."
end

# --- history (moments) ---
moment :glasswake_founded, year: 2160, of: :glasswake do
  summary "Settlers founded Glasswake around a half-buried ring fragment on Kaleidos in 2160."
  prose "A ring fragment fell during the #{ref :the_glassfall, "Glassfall"} and half-buried itself, leaving a ridge of fused crystal and stone. The first settlers built against it for shelter during the Famine. Repeated arrivals added homes, mines, and workshops around the wreckage without a central plan."
end
moment :glasswake_first_signal, year: 2305, of: :glasswake do
  summary "A Glasswake salvage crew restored a transmitter and reached Hab Meridian in 2305, beginning the system's reconnection."
  prose "A salvage crew found a pre-Glassfall transmitter that still had power, and one of them knew enough to make it talk. The first long-range signal after the #{ref :signal_famine, "Signal Famine"} went from Glasswake to #{ref :hab_meridian, "Hab Meridian"}, whose receiver happened to still be listening. The reconnection of the system began with two communities that stumbled into it."
  effects { set :glasswake, standing: :reconnected }
end
relate :rel_glasswake_cooperates_hab_meridian, :cooperates_with, :glasswake, :hab_meridian, since: 2305 do
  prose "Its oldest tie is to #{ref :hab_meridian, "Hab Meridian"} — the hab that answered the First Signal — and the partnership has run continuously ever since."
  descriptive_identity(
    basis:
      "The tie runs through ordinary channels: cross-orbit freight, " \
      "delegation visits at the anniversaries, and a shared founding " \
      "story that each town tells at its own scale.",
    limits:
      "Glasswake is the partner that moved on. Its half of the " \
      "recording is gone, the transmitter building is a modest museum " \
      "beside a working mine, and the town treats the fallen fragment " \
      "as a resource where Meridian built a civilization around the " \
      "answering call."
  )
end
