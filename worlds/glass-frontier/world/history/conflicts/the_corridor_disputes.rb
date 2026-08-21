conflict :the_corridor_disputes do
  name "The Corridor Disputes"
  subkind :dispute
  status :complete
  tags :transport, :trade, :governance, :diplomacy, :danger
  prominence :recognized

  prose <<~PROSE
    The Corridor Disputes are the continuing arguments over who may open, close, mark, and charge for the branch routes of #{ref :keel, "the Keel"}. The term covers dozens of claims between carriers, ports, rescue pools, regulators, and settlements. Most concern a route everyone agrees exists and nobody governs from end to end.

    The current disputes began in 2433 when Bloom movement, glassfall fronts, and two major debris drifts closed several established branches within one shipping season. Traffic moved onto neighboring corridors whose beacons, rescue coverage, and receiving ports had been built for smaller loads. Emergency arrangements became fees and operating rules before the diverted carriers agreed who had authority to make them permanent.
  PROSE

  prose <<~PROSE, section: :operations, heading: "When a Corridor Is Open"
    A usable corridor combines current charts, working beacons, a port willing to receive the vessel, rescue coverage for the difficult portions, and notice of any Bloom cordon, shower front, or Shear drift that changes the approach. When one part lapses, different organizations record different route states.

    A pilot may call a route open because a survey flight crossed it that morning. An insurer can call the same route closed because no rescue vessel covers its middle leg. A port may accept passengers and refuse remote-cut cargo. The #{ref :shear_compact, "Shear Compact"} can close the section inside its regulated working zones while lacking authority over the clear space beyond them.

    Those differences appear on departure boards as conditions rather than one answer. Crews read who supplied each mark. A Prismwell forecast, a Compact closure, an Assembly rescue limit, and a receiving port's cargo rule may all apply to one voyage.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Carriers and Route Keepers"
    #{ref :prismwell_kite_guild, "The Prismwell Kite Guild"} publishes shower crossings and withdraws them when the measured stream leaves its forecast window. It will not accept liability for a carrier that departs on an old reading. Independent pilots argue that a forecast useful only while a guild clerk remains awake is not public route infrastructure.

    #{ref :pell_freight_assembly, "The Pell Freight Assembly"} wants rescue duties and loss coverage agreed before a corridor opens. Its member crews can refuse a route, and the Assembly cannot order them to fly. That makes its coverage dependable where enough crews consent and absent where a central schedule says it should exist.

    #{ref :vantara, "Vantara"} maintains the largest single beacon and waystation network. It charges usage fees on branches where its stations provide the only continuous service. Other carriers use the beacons and contest fees that continue after a public port or local cooperative has taken over part of the work.

    The Compact regulates salvage traffic through managed Shear corridors and inspects vessels carrying unstable loads. It does not operate the passenger stops, surface terminals, or distant rescue pools that make those corridors useful. Every participant controls a necessary piece and arrives at mediation with records showing that its piece carried more cost than the others admit.
  PROSE

  prose <<~PROSE, section: :tensions, heading: "Fees, Rescue, and Cargo"
    The largest claims concern empty return legs and rescues. A diverted hauler may reach its destination through a safe branch and leave the rescue pool responsible for weeks of standby that produced no incident. Carriers call the charge payment for nothing. Rescue crews call an uneventful passage the service they sold.

    Cargo classification creates another line of dispute. Remote-cut material requires isolated bays and a port willing to keep separated clocks. Bloom-sensitive instruments need routes whose beacons do not repeat one signal cadence. Passenger craft can use a branch that refuses both. A corridor advertised without those limits attracts vessels that must turn back at the final stop.

    Forged marks have appeared on several independent boards. Some redirect traffic toward overpriced waystations. Others copy a valid closure after it has expired and leave a competing branch empty. Route offices now seal notices with local tones and a written expiry. A copied tone can still be replayed, and a written time does little for a crew whose receivers were quiet when the update passed.
  PROSE

  prose <<~PROSE, section: :governance, heading: "Accord Panels"
    The #{ref :tempered_accord, "Tempered Accord"} convenes corridor panels when the parties request mediation. A panel compares maintenance logs, rescue readiness, traffic diverted, and the authority each port or regulator actually holds. Its finding can apportion fees and publish a common route state for members that accept it.

    The finding does not bind an independent pilot, a nonmember settlement, or a carrier that prefers to lose access rather than accept the terms. Enforcement occurs through ports, insurance pools, repair yards, and the willingness of other crews to share observations. The process works best where the parties need one another again on the next leg.

    Panels sit at Accord Shore and at temporary offices near the disputed route. Pilots prefer the latter because a mediator can inspect the beacon and departure board. Legal teams prefer Sithari because the records arrive there first.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "Present Routes"
    The most active claims concern the Pell approaches and the branches that skirt the growing Bloom cordons. Several former alternatives now carry glassfall traffic as well as freight diverted from Karet-3. Prismwell wants shorter forecast windows. The Assembly wants another rescue vessel before accepting the published schedule. Vantara has offered one under a fee arrangement the independents reject.

    Traffic continues under conditional marks. Departures wait for a named forecast, carry extra reserve, and list which rescue pool accepted the voyage. A missed connection can strand a crew at a small waystation. A false open mark can put them beyond any pool's declared reach.
  PROSE
end

moment :corridor_disputes_begin, year: 2433, of: :the_corridor_disputes do
  prose "Simultaneous Bloom, shower, and debris closures diverted Keel traffic onto branch routes whose keepers had never agreed on common fees, rescue duties, or authority to reopen them."
  effects { set :the_corridor_disputes, standing: :active }
end

relate :rel_corridor_disputes_manifest_keel, :manifests_at, :the_corridor_disputes, :keel do
  prose "The disputes follow the branch routes of #{ref :keel, "the Keel"}, especially where one organization's service ends before the next begins."
end
relate :rel_prismwell_participated_corridor_disputes, :participated_in, :prismwell_kite_guild, :the_corridor_disputes do
  prose "Prismwell contests how long a shower forecast keeps a corridor open and who bears the risk after its window ends."
end
relate :rel_pell_assembly_participated_corridor_disputes, :participated_in, :pell_freight_assembly, :the_corridor_disputes do
  prose "The Assembly ties route status to crew consent, rescue coverage, and the cargo facilities waiting at the far end."
end
relate :rel_vantara_participated_corridor_disputes, :participated_in, :vantara, :the_corridor_disputes do
  prose "Vantara seeks payment for beacons and waystations used by carriers that reject its wider route contracts."
end
relate :rel_shear_compact_participated_corridor_disputes, :participated_in, :shear_compact, :the_corridor_disputes do
  prose "The Compact closes and inspects the portions passing through managed Shear corridors while disclaiming authority beyond them."
end
relate :rel_bloom_zones_caused_corridor_disputes, :caused, :bloom_zones, :the_corridor_disputes do
  prose "Moving Bloom cordons forced traffic onto underserviced branches and made temporary route arrangements persistent."
end
relate :rel_glassfall_showers_caused_corridor_disputes, :caused, :glassfall_showers, :the_corridor_disputes do
  prose "Changing shower fronts close and reopen crossings faster than route fees and rescue obligations can be renegotiated."
end
