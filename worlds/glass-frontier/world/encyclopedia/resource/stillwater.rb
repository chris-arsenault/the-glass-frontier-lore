encyclopedia :stillwater do
  title "Stillwater"
  kind :resource
  subkind :data_medium
  status :complete
  summary "Stillwater is purified Echo River water whose suspended crystal lattice stores dense signal-band information after its accidental historical imprints are removed."
  reviewed "2026-03-19"
  topics :resonance, :"signal-freq", :materials
  prevalence :rare
  available_globally

  cue "Stillwater is carried in sealed vials with crystal particulate suspended through the purified water."
  cue "A vial offered outside Conclave supply may still contain the original Echo River voices."
  affordance "A vial of stillwater can hold more data than a conventional crystal array ten times its size."
  pressure "Heat, contamination, a resonance spike, or a broken seal corrupts the contents, and nobody learns what was lost until a Tuner reads the vial back."
  variation "Clean stillwater has been filtered of its accidental historical content while retaining its signal-band capacity."
  variation "Black-market stillwater retains original Echo River voices and commands extreme prices from collectors."

  descriptive_identity(
    appearance:
      "Echo River water filtered clear of its historical content, " \
      "carried in sealed vials. The crystal particulate suspended " \
      "through it is the point: a three-dimensional lattice of " \
      "microscopic storage surfaces.",
    working:
      "Writing to it and reading it back both take signal-band Tuning, " \
      "and a single vial holds more data than a crystal array ten times " \
      "its size — the archival medium nothing else approaches. The " \
      "Conclave consumes most of the supply, and the Lattice Proxy " \
      "Synod uses it for custodian outputs that die in transfer to " \
      "conventional media.",
    risks:
      "Heat, contamination, a resonance spike, or a broken seal " \
      "corrupts the contents, and nobody learns what was lost until a " \
      "Tuner reads the vial at the far end. Stock offered outside " \
      "Conclave supply may never have been purified — vials with the " \
      "original river voices intact sell to collectors for far more " \
      "than clean medium.",
  )

  prose <<~PROSE, section: :how_it_works, heading: "How It Works"
    Purified #{encyclopedia_ref :echo_rivers, "Echo River"} water. In its raw state, Echo River water carries resonance imprints — fragments of pre-Glassfall data encoded in the crystal particulate suspended in the flow. With careful filtration and resonance stabilization, the water can be cleaned of its historical content while retaining its extraordinary capacity to hold signal-band information.

    The result is an effectively infinite storage medium. A vial of stillwater can hold more data than a conventional crystal array ten times its size, because the suspended crystal particulate provides a three-dimensional lattice of microscopic storage surfaces. Writing data to stillwater requires signal-band Tuning. Reading it back requires the same. The medium is fragile — contamination, resonance spikes, or temperature extremes corrupt the contents — but for archival purposes, nothing else comes close.

    The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} is the largest consumer. The #{ref :lattice_proxy_synod, "Lattice Proxy Synod"} uses it to record AI custodian outputs that don't survive transfer to conventional media. Black market stillwater with pre-purification content — original Echo River voices still intact — commands extreme prices from collectors.
  PROSE

end
