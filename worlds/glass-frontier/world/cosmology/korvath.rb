geographic_location :korvath do
  name "Korvath"
  playable_as :chronicle_location
  subkind :celestial_body
  status :complete
  tags :"outer-system", :resonance, :trade, :governance, :ecology
  prominence :recognized
  position frame: :kaleidos_system_chart, radius: 3, angle_deg: 126

  prose <<~PROSE
    Korvath is the next world beyond Kaleidos, larger in land and sea and home to settlements founded long before #{ref :coremark, "Coremark"}. Its temperate belts support broad river plains, old forests, upland pasture, and cities connected by coastal shipping. The planet receives less ring debris than Kaleidos. Its sky is usually clear of the bright broken band that hangs over the inner world.

    Coremark keeps its headquarters here and has corrupted several ports, freight houses, and local offices. That network is powerful, concealed, and concentrated in the northern freight economy. Korvath's farms, fisheries, schools, roads, and water systems employ far more people and answer to their own local institutions.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Continents and Water"
    Deep oceans divide three large continental masses and many island chains. The largest settled belt lies around a warm middle sea where short crossings connect old port cities. Mountain arcs stand close to several coasts, catching rain and feeding rivers through fertile low country. Interiors beyond those ranges are drier: open woodland gives way to grass and red stone tablelands.

    #{ref :dovra, "Dovra"} occupies one of the broadest river plains. Its channels divide and rejoin across tidal islands before reaching the middle sea. Towns there move levees, gates, ferries, and sometimes whole workshops as the water chooses new ground.

    Northern industrial ports work iron, ceramics, ship plate, and heavy machinery. Their hinterlands contain mines and quarry towns rather than empty company territory. Southern coasts are warmer and more agricultural, with orchard belts, salt works, and fishing fleets. Long inland roads remain important because many towns lie beyond economical kite service.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "A Low, Broad Field"
    Korvath's native stone carries resonance weakly across long distances. Iron-rich strata produce broad structural responses that surveyors can follow from ridge to ridge, but there is little natural material capable of concentrating those fields. Imported ringglass works well and remains localized around the arrays built from it.

    The result is a visible boundary around resonance infrastructure. A port crane answers brightly through its tuned foundation while the road beyond it uses counterweight, cable, and ordinary engines. A hospital maintains ringglass storage and redundant lines; a village mill may use water because its imported kinetic cut would cost more to replace than the wheel. Korvathi builders choose by supply and repair distance.

    Large arrays must be isolated from the native strata. A poorly seated drive can send a shallow pulse through kilometers of iron-bearing stone and return an answer from another machine, bridge, or quarry face. Foundations use dead layers of ceramic and loose aggregate to break the path. Korvath's ceramic industry grew partly from that demand and now exports insulating blocks across the system.
  PROSE
  prose <<~PROSE, section: :people, heading: "Korvathi Settlements"
    The Signal Famine isolated Korvath from Kaleidos without dividing the planet as completely as the ring divided its habs. Coastal radio, short-range kites, and ordinary shipping kept many regions in contact. Planetary institutions weakened, while port leagues, river boards, provincial courts, and road compacts took on work that had once belonged to a central administration.

    Those institutions persist. A cargo crossing Korvath may pass through several sets of weights, inspection seals, and labor rules before it reaches orbit. Sitharian firms complain about the paperwork and employ Korvathi brokers who know which documents matter. Residents see no reason to replace working local systems with a single planetary standard merely to ease off-world trade.

    Regional cultures differ in speech, food, building material, and public manners. Dovra towns live with shifting channels and collective flood work. Northern port families often have ties to both shipyards and interior mines. Upland communities organize around seasonal roads and shared pasture. "Korvathi" becomes strongest off-world, where those differences are flattened by people who know the planet chiefly through Coremark.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Coremark's Shadow"
    Coremark began as a legitimate extraction company headquartered in the northern industrial belt. Its offices, payroll, yards, and political donations were ordinary parts of several port economies. After the Silent Bloom and the company's disgrace, some sites closed, some changed names, and others continued through owners whose formal distance from the syndicate survives only on paper.

    The criminal network uses Korvath for finance, rest, recruitment, repair, and the sale of cargo arriving from the Shear. It does not openly govern the planet. Municipalities vary from compromised to actively hostile, with many occupying the practical middle: enforcing visible law while avoiding a confrontation they cannot finish. Coremark relies on that unevenness and works to keep Korvath from forming one response.

    Civil resistance is equally local. Dock unions refuse suspect cargoes. Insurers share hull and manifest patterns. River towns deny warehouse leases to companies that cannot name their owners. Other officials take payment. The line does not divide cleanly between cities or professions, which makes the syndicate harder to remove and prevents it from claiming any region as uncontested ground.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Korvath trades heavily with Kaleidos and the outer worlds. It exports food, ceramic insulation, ironwork, machinery, and ship plate while importing ringglass, precision instruments, and high-output arrays. Scheduled kites connect the major ports. Smaller towns feed those routes through river and road systems built during the Famine.

    A campaign by several port insurers has begun refusing coverage to freight houses that will not disclose their full ownership. Legitimate carriers are complying unevenly. Coremark fronts are dividing contracts among smaller firms to stay below the reporting threshold, spreading the same business through more of the economy it already burdens.
  PROSE

  gm_note :appears, "A cargo crossing Korvath meets a fresh set of weights, seals, and labor rules at every port league, river board, and road compact on the way. Crews who did not hire a Korvathi broker lose days learning which document actually stops the load and which one a clerk waves through."
  gm_note :triggered_by, "Run a sizeable array straight off Korvathi ground, with no ceramic and loose aggregate under it, and the pulse travels kilometers through iron-bearing strata. The answer comes back from whatever else is tuned along that path: a quarry face, a port crane, a bridge with people on it."
  gm_note :complicates, "Asking a Korvathi town to move against #{ref :coremark, "Coremark"} gets a local answer rather than a planetary one: the dock union refuses the cargo while the harbor office mislays the paperwork. Both offices are telling the truth about their own jurisdiction, and neither can finish it alone."
end

relate :rel_korvath_orbits_the_sun, :orbits, :korvath, :the_sun do
  prose "Korvath follows Kaleidos around #{ref :the_sun, "the sun"} as the system's third world."
end
relate :rel_korvath_inner_of_vitrael, :inner_of, :korvath, :vitrael do
  prose "Korvath's orbit lies inside #{ref :vitrael, "Vitrael"}."
end
relate :rel_korvath_part_of_system, :part_of, :korvath, :kaleidos_system do
  prose "Korvath is the third world of #{ref :kaleidos_system, "the Kaleidos system"}."
end
