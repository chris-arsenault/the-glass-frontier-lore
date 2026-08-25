resource :resonant_instruments do
  name "Resonant Instruments"
  summary "Resonant instruments are devices that shape ambient resonance through breath, pressure, and other physical vibration instead of fixed ringglass arrays. Skilled players use specialized instruments for kinetic, signal, and structural work."
  subkind :device
  function "Produce adjustable resonance effects through physical vibration"
  path "player/artifacts/common/resonant-instruments.md"
  status :complete
  reviewed "2026-03-19"
  tags :resonance, :music
  prominence :recognized

  descriptive_identity(
    appearance:
      "Instruments built from materials chosen for natural harmonic " \
      "properties — particular alloys, tensioned membranes, tuned " \
      "cavities — in forms matched to their band: horns for kinetic " \
      "work, harps for signal, drums for structural reinforcement. " \
      "They are contemporary-made, and the best are specialized rather " \
      "than general.",
    working:
      "The player does the work the crystal does in a fixed array: " \
      "breath, pressure, finger position, and bow angle become " \
      "resonance at whatever frequency and bandwidth the player can " \
      "hold. Audible sound comes off as a byproduct and cannot be " \
      "silenced, because the vibration is the effect. It takes fine " \
      "motor control steady enough to hold an arbitrary frequency " \
      "while changing it in real time, and most who attempt the skill " \
      "wash out.",
    risks:
      "The instrument channels whatever the player produces — there is " \
      "no preset band and no fixed output to fall back on, so the " \
      "capability is bounded only by skill and construction. Everyone " \
      "in the compartment hears the work for as long as the tone " \
      "holds.",
  )

  prose <<~PROSE
    Devices that produce resonance effects without ringglass arrays. Built from materials selected for their natural harmonic properties — specific alloys, tensioned membranes, tuned cavities — resonant instruments channel ambient resonance through physical vibration rather than crystal lattice conduction. Most produce audible sound as a byproduct, which is how they got the name, but the sound is secondary. The resonance is the point.
  PROSE
  prose <<~PROSE, section: :how_it_works, heading: "How They Work"
    A conventional #{ref :kite_sail, "KITE"} engine or refinery array uses #{ref :ringglass, "ringglass"} tuned to a fixed frequency. The crystal does the work. The operator reads gauges. A resonant instrument inverts this: the player does the work, and the instrument translates physical input — breath, pressure, finger position, bow angle — into resonance at arbitrary frequencies and bandwidths. No fixed tuning. No preset band. Whatever the player produces, the instrument channels.

    Different instruments are built for different bands. A #{ref :kinetic_horn, "kinetic horn"} applies directed force while its player holds the matching tone. A signal harp carries data and communication. Structural drums reinforce physical bonds in materials nearby. Some instruments are general-purpose enough to cross bands at reduced effectiveness; the best are specialized. A few virtuoso players working with masterwork instruments have achieved effects approaching narrow-band coherence — territory that conventional ringglass arrays cannot reach without industrial-scale crystal.

    This makes them extraordinarily flexible and extraordinarily difficult to use. A ringglass array is a tool with fixed output. A resonant instrument is an open-ended capability bounded only by the player's skill and the instrument's construction.
  PROSE
  prose <<~PROSE, section: :applications, heading: "The Players"
    Resonant players are rare. Most come from the #{ref :tuners, "Tuner"} profession, where the ability to feel resonance directly provides an advantage — but the skill is not exclusive to trained Tuners. Some players develop sensitivity through years of practice without formal Tuner training. The common thread is fine motor control precise enough to hold arbitrary frequencies stable while modulating them in real time. Most who attempt it wash out. The ones who succeed operate at a level that looks, to an outside observer, indistinguishable from the stories about elven resonance work.

    Most capital ships and large installations employ at least one resonant player. The value is versatility: a player with a structural instrument can reinforce a failing bulkhead without waiting for a crystal array to be tuned to the right frequency. A signal player can jam hostile communications or broadcast on frequencies that ringglass arrays aren't calibrated for. A kinetic player can provide thrust corrections in an emergency. Not needing a specialized device for each task, and being able to respond to novel situations in real time, makes a skilled player worth the considerable expense of retaining one.
  PROSE
  prose <<~PROSE, section: :significance, heading: "Significance"
    Resonant instruments are the closest thing the system has to pre-Glassfall resonance capability. The #{ref :elves, "elves"} worked resonance without ringglass as a matter of course — their entire civilization ran on direct resonance manipulation. Resonant players are rediscovering fragments of that capability through craft and practice rather than inherited knowledge. The instruments themselves are contemporary-made, imperfect, limited — but they prove that ringglass is a convenience, not a requirement. Resonance responds to anyone who can speak its language precisely enough.
  PROSE

  gm_note :appears, "A capital ship or a large installation keeps a player on the payroll, usually one, usually expensive, usually already busy elsewhere on the hull. " \
                    "They are why a failing bulkhead gets held before anyone finds a crystal cut for it."
  gm_note :complicates, "The instrument sounds while it works, and the noise cannot be turned off because the vibration is the effect. " \
                        "A player reinforcing a wall, jamming a channel, or correcting thrust is audible to everyone in the compartment for as long as the tone is held."
  gm_note :triggered_by, "When the party wants an effect nothing on hand is cut for — an odd frequency, a band change mid-scene — an instrument can do it and a fixed array cannot. " \
                         "What it costs is a person who can hold an arbitrary frequency steady while modulating it, which is where most who try wash out."
end

relate :rel_resonant_instruments_depends_on_resonance, :depends_on, :resonant_instruments, :resonance do
  prose "Resonant instruments are nothing without #{ref :resonance, "resonance"} — they are the tuned tools through which a practitioner feels and shapes it."
end
