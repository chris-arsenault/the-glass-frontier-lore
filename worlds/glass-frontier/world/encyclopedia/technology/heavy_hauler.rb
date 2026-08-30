encyclopedia :heavy_hauler do
  name "Heavy Hauler"
  summary "Heavy haulers are the largest civilian kite-driven cargo vessels in regular service. Vantara and independent crews carry bulk ringglass, water, food, and industrial goods along the Keel and outer-system routes."
  kind :technology
  subkind :vessel
  status :draft
  topics :trade, :transport, :ringglass, :"kinetic-freq", :orbital, :navigation
  prevalence :common
  appears_when all: { place: [:orbital] }
  appears_when all: { place: :outer_system }

  descriptive_identity(
    appearance: "Easy to name on approach by the bracketed silhouette of its reinforced hull frame — heavy " \
                "structural bracing laid over a long hull built around oversized kite arrays and modular cargo " \
                "bays. Through dangerous space it flies in formation with armed escort kites rather than alone.",
    aboard: "A small bridge and surprisingly comfortable quarters: galley, common rooms, individual cabins, " \
            "sometimes a small library, because crews of eight to twelve live aboard for weeks and often raise " \
            "children on the run. The holds are bulkheaded bays separated physically and by resonance, and any " \
            "coupled-freight bay travels dark with its instruments cut off from the ship's cadence.",
    behavior: "Slow by deliberate choice, steady when loaded and twitchy when the holds are empty, so operators " \
              "plan tonnage in both directions and treat a deadhead leg as a planning failure. The kite arrays " \
              "do most of the active piloting while the crew rotates through monitoring, maintenance, and rest; " \
              "the schedule almost always holds."
  )

  prose <<~PROSE
    Heavy haulers move bulk goods along #{ref :keel, "the Keel"} and the outer-system trade routes. They are the largest civilian #{encyclopedia_ref :kite_sail, "kite"}-driven vessels in regular commercial service, recognizable by oversized arrays, modular cargo bays, and the brackets of a reinforced hull frame. #{ref :vantara, "Vantara"} operates the largest fleet; independent crews run the rest.

    Several yards build regional and operator patterns to the same working specifications. Loaded haulers fly slowly and steadily enough for long schedules to hold. Their arrays become twitchy against an empty hull, so operators plan useful tonnage in both directions.
  PROSE
  prose <<~PROSE, section: :operations, heading: "What They Carry"
    Most heavy haulers, most of the time, are moving one of four cargoes.

    **Ringglass.** Bulk ringglass from the #{ref :the_shear, "Shear"}'s extraction operations and the surface refineries, in grades ranging from industrial-aggregate to specialist mid-grade. Ringglass is heavy, fragile under sympathetic resonance interference, and the system's single largest traded commodity by mass. A typical Keel-running hauler is loaded with thirty to sixty percent ringglass on most outbound legs.

    **Water.** Pelhari ice, processed water from the outer-system moons, and the smaller flows from surface aquifers. Water is the system's second-largest bulk trade good. It is moved in shielded tanks that occupy roughly a third of a typical hauler's interior volume on water runs. Crews tend to specialize in water work or specifically avoid it; the tankage is fussy and the runs are slow.

    **Foodstuffs and bulk consumables.** Grain from surface agricultural settlements, processed protein from hab-side fabrication, dry goods, the broad range of consumables that the system's habs cannot produce internally at the volumes their populations require. The trade has its own logistics culture and its own grumbling about Vantara's terms.

    **Equipment and industrial goods.** #{encyclopedia_ref :microcavities, "Microcavities"} by the lot, machined components, finished resonance instruments, hab fabrication outputs heading the other direction. The smallest fraction of typical cargo by volume and the highest fraction by value. Cargoes of equipment are routinely insured and escorted.

    A working hauler usually carries mixed cargo, broken into bays, with the bays bulkheaded against each other for both physical and resonance separation. A hauler running a single cargo type for a single buyer is a chartered run and is rare enough to attract notice.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Coupled Freight"
    Cargo from #{encyclopedia_ref :remote_cutting, "remote cutting"} receives a separate loading plan. Material recovered on different cutter clocks cannot share a resonance bus, a structural brace, or a water tank. The bays travel dark, with their monitoring instruments isolated from the vessel's main cadence.

    The rule followed #{ref :pell_four, "Pell Four"}, when four separated claims remained related through a shared processing clock. The #{ref :pell_freight_assembly, "Pell Freight Assembly"} wrote the first loading standard for its own member fleet. The #{ref :shear_compact, "Shear Compact"} adopted it for every hauler taking a remote-cut cargo through a public lane.

    Crews dislike the lost capacity. Empty bulkheads and separate instrument runs consume space that would otherwise earn freight. Masters enforce the rule because a coupled load can turn an ordinary brace or coolant line into a path between bays.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "Construction"
    A heavy hauler is built around its #{encyclopedia_ref :kite_sail, "kite"} arrays and its cargo capacity, in that order. Everything else — crew quarters, sensors, hull configuration — is laid out around the two structural priorities.

    The kite arrays are sized for the loaded vessel and oversized for its empty mass. Empty holds therefore make the handling twitchy, while a full load settles the response. Operators plan meaningful tonnage in both directions and price deadhead legs as lost capacity.

    The hull is structural-band reinforced beyond what the kite arrays require, because heavy haulers carry cargo through environments — the Keel's pirated stretches, the edges of the #{ref :the_shear, "Shear"}, the resonance interference around active #{ref :bloom_zones, "Bloom Zones"} — where structural failure has worse consequences for a loaded vessel than for an empty one. The reinforcement is heavy and visible; haulers are easy to identify on approach by the characteristic bracketed silhouette of their reinforced hull frame.

    The cargo holds are modular and rebuildable. A major port can reconfigure an interior over several days, allowing the same hull to carry ringglass one season and water the next. The cost keeps most vessels fitted for one primary cargo.

    A compact bridge leaves room for galleys, common rooms, individual cabins, and sometimes a library or training room. Crews live aboard for weeks and rotate through monitoring, maintenance, and rest while the kite arrays hold the routine course. Long-running crews commonly remain together for fifteen or twenty years.
  PROSE
  prose <<~PROSE, section: :people, heading: "Crew"
    A heavy hauler carries eight to twelve people under a master who combines operational command with commercial authority. Pilots rotate through two or three watches. A cargo officer oversees securing, manifests, and inter-port trade; independent crews commonly combine that work with another post. Two or three engineers and array-wrights maintain the hull and kite arrays, while deckhands cover watches, repairs, and work outside the hull.

    Keel runs require a #{ref :clarisant, "Clarisant"}-credentialed #{encyclopedia_ref :tuners, "Tuner"} under #{ref :shear_compact, "Shear Compact"} rules. The Tuner monitors array health and manages structural reinforcement through disturbed fields. Runs with armed escorts also assign one officer to the formation's shared traffic and maneuvering channel.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Escort"
    Heavy haulers do not, in general, fly alone through dangerous space. The Keel's pirated stretches, the outer-system routes past #{ref :the_fracture, "the Fracture"}, and any run that passes near known #{ref :coremark, "Coremark"} operating zones are flown with armed escort.

    Vantara operates the largest escort fleet — purpose-built armed kites that fly in formation with chartered haulers — and offers escort as a service to independents at standard rates. Independent escort operators exist and compete. The market is structured enough that a hauler captain planning a run knows roughly what escort the run will require and roughly what it will cost.

    Hauler and escort crews keep professionally separate circles. They eat at different mess halls in port, gather at different bars, and marry each other at lower rates than the wider working-spacer population. Fleet contracts reinforce the separation through distinct command chains and a single liaison on each vessel.
  PROSE
  prose <<~PROSE, section: :description, heading: "Variants"
    The heavy hauler class has several named subtypes that crews and operators recognize:

    **The Keelhauler.** The most common subtype. Long-hull configuration optimized for #{ref :keel, "Keel"} runs between #{ref :sithari, "Sithari"} and the ringglass production zones. Standard cargo capacity, reinforced hull, escort-friendly silhouette. Most independent operators run Keelhaulers.

    **The Outer-Run.** Larger, heavier, longer-leg variant for runs to and from the outer-system moons. Heavier resonance arrays, larger fuel reserves, more comfortable crew quarters. Vantara operates most of these; the route economics support large vessels and the larger vessels support better margins.

    **The Tank-Bulk.** Water-specialist configuration. The hull is built around large shielded water tanks, and the conversion to other cargoes is expensive enough that most Tank-Bulks stay in water service for their entire working lives. A specialist's vessel, run by specialist crews.

    **The Ring-Tender.** A smaller subtype for repeated short runs between adjacent ring habs, with limited deep-space capacity.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Fleet and Family Life"
    Vantara adds hulls cautiously while independent operators retain a share of the routes. Keel traffic sustains steady demand for escorts along the pirated stretches.

    Hauler wages support long careers and family quarters. Children are born aboard, study during port stops, take watches when they qualify, and often remain in the trade. The working population is older and changes crews less often than other spacer trades; a vessel remains small enough for everyone aboard to know one another through runs lasting weeks.
  PROSE

  cue "Getting anywhere along #{ref :keel, "the Keel"} usually means riding a hauler whose eight to twelve crew have sailed together for fifteen or twenty years, raise children aboard, and fold passengers into a watch rotation settled long before they booked passage."
  affordance "Chartering a hauler outright produces a vessel running one cargo for one buyer, and that manifest is rare enough that port clerks, rival masters, and escort operators all read something into it."
  pressure "Coupled freight requires separate clocks, instrument runs, braces, and tankage for each recovery. The isolation preserves the claims and consumes cargo space that would otherwise earn freight."

end
