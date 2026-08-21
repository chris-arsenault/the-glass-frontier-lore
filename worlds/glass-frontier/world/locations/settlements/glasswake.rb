installation :glasswake do
  name "Glasswake"
  subkind :settlement
  path "player/locations/settlements/glasswake.md"
  status :complete
  reviewed "2026-03-18"
  tags :surface, :trade, :"ring-era"
  prominence :recognized

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
end

relate :rel_glasswake_on_surface_kaleidos, :on_surface_of, :glasswake, :kaleidos do
  prose "Glasswake sits on the surface of #{ref :kaleidos, "Kaleidos"} — one of the two settlements that first reconnected when the long silence broke."
end
relate :rel_glasswake_located_in_kaleidos, :located_in, :glasswake, :kaleidos, since: 2160 do
  prose "It has held its stretch of coast since the early Famine, a surface town that kept its lights on through the worst of the isolation."
end

# --- history (moments) ---
moment :glasswake_founded, year: 2160, of: :glasswake do
  prose "A ring fragment fell during the #{ref :the_glassfall, "Glassfall"} and half-buried itself, leaving a ridge of fused crystal and stone. The first settlers built against it for shelter during the Famine. Repeated arrivals added homes, mines, and workshops around the wreckage without a central plan."
end
moment :glasswake_first_signal, year: 2305, of: :glasswake do
  prose "A salvage crew found a pre-Glassfall transmitter that still had power, and one of them knew enough to make it talk. The first long-range signal after the #{ref :signal_famine, "Signal Famine"} went from Glasswake to #{ref :hab_meridian, "Hab Meridian"}, whose receiver happened to still be listening. The reconnection of the system began with two communities that stumbled into it."
  effects { set :glasswake, standing: :reconnected }
end
relate :rel_glasswake_cooperates_hab_meridian, :cooperates_with, :glasswake, :hab_meridian, since: 2305 do
  prose "Its oldest tie is to #{ref :hab_meridian, "Hab Meridian"} — the hab that answered the First Signal — and the partnership has run continuously ever since."
end
