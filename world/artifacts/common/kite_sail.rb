resource :kite_sail do
  name "KITE"
  path "player/artifacts/common/kite-sail.md"
  tags :transport, :resonance, :"kinetic-freq", :trade
  prominence :renowned
  aka "Kinetic Inverse Transport Engine"
  prominence_xrefs ["tuners", "vantara", "keel"]

  prose <<~PROSE
    The Kinetic Inverse Transport Engine — universally called a kite — is the general-purpose motive engine of the Kaleidos system. Kites use kinetic-band #{ref :resonance, "resonance"} to redirect opposing forces into a frequency null space, producing effectively unopposed momentum. A kite doesn't fight drag, friction, or gravity in the conventional sense — it makes the opposition happen somewhere else.

    They still have sails. The earliest models were literal sailing vessels with #{ref :ringglass, "ringglass"} arrays bolted to the hull, and modern designs retain sail elements — partly functional (the sail surfaces carry structural-band arrays for stability), partly aesthetic, partly because a ship without sails doesn't look like a ship to anyone raised in this system.
  PROSE
  prose <<~PROSE, section: :how_it_works, heading: "How It Works"
    The core of a kite is a kinetic-band ringglass array — a set of tuned crystals that generate a momentum nullification field. Within this field, forces opposing movement are shunted into a frequency null space. The vehicle moves as if nothing is pushing back.

    Mid-bandwidth kinetic work. A kite doesn't need a #{ref :tuners, "Tuner"} to operate — arrays are tuned at manufacture and maintained periodically. Anyone who can read a resonance gauge can keep one running. Fuel — #{ref :microcavities, "Microcavities"} for high-energy operations, ambient resonance for light duty — sustains the field.

    The result is a vehicle that performs in atmosphere, vacuum, and the distorted environment of #{ref :the_shear, "The Shear"}. The same engine that runs a surface route can lift to orbit, dock at a ring hab, and push into a debris field.
  PROSE
  prose <<~PROSE, section: :applications, heading: "Classes"
    **#{future "Flitters"}.** Autonomous local kites. Short-range, single-passenger or small-cargo, operating within and between settlements. Ubiquitous — standard-issue infrastructure, the way breathable air is standard on a pressurized hab. Every settlement with a landing pad has flitters cycling through it.

    **Personal craft.** Sub-orbital or space-capable kites owned by individuals. Comfortable enough for extended trips, not built for deep Shear or interplanetary hauls. A mark of moderate prosperity — common enough that no one stares, uncommon enough that most people still book passage on a commercial vessel instead.

    **Commercial haulers and passenger vessels.** The #{ref :vantara, "Vantara"} fleet and independent operators. Cargo haulers running #{ref :keel, "the Keel"} and other trade lanes. Passenger liners between major settlements. Fast couriers. This is the backbone of system commerce.

    **Shear-rated vessels.** Salvage crews, mining rigs, survey ships. Carry additional structural-band arrays for reality stabilization shielding. The Shear's resonance distortion can interfere with kinetic fields if local physics aren't anchored.

    **Military.** Warships and patrol vessels — remnants of the Contested Reach and Bitter Reach eras, maintained because piracy is ongoing. #{ref :vantara, "Vantara"} operates the largest private armed escort fleet. Various factions maintain their own. Kinetic fields can be used offensively, which is technically possible and socially frowned upon.

    **Capital class.** The largest kites in the system. Cruisers, battleships, mobile stations. Rare enough that most are individually named and recognized across entire regions.
  PROSE
  prose <<~PROSE, section: :limits, heading: "Limits"
    The momentum nullification field requires continuous resonance input. In resonance-rich areas (most of Kaleidos, the ring), this comes from the environment. In resonance-poor areas (deep interplanetary space, Shear dead zones), the vessel burns stored energy. Run out, and you're drifting.

    The null space receiving the redirected forces is not well understood. It's a frequency domain, not a physical location. The forces don't "go" anywhere physics can track. This has never caused a problem in two centuries of use. Engineers find this more concerning, not less.

    Large-scale momentum nullification — moving a ring hab — is theoretically possible and practically beyond any existing array's capacity.
  PROSE
end
