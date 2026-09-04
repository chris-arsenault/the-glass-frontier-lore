encyclopedia :kite do
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
      "whatever momentum it had and goes where that points. No instrument " \
      "has tracked the shunted forces after they enter the null space. " \
      "A field can also be turned on a target, an offensive use condemned " \
      "across the system.",
  )

  prose <<~PROSE
    The Kinetic Inverse Transport Engine — universally called a kite — is the general-purpose motive engine of the Kaleidos system. Kites use kinetic-band #{encyclopedia_ref :resonance, "resonance"} to redirect drag, friction, gravity, and other opposing forces into a frequency null space. Existing thrust then drives the vehicle as though those forces were absent.

    Kites retain sails from the earliest models, when crews bolted #{encyclopedia_ref :ringglass, "ringglass"} arrays onto sailing hulls. On modern vessels the sail surfaces carry structural-band arrays for stability. Their familiar silhouette also kept the old name attached to every later form of the engine.
  PROSE
  prose <<~PROSE, section: :how_it_works, heading: "How It Works"
    The core of a kite is a kinetic-band ringglass array — a set of tuned crystals that generate a momentum nullification field. Within this field, forces opposing movement are shunted into a frequency null space. The vehicle moves as if nothing is pushing back.

    Kites perform mid-bandwidth kinetic work through arrays tuned at manufacture and maintained periodically. A crew member who can read a resonance gauge can operate one. Ambient resonance sustains light duty; #{encyclopedia_ref :seed, "Seed"} supplies high-energy operations.

    The result is a vehicle that performs in atmosphere, vacuum, and the distorted environment of #{ref :the_shear, "The Shear"}. The same engine that runs a surface route can lift to orbit, dock at a ring hab, and push into a debris field.
  PROSE
  prose <<~PROSE, section: :applications, heading: "Classes"
    **#{encyclopedia_ref :flitter, "Flitters"}.** Short-range local kites carrying passengers and light cargo within and between settlements. Public fleets, cooperatives, employers, and commercial carriers cycle them through any settlement with a working pad.

    **Personal craft.** Individually owned sub-orbital or space-capable kites with cabins for extended trips inside stable routes. Ownership marks moderate prosperity; most travelers still book commercial passage.

    **Commercial haulers and passenger vessels.** The #{ref :vantara, "Vantara"} fleet and independent operators carry freight along #{ref :keel, "the Keel"} and other trade lanes, run passenger routes between major settlements, and keep fast courier services.

    **Shear-rated vessels.** Salvage craft, mining rigs, and survey ships carry additional structural-band arrays that anchor local physical conditions against the Shear's resonance distortion.

    **Military.** Warships and patrol vessels survive from the Contested Reach and Bitter Reach eras and remain in service against piracy. #{ref :vantara, "Vantara"} operates the largest private armed escort fleet, while several factions maintain their own. Turning a kinetic field directly on a target is possible and broadly condemned.

    **Capital class.** The largest kites in the system. Cruisers, battleships, mobile stations. Rare enough that most are individually named and recognized across entire regions.
  PROSE
  prose <<~PROSE, section: :limits, heading: "Limits"
    The momentum nullification field requires continuous resonance input. Across most of Kaleidos and the ring, the environment supplies it. Deep interplanetary space and Shear dead zones require stored energy. When the charge ends, the field drops and the vessel retains its existing momentum.

    The null space is a frequency domain rather than a physical location. No instrument has tracked a redirected force after it enters. Across #{elapsed :first_repeatable_kite_tuning, approx: true} of recorded use, no kite incident has been attributed to force accumulating there.

    Large-scale momentum nullification — moving a ring hab — is theoretically possible and practically beyond any existing array's capacity.
  PROSE

  prose "The #{ref :first_repeatable_kite_tuning, "first repeatable tuning"} was recorded by a freight crew crossing a dry Kaleidos basin in 2235.",
        section: :history, heading: "First Repeatable Tuning"
end
