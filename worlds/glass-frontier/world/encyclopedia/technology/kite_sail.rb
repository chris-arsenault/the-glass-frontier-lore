encyclopedia :kite_sail do
  title "KITE"
  kind :technology
  subkind :motive_engine
  status :complete
  summary "A kite is the general-purpose motive engine of the Kaleidos system, moving vehicles by redirecting opposing forces through kinetic-band resonance. The same engine drives surface craft, orbital vessels, and Shear-rated ships."
  function "Moves vehicles by redirecting opposing forces into a frequency null space"
  reviewed "2026-03-19"
  log "2026-08-09 — the null space's \"two centuries of use\" is anchored to a future, Kite-sail development, with 200 years standing in. Nothing in canon dates the invention; a kite runs on ambient resonance, which this entry says came from ringglass the shattering scattered, so it cannot predate the Glassfall (295 years). Write that event with a year and the span computes itself."
  log "2026-08-21 — Dated the first repeatable kite record to 2235, within the Signal Famine and two centuries before the present."
  topics :transport, :resonance, :"kinetic-freq", :trade
  prevalence :common
  available_globally
  aka "Kinetic Inverse Transport Engine"
  classes "Flitters, personal craft, haulers, Shear vessels, warships and capital craft"
  operating_environments "Atmosphere, vacuum and the Shear"
  operating_limit "Requires continuous resonance input; cannot move a ring habitat"

  cue "Every kite keeps sail surfaces carrying structural-band arrays, with a kinetic-band ringglass array beneath them."
  cue "A running drive gives off the hum of working machinery pitched just below notice."
  affordance "The same engine can run a surface route, lift to orbit, dock at a ring hab, and push into a debris field."
  pressure "In dead space a ship that exhausts its stored charge does not slow; it keeps whatever momentum it had and goes where that points."
  variation "Short-range flitters carry passengers and light cargo within and between settlements."
  variation "Shear-rated vessels carry additional structural-band arrays for reality stabilization shielding."

  descriptive_identity(
    appearance:
      "Every kite keeps its sails: surfaces carrying structural-band " \
      "arrays for stability, kept partly because a ship without them " \
      "does not look like a ship to anyone raised here. Under them sits " \
      "the kinetic-band ringglass array, and a running drive gives off " \
      "the hum of working machinery pitched just below notice.",
    working:
      "The array shunts every force opposing movement into a frequency " \
      "null space, so the vehicle moves as if nothing pushes back — the " \
      "same engine runs a surface route, lifts to orbit, and holds in " \
      "the Shear. Arrays are tuned at manufacture; anyone who can read " \
      "a resonance gauge keeps one flying, on ambient resonance for " \
      "light duty and microcavity charge for heavy work.",
    risks:
      "The field needs continuous resonance input, and in dead space a " \
      "ship that exhausts its stored charge does not slow — it keeps " \
      "whatever momentum it had and goes where that points. Where the " \
      "shunted forces go is a frequency domain nothing can track, and " \
      "turning the field on a target works, at the cost of every crew " \
      "who watched it done.",
  )

  prose <<~PROSE
    The Kinetic Inverse Transport Engine — universally called a kite — is the general-purpose motive engine of the Kaleidos system. Kites use kinetic-band #{encyclopedia_ref :resonance, "resonance"} to redirect opposing forces into a frequency null space, producing effectively unopposed momentum. A kite doesn't fight drag, friction, or gravity in the conventional sense — it makes the opposition happen somewhere else.

    They still have sails. The earliest models were literal sailing vessels with #{encyclopedia_ref :ringglass, "ringglass"} arrays bolted to the hull, and modern designs retain sail elements — partly functional (the sail surfaces carry structural-band arrays for stability), partly aesthetic, partly because a ship without sails doesn't look like a ship to anyone raised in this system.
  PROSE
  prose <<~PROSE, section: :how_it_works, heading: "How It Works"
    The core of a kite is a kinetic-band ringglass array — a set of tuned crystals that generate a momentum nullification field. Within this field, forces opposing movement are shunted into a frequency null space. The vehicle moves as if nothing is pushing back.

    Mid-bandwidth kinetic work. A kite doesn't need a #{encyclopedia_ref :tuners, "Tuner"} to operate — arrays are tuned at manufacture and maintained periodically. Anyone who can read a resonance gauge can keep one running. Fuel — #{encyclopedia_ref :microcavities, "Microcavities"} for high-energy operations, ambient resonance for light duty — sustains the field.

    The result is a vehicle that performs in atmosphere, vacuum, and the distorted environment of #{ref :the_shear, "The Shear"}. The same engine that runs a surface route can lift to orbit, dock at a ring hab, and push into a debris field.
  PROSE
  prose <<~PROSE, section: :applications, heading: "Classes"
    **#{encyclopedia_ref :flitter, "Flitters"}.** Short-range local kites carrying passengers and light cargo within and between settlements. Public fleets, cooperatives, employers, and commercial carriers cycle them through any settlement with a working pad.

    **Personal craft.** Sub-orbital or space-capable kites owned by individuals. Comfortable enough for extended trips, not built for deep Shear or interplanetary hauls. A mark of moderate prosperity — common enough that no one stares, uncommon enough that most people still book passage on a commercial vessel instead.

    **Commercial haulers and passenger vessels.** The #{ref :vantara, "Vantara"} fleet and independent operators. Cargo haulers running #{ref :keel, "the Keel"} and other trade lanes. Passenger liners between major settlements. Fast couriers. This is the backbone of system commerce.

    **Shear-rated vessels.** Salvage crews, mining rigs, survey ships. Carry additional structural-band arrays for reality stabilization shielding. The Shear's resonance distortion can interfere with kinetic fields if local physics aren't anchored.

    **Military.** Warships and patrol vessels — remnants of the Contested Reach and Bitter Reach eras, maintained because piracy is ongoing. #{ref :vantara, "Vantara"} operates the largest private armed escort fleet. Various factions maintain their own. Kinetic fields can be used offensively, which is technically possible and socially frowned upon.

    **Capital class.** The largest kites in the system. Cruisers, battleships, mobile stations. Rare enough that most are individually named and recognized across entire regions.
  PROSE
  prose <<~PROSE, section: :limits, heading: "Limits"
    The momentum nullification field requires continuous resonance input. In resonance-rich areas (most of Kaleidos, the ring), this comes from the environment. In resonance-poor areas (deep interplanetary space, Shear dead zones), the vessel burns stored energy. Run out, and you're drifting.

    The null space receiving the redirected forces is not well understood. It's a frequency domain, not a physical location. The forces don't "go" anywhere physics can track. This has never caused a problem in #{elapsed :first_repeatable_kite_tuning, approx: true} of use. Engineers find this more concerning, not less.

    Large-scale momentum nullification — moving a ring hab — is theoretically possible and practically beyond any existing array's capacity.
  PROSE

  prose "The #{ref :first_repeatable_kite_tuning, "first repeatable tuning"} was recorded by a freight crew crossing a dry Kaleidos basin in 2235.",
        section: :history, heading: "First Repeatable Tuning"
end
