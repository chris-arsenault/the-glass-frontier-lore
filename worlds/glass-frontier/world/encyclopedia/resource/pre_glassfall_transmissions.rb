encyclopedia :pre_glassfall_transmissions do
  title "Old Traffic"
  kind :resource
  subkind :data
  status :complete
  log "2026-08-31 — Renamed Pre-Glassfall Transmissions to Old Traffic; the archival trade's compact phrase names the ordinary signal flow the surviving fragments preserve."
  summary "Old Traffic is signal traffic accidentally preserved in ringglass and crystal-bearing water since the intact ring age."
  topics :archives, :resonance, :"signal-freq", :"ring-era", :mystery
  prevalence :uncommon
  available_globally

  cue "A loose crystal shard may carry a few seconds from the circuit it once served, and salvagers sell one by provenance and apparent clarity."
  cue "Fallen ring fragments can retain partial power and transmit on fixed intervals or remain silent until a Tuner supplies the missing carrier tone."
  affordance "A coherent fragment can identify a speaker, place, or event and change a historical account."
  pressure "Repeated listening strengthens some patterns and erases others, while a listener can supply expected words across a gap without noticing."
  variation "Routine traffic includes berth assignments, shift changes, repair requests, inventories, and weather notices."
  variation "Personal messages are rarer and often clearer, while technical strings are abundant and hard to place."

  descriptive_identity(
    appearance:
      "Old signal held in whatever absorbed it: crystal shards carrying " \
      "a few seconds of one circuit, ringglass walls steeped in years of " \
      "local traffic, river water lifting fragments from crystal-laced " \
      "rock, fallen ring pieces still transmitting on fixed intervals. " \
      "Salvagers sell shards by provenance and apparent clarity, and " \
      "neither can be judged without listening.",
    working:
      "A fragment does not play back on its own — the carrier has to be " \
      "reconstructed from the medium holding it, and each medium colors " \
      "the result: river fragments overlap, building channels mix in " \
      "the walls' other signals, some ring volumes wait silent until a " \
      "Tuner supplies the missing tone. Careful recovery keeps the " \
      "instrument output, the listener's transcript, and the conditions " \
      "as three separate records.",
    risks:
      "Every listening reshapes the record, strengthening some patterns " \
      "and erasing others, and a listener can start supplying the " \
      "expected words across a gap without noticing. Copies of one " \
      "message recovered from different media preserve different words, " \
      "so two honest recoveries can disagree about what was said.",
  )

  prose <<~PROSE
    Old Traffic survives in fragments from the intact ring. Most are incomplete: a cargo number without its destination, one side of a family call, a calibration sequence repeated after the machine it served has vanished. A few retain enough context to identify a speaker, place, or event.

    The transmissions survive because ringglass and crystal-bearing water can hold signal-band impressions without having been built as archives. Their preservation was accidental. Their recovery has become a profession.
  PROSE
  prose <<~PROSE, section: :description, heading: "Where They Remain"
    The richest source is the #{encyclopedia_ref :echo_rivers, "Echo Rivers"}, which lift old signal from crystal-laced rock and carry it to surface pools. The same process occurs in smaller places: flooded service channels, old foundations, sealed conduits, and ringglass walls that absorbed years of local traffic.

    Fallen ring fragments preserve a different record. Some retain partial power and still transmit on fixed intervals. #{ref :the_choir_fragment, "The Choir Fragment"} sends the same message every week with minor changes in two words. Other fragments are silent until a #{encyclopedia_ref :tuners, "Tuner"} supplies the missing carrier tone.

    Loose crystal shards hold the narrowest records. A shard may contain several seconds from the circuit it once served. Salvagers sell them by provenance and apparent clarity, though neither can be established without listening.
  PROSE
  prose <<~PROSE, section: :reference, heading: "What Survives"
    Routine traffic is common: berth assignments, shift changes, repair requests, inventories, weather notices from orbital systems that no longer exist. Personal messages are rarer and often clearer because a single voice occupied the channel. Technical strings are abundant and hard to place.

    Material from #{ref :the_glassfall, "the Glassfall"} is scarce. Networks failed unevenly, and the most damaged sites usually preserved the least. A coherent fragment from the day the ring broke can change a historical account or identify a structure thought lost. The same fragment can also be a private message whose speaker never intended an archive to keep it.
  PROSE
  prose <<~PROSE, section: :mechanics, heading: "Listening and Drift"
    A transmission does not play like a stored cylinder. The carrier must be reconstructed from the medium holding it, and each medium alters the result. River fragments overlap. Building channels add the signals once carried through nearby walls. Active ring volumes can repeat a message with small variations that may come from damaged logic or from a source still changing.

    Repeated listening strengthens some patterns and erases others. A listener can also begin supplying expected words across a gap without noticing. The Echo Ledger Conclave records the instrument output, the listener's transcript, and the conditions separately. Agreement among the three matters more than confidence in any one.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Custody"
    The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} holds the largest catalog and authenticates fragments used in public claims. Ratter crews, hab archives, family collections, and private buyers hold the rest. Many transmissions circulate in several copies, each recovered from a different medium and each preserving different words.

    New fragments still surface. Most add one ordinary detail to a place already known. Those details are often what make the old ring legible.
  PROSE

end
