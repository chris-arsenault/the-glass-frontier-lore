transport :heavy_hauler do
  name "Heavy Hauler"
  subkind :vessel
  path "player/ships/civilian/heavy-hauler.md"
  tags :trade, :transport, :ringglass, :"kinetic-freq", :orbital, :navigation
  prominence :recognized

  prose <<~PROSE
    The industrial cargo vessel class that moves bulk goods along #{ref :keel, "the Keel"} and the outer-system trade routes. Heavy haulers are the largest civilian #{ref :kite_sail, "kite"}-driven vessels in regular commercial service: slow by deliberate choice, sturdy by necessity, and load-bearing for nearly the entire system's bulk economy. #{ref :vantara, "Vantara"} operates the largest fleet; independent operators run the rest. A heavy hauler is the unglamorous backbone of orbital civilization.

    The class is not a single design. It is a recognizable shape and a set of working specifications that several yards build to, with regional and operator variations. What unites the class is what the class is for: moving a lot of mass through a lot of distance reliably enough that the schedule almost always holds.
  PROSE
  prose <<~PROSE, section: :operations, heading: "What They Carry"
    Most heavy haulers, most of the time, are moving one of four cargoes.

    **Ringglass.** Bulk ringglass from the #{ref :the_shear, "Shear"}'s extraction operations and the surface refineries, in grades ranging from industrial-aggregate to specialist mid-grade. Ringglass is heavy, fragile under sympathetic resonance interference, and the system's single largest traded commodity by mass. A typical Keel-running hauler is loaded with thirty to sixty percent ringglass on most outbound legs.

    **Water.** Pelhari ice, processed water from the outer-system moons, and the smaller flows from surface aquifers. Water is the system's second-largest bulk trade good. It is moved in shielded tanks that occupy roughly a third of a typical hauler's interior volume on water runs. Crews tend to specialize in water work or specifically avoid it; the tankage is fussy and the runs are slow.

    **Foodstuffs and bulk consumables.** Grain from surface agricultural settlements, processed protein from hab-side fabrication, dry goods, the broad range of consumables that the system's habs cannot produce internally at the volumes their populations require. The trade has its own logistics culture and its own grumbling about Vantara's terms.

    **Equipment and industrial goods.** #{ref :microcavities, "Microcavities"} by the lot, machined components, finished resonance instruments, hab fabrication outputs heading the other direction. The smallest fraction of typical cargo by volume and the highest fraction by value. Cargoes of equipment are routinely insured and escorted.

    A working hauler usually carries mixed cargo, broken into bays, with the bays bulkheaded against each other for both physical and resonance separation. A hauler running a single cargo type for a single buyer is a chartered run and is rare enough to attract notice.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Coupled Freight"
    Cargo from #{ref :remote_cutting, "remote cutting"} receives a separate loading plan. Material recovered on different cutter clocks cannot share a resonance bus, a structural brace, or a water tank. The bays travel dark, with their monitoring instruments isolated from the vessel's main cadence.

    The rule followed #{ref :pell_four, "Pell Four"}, when four separated claims remained related through a shared processing clock. The #{ref :pell_freight_assembly, "Pell Freight Assembly"} wrote the first loading standard for its own member fleet. The #{ref :shear_compact, "Shear Compact"} adopted it for every hauler taking a remote-cut cargo through a public lane.

    Crews dislike the lost capacity. Empty bulkheads and separate instrument runs consume space that would otherwise earn freight. Masters enforce the rule because a coupled load can turn an ordinary brace or coolant line into a path between bays.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "Construction"
    A heavy hauler is built around its #{ref :kite_sail, "kite"} arrays and its cargo capacity, in that order. Everything else — crew quarters, sensors, hull configuration — is laid out around the two structural priorities.

    The kite arrays are oversized for the vessel's empty mass and properly sized for the loaded mass. A heavy hauler does not perform well when light; the ratio of array capacity to hull mass produces handling that crews describe as twitchy when the holds are empty and steady when they are full. Most operators schedule their runs so that haulers carry meaningful tonnage in both directions, and a hauler that has to deadhead a return leg is considered a planning failure.

    The hull is structural-band reinforced beyond what the kite arrays require, because heavy haulers carry cargo through environments — the Keel's pirated stretches, the edges of the #{ref :the_shear, "Shear"}, the resonance interference around active #{ref :bloom_zones, "Bloom Zones"} — where structural failure has worse consequences for a loaded vessel than for an empty one. The reinforcement is heavy and visible; haulers are easy to identify on approach by the characteristic bracketed silhouette of their reinforced hull frame.

    The cargo holds are modular and rebuildable. A hauler's interior layout can be reconfigured at a major port over a few days, allowing the same hull to carry ringglass one season and water the next. The reconfiguration is expensive, and most operators settle their haulers into a primary cargo type that the hull is set up for, but the flexibility exists and is occasionally used.

    The bridge is small. The crew quarters are surprisingly comfortable. Heavy hauler crews live aboard for weeks at a time on long-leg runs, and the operating economics support reasonable habitation: galleys, common rooms, individual cabins, sometimes a small library or training room. A hauler crew on a routine run does not work continuously; the kite arrays handle most of the active piloting, and the crew rotates through monitoring, maintenance, and rest. Crews tend to be middle-aged and stable. A long-running hauler crew may have been together for fifteen or twenty years.
  PROSE
  prose <<~PROSE, section: :people, heading: "Crew"
    A typical hauler runs with a crew of eight to twelve. The roster is consistent across operators.

    A **master** holds operational command, makes commercial decisions on the captain's behalf where the captain is the operator rather than the vessel's primary pilot, and is generally the most experienced person aboard.

    A **pilot or pilot-pair** handles active flight operations: maneuvering, kite-array management, traffic coordination. Long runs split the pilot work between two or three rotating watches.

    A **resonance officer**, almost always a #{ref :clarisant, "Clarisant"}-credentialed #{ref :tuners, "Tuner"} on contract, monitors the array health, handles structural-band reinforcement during transit through difficult resonance environments, and answers for anything that would otherwise require a Tuner. Smaller operators sometimes try to do without; the savings rarely justify the risk, and the #{ref :shear_compact, "Shear Compact"} has standing rules requiring a credentialed Tuner aboard for any Keel run.

    A **cargo officer** handles loading, securing, manifest verification, and the small commerce of inter-port trade. On Vantara haulers this is a formal position; on independents it is often combined with another role.

    **Engineers and array-wrights** handle mechanical and resonance-array maintenance. Two or three of these is standard. They are the most technically skilled members of most hauler crews and the ones who can keep the vessel running through equipment failure.

    **Deckhands and watch crew** handle the broader run of shipboard work: cleaning, repairs, watch standing, EVA when required. Often the youngest members of the crew, working their way through the qualifications that lead to specialist positions.

    **Escort liaison.** On runs through dangerous space, a junior officer coordinates with the armed escort. The position exists because the relationship between hauler crews and escort crews is professionally and culturally distinct and benefits from a single point of contact on each side.

    The crew shape varies. The numbers do not vary much.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Escort"
    Heavy haulers do not, in general, fly alone through dangerous space. The Keel's pirated stretches, the outer-system routes past #{ref :the_fracture, "the Fracture"}, and any run that passes near known #{ref :coremark, "Coremark"} operating zones are flown with armed escort.

    Vantara operates the largest escort fleet — purpose-built armed kites that fly in formation with chartered haulers — and offers escort as a service to independents at standard rates. Independent escort operators exist and compete. The market is structured enough that a hauler captain planning a run knows roughly what escort the run will require and roughly what it will cost.

    The relationship between hauler crews and escort crews is professionally formal and culturally distant. They eat at different mess halls when in port. They party at different bars. They marry each other at lower rates than the general working-spacer population. The cultural separation is partly a function of the different temperaments the two jobs select for — haulers are patient and methodical, escorts are alert and aggressive — and partly a function of long-standing institutional preference for keeping the two functions distinct. The arrangement holds and works.
  PROSE
  prose <<~PROSE, section: :description, heading: "Variants"
    The heavy hauler class has several named subtypes that crews and operators recognize:

    **The Keelhauler.** The most common subtype. Long-hull configuration optimized for #{ref :keel, "Keel"} runs between #{ref :sithari, "Sithari"} and the ringglass production zones. Standard cargo capacity, reinforced hull, escort-friendly silhouette. Most independent operators run Keelhaulers.

    **The Outer-Run.** Larger, heavier, longer-leg variant for runs to and from the outer-system moons. Heavier resonance arrays, larger fuel reserves, more comfortable crew quarters. Vantara operates most of these; the route economics support large vessels and the larger vessels support better margins.

    **The Tank-Bulk.** Water-specialist configuration. The hull is built around large shielded water tanks, and the conversion to other cargoes is expensive enough that most Tank-Bulks stay in water service for their entire working lives. A specialist's vessel, run by specialist crews.

    **The Ring-Tender.** A smaller subtype operating on the short routes between adjacent ring habs. Limited deep-space capability; built for repeated short runs. Sometimes argued to be a separate class rather than a hauler variant; the argument is academic.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Heavy haulers are doing what they have always done. The fleet is large, stable, slowly evolving, and quietly profitable. Vantara is expanding cautiously. Independents are holding their own. The Keel sees increasing traffic year over year as the system's economic activity grows. The escort economy is steady. The pirate problem is ongoing and managed.

    A career on the haulers is a respectable life. The wages are decent. The work is steady. The crews are good company. The vessels are large enough to feel like home and small enough that everyone aboard knows everyone else. People raise families on the haulers — children born aboard, schooled in port stops, working the watch by the time they are old enough — and many of those children stay in the trade. The hauler population is older than the general working-spacer population and substantially more stable. The system runs on what they carry. They know it. They take the work seriously.
  PROSE

  gm_note :appears, "Getting anywhere along #{ref :keel, "the Keel"} usually means riding a hauler whose eight to twelve crew have sailed together for fifteen or twenty years, raise children aboard, and fold passengers into a watch rotation that was settled long before the party booked passage."
  gm_note :triggered_by, "Chartering a hauler outright produces a vessel running one cargo for one buyer, and that manifest is rare enough that port clerks, rival masters, and escort operators all read something into it."
  gm_note :complicates, "A coupled-freight load rides in bulkheaded bays with its monitoring instruments cut off from the ship's cadence, so no one aboard can tell the party what is in those bays or whether anything has changed inside them since loading."
end

relate :rel_heavy_hauler_operates_keel, :operates_in, :heavy_hauler, :keel, since: 2335 do
  prose "Heavy haulers work #{ref :keel, "the Keel"}, carrying bulk freight between its orbital and surface terminals."
end
relate :rel_heavy_hauler_carries_ringglass, :carries, :heavy_hauler, :ringglass, since: 2335 do
  prose "Most outbound haulers carry bulk #{ref :ringglass, "ringglass"} in resonance-separated bays."
end
