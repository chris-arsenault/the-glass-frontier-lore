encyclopedia :tonework do
  title "Tonework"
  kind :technology
  subkind :instrument
  status :complete
  log "2026-08-31 — Renamed Resonant Instruments to Tonework; the working term names the craft by its audible mechanism instead of a broad technical category."
  summary "Tonework devices shape ambient resonance through breath, pressure, and other physical vibration instead of fixed ringglass arrays. Skilled players use specialized instruments for kinetic, signal, and structural work."
  function "Produce adjustable resonance effects through physical vibration"
  reviewed "2026-03-19"
  topics :resonance, :music
  prevalence :rare
  available_globally

  cue "Tonework devices are built from specific alloys, tensioned membranes, and tuned cavities selected for their natural harmonic properties."
  cue "The instrument produces audible sound while it works, and the noise cannot be turned off because the vibration is the effect."
  affordance "An instrument can produce an odd frequency or change bands during use when no fixed array on hand is cut for the effect."
  pressure "The player must hold an arbitrary frequency steady while changing its bandwidth and output in real time; every useful effect lasts only as long as that physical control."
  variation "A kinetic horn applies directed force while its player holds the matching tone."
  variation "Signal harps carry data and communication, while structural drums reinforce nearby physical bonds."

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
      "The instrument channels the frequency and output the player " \
      "physically sustains, bounded by their control and the instrument's " \
      "construction. Everyone in the compartment hears the work for as " \
      "long as the tone holds.",
  )

  prose <<~PROSE
    Tonework uses specific alloys, tensioned membranes, and tuned cavities to shape ambient resonance through physical vibration. The audible tone is the same vibration working on the field. Makers build horns for kinetic force, harps for signal work, drums for structural reinforcement, and other forms around the band each material can hold.
  PROSE
  prose <<~PROSE, section: :how_it_works, heading: "How They Work"
    A conventional #{encyclopedia_ref :kite, "KITE"} engine or refinery array holds a frequency through tuned #{encyclopedia_ref :ringglass, "ringglass"}. A resonant player maintains and changes the frequency directly. Breath, pressure, finger position, and bow angle become adjustments to band, bandwidth, and output in real time.

    Different instruments are built for different bands. A #{encyclopedia_ref :kinetic_horn, "kinetic horn"} applies directed force while its player holds the matching tone. A signal harp carries data and communication. Structural drums reinforce physical bonds in materials nearby.

    General-purpose instruments can cross bands at reduced output. Specialist instruments hold one band more cleanly, and masterwork instruments under virtuoso control have approached the narrow-band coherence otherwise produced by industrial-scale crystal.
  PROSE
  prose <<~PROSE, section: :applications, heading: "The Players"
    Resonant players are rare. Many come from the #{encyclopedia_ref :resonant_tuner, "Tuner"} profession and use their direct perception to follow the working band. Others develop the necessary sensitivity through years of instrument practice without formal Tuner training. Both paths require fine motor control precise enough to hold arbitrary frequencies while changing them in real time.

    Most capital ships and large installations employ at least one resonant player. A structural player can reinforce a failing bulkhead while fixed arrays are being retuned. A signal player can jam hostile communications or broadcast beyond the calibrated frequencies on hand. A kinetic player can supply thrust corrections in an emergency.
  PROSE
  prose <<~PROSE, section: :significance, heading: "Current Craft"
    Elven records describe direct resonance work without ringglass. Current makers recovered part of that capability through new instruments and player training rather than inherited designs. Their work establishes that physical vibration can shape ambient resonance directly, within the limits of the player's control and the instrument's construction.
  PROSE

end
