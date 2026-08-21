resource :kite_sail do
  name "KITE"
  subkind :device
  function "Moves vehicles by redirecting opposing forces into a frequency null space"
  path "player/artifacts/common/kite-sail.md"
  status :complete
  reviewed "2026-03-19"
  log "2026-08-09 — the null space's \"two centuries of use\" is anchored to a future, Kite-sail development, with 200 years standing in. Nothing in canon dates the invention; a kite runs on ambient resonance, which this entry says came from ringglass the shattering scattered, so it cannot predate the Glassfall (295 years). Write that event with a year and the span computes itself."
  tags :transport, :resonance, :"kinetic-freq", :trade
  prominence :renowned
  aka "Kinetic Inverse Transport Engine"
  prominence_xrefs ["tuners", "vantara", "keel"]
  classes "Flitters, personal craft, haulers, Shear vessels, warships and capital craft"
  operating_environments "Atmosphere, vacuum and the Shear"
  operating_limit "Requires continuous resonance input; cannot move a ring habitat"

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
    **#{ref :flitter, "Flitters"}.** Short-range local kites carrying passengers and light cargo within and between settlements. Public fleets, cooperatives, employers, and commercial carriers cycle them through any settlement with a working pad.

    **Personal craft.** Sub-orbital or space-capable kites owned by individuals. Comfortable enough for extended trips, not built for deep Shear or interplanetary hauls. A mark of moderate prosperity — common enough that no one stares, uncommon enough that most people still book passage on a commercial vessel instead.

    **Commercial haulers and passenger vessels.** The #{ref :vantara, "Vantara"} fleet and independent operators. Cargo haulers running #{ref :keel, "the Keel"} and other trade lanes. Passenger liners between major settlements. Fast couriers. This is the backbone of system commerce.

    **Shear-rated vessels.** Salvage crews, mining rigs, survey ships. Carry additional structural-band arrays for reality stabilization shielding. The Shear's resonance distortion can interfere with kinetic fields if local physics aren't anchored.

    **Military.** Warships and patrol vessels — remnants of the Contested Reach and Bitter Reach eras, maintained because piracy is ongoing. #{ref :vantara, "Vantara"} operates the largest private armed escort fleet. Various factions maintain their own. Kinetic fields can be used offensively, which is technically possible and socially frowned upon.

    **Capital class.** The largest kites in the system. Cruisers, battleships, mobile stations. Rare enough that most are individually named and recognized across entire regions.
  PROSE
  prose <<~PROSE, section: :limits, heading: "Limits"
    The momentum nullification field requires continuous resonance input. In resonance-rich areas (most of Kaleidos, the ring), this comes from the environment. In resonance-poor areas (deep interplanetary space, Shear dead zones), the vessel burns stored energy. Run out, and you're drifting.

    The null space receiving the redirected forces is not well understood. It's a frequency domain, not a physical location. The forces don't "go" anywhere physics can track. This has never caused a problem in #{elapsed future: "Kite-sail development", about: 200, approx: true} of use. Engineers find this more concerning, not less.

    Large-scale momentum nullification — moving a ring hab — is theoretically possible and practically beyond any existing array's capacity.
  PROSE
end

relate :rel_kite_depends_on_resonance, :depends_on, :kite_sail, :resonance do
  prose "A kite is nothing without #{ref :resonance, "resonance"}: the kinetic-band field that nullifies opposing force is the whole of how it moves."
end
relate :rel_kite_depends_on_ringglass, :depends_on, :kite_sail, :ringglass do
  prose "That field is generated by tuned #{ref :ringglass, "ringglass"} arrays — the heart of every kite, from a one-seat flitter to a capital hauler."
end
relate :rel_kite_depends_on_microcavities, :depends_on, :kite_sail, :microcavities do
  prose "For high-energy work it burns #{ref :microcavities, "microcavities"} — stored resonance charge — when ambient fields aren't rich enough to sustain the drive."
end
