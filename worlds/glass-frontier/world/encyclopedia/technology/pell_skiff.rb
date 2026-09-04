encyclopedia :pell_skiff do
  name "Pell Skiff"
  summary "A Pell skiff is a salvage vessel built to recover unstable debris without bringing its crew alongside the claim. Separate cutters, receivers, and processing rooms keep each return isolated until the crew knows what came back."
  kind :technology
  subkind :vessel
  status :complete
  log "2026-08-31 — Renamed Claim Rig to Pell Skiff; Pell names the route and yard tradition that standardized the isolated-receiver design, and skiff is the crews' own vessel word."
  capacity "Three to twelve crew, one to four remote cutters, and isolated receiving rooms"
  topics :transport, :salvage, :resonance, :orbital, :danger, :trade
  prevalence :common
  appears_when all: { place: [:debris_field] }

  descriptive_identity(
    appearance: "Outwardly it could be anything — a converted cargo craft, survey hull, or old passenger kite — " \
                "carrying one to four unmanned cutters in cradles. What marks a working Pell skiff is its repairs: scrape " \
                "marks around a shutter, mismatched wall plates, a breaker moved within easier reach.",
    aboard: "Short passages, heavy shutters, cleanable walls, exposed manual breakers, and painted deck routes " \
            "showing which controls belong together. Each cutter has its own receiver, clock, and power break; " \
            "closed rooms carry a physical tally outside the door naming who may reopen them. Cabins sit at the " \
            "clean end past the bridge, and boots and outer clothing do not cross into them unwashed.",
    behavior: "It stands off from the claim and takes material through remote cutters, each return landing in an " \
              "isolated bay that is sounded and sampled before anything opens inward. A good cut looks uneventful " \
              "from the bridge and exhausting in the process rooms. Returns sometimes carry living things — a " \
              "cutter wake — and the response is to seal the room and kill every tone beyond it, because the " \
              "intruder follows the strongest useful signal. Crews drop receivers and shear cutter lines before " \
              "risking the route home."
  )

  prose <<~PROSE
    A Pell skiff is a salvage vessel built to receive material from unstable debris without bringing its crew alongside the claim. It carries one or more unmanned cutters, a separate receiver for each cutter, and enough processing rooms to decide what has come back before opening it to the rest of the ship. #{encyclopedia_ref :ratters, "Ratters"} call almost every vessel they fly a skiff. The Pell pattern is the kind whose interior is arranged around doors that may need to close quickly.

    Some Pell skiffs began as cargo craft, survey hulls, or old passenger kites. Others were built for remote work. Their outward forms vary. The repeated features are visible inside: short passages, heavy shutters, cleanable walls, exposed manual breakers, and instrument runs that do not share a clock.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "The Receiving Side"
    A cutter couples a selected seam to the Pell skiff through #{encyclopedia_ref :claim_coupling, "Claim Coupling"}. The returned material enters an outer bay lined with replaceable plates. Loose dust settles first. Mechanical screens separate large stock from fragments that could reach a valve or door track. A second room receives useful material only after the outer bay has been sounded, sampled, and brought inside the skiff's pressure limits.

    Each active cutter has its own receiver, clock, power break, and record. Painted routes on the deck show which controls belong together. The separation consumes space and cable, yet it prevents one coherent return from using the ship itself as a path into another claim. Crews adopted the layout after #{ref :pell_four, "Pell Four"}; shared clocks disappeared from licensed Pell skiffs within a season.

    The shutters can be driven from the bridge and released by hand beside each opening. The hand wheel is slow because speed matters less than certainty after the powered system has given a false safe reading. A closed room carries a physical tally outside it: pressure, heat, field response, last entry, and the name of the person who may reopen it.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Working a Claim"
    A Pell skiff approaches only close enough to maintain a clear cutter path. The crew maps local debris, places retreat marks, and sounds the receiving rooms before launching anything. A Tuner chooses the seam response. A cutter operator flies the machine in, fixes the anchor head, and confirms that every return path ends in the intended bay. The deck lead's readback of the room state authorizes the tone.

    Once material begins arriving, the vessel handles heat, pressure, waste, and resonance load that the claim no longer carries. The pilot keeps the skiff oriented while the receiving crew trims the flow. A good cut looks uneventful from the bridge and exhausting in the process rooms. The most valuable stock may arrive in minutes; cooling, separation, and cleaning can occupy the rest of the watch.

    Crews treat cutters as expendable and protect the route home before the machine. A Pell skiff that drops a receiver, shears its cutter line, and leaves with empty holds may still have completed the job correctly.
  PROSE

  prose <<~PROSE, section: :dangers, heading: "Cutter Wakes"
    Remote returns sometimes carry living things. Deckmouths arrive in trapped pressure. Flintjacks follow active current. Small shear-jellies cling to loose material and open when the receiving atmosphere thickens. Crews call the intrusion a cutter wake and train for it as part of ordinary remote work.

    The first response is to close the room and turn off every tone beyond it. Barriers and tuned deck weapons remain inside the bay, available without reopening the threatened door. A wake becomes difficult when a beast crosses into a shared service passage or when an operator keeps a downstream machine active. The intruder follows the strongest useful signal, which is often the equipment the crew most wants to save.

    Older Pell skiffs are judged by how well they were rebuilt after wakes. Scrape marks around a shutter, mismatched wall plates, and a breaker moved within easier reach carry more information than a clean sales record.
  PROSE

  prose <<~PROSE, section: :people, heading: "A Small Working Vessel"
    A two-cutter Pell skiff usually carries a pilot, cutter operator, Tuner, deck lead, and two or three process hands. On a small crew those jobs overlap until the first live return, when every person must remain at one station. Larger skiffs add repair staff and separate watches rather than placing more people in the receiving line.

    The crew lives close to the work. Cabins occupy the clean end of the hull beyond the bridge, with the galley and air plant between habitation and processing. Boots, tools, and outer clothing remain on the processing side until they have been washed and sounded, and the crossing rule is painted on the clean-end door.

    Independent crews own many Pell skiffs outright or owe on them through a broker, yard, or flotilla debt. The #{ref :pell_freight_assembly, "Pell Freight Assembly"} maintains shared receivers and finances rebuilds for its members. A skiff remains its crew's vessel under those arrangements. The Assembly can deny a berth to unsafe work; it does not take the helm.
  PROSE

  cue "Buyers, hirers, and berth masters read a Pell skiff's history off its repairs. Scrape marks around a shutter, mismatched wall plates, and a breaker moved within easier reach carry more about what the vessel has survived than its sales record does."
  cue "The repeated features are visible inside: short passages, heavy shutters, cleanable walls, exposed manual breakers, and instrument runs that do not share a clock."
  affordance "The hand wheel and physical tally let a deck lead verify pressure, heat, field response, and last entry at the opening before releasing a room whose powered system has reported safe."
  pressure "Jobs overlap freely on a small Pell skiff until the first live return, and then pilot, cutter operator, Tuner, deck lead, and process hands are each fixed to one station. Anything needing a spare pair of hands while the tone runs costs whichever station is left empty."
  variation "Converted cargo craft, survey hulls, and passenger kites keep their old outer silhouettes while gaining heavy shutters, exposed breakers, and isolated receiving bays inside."
  variation "Purpose-built Pell skiffs give every cutter its own receiver and clock, with the cabins past the bridge at the clean end of the vessel."

end
