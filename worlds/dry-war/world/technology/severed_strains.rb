resource :severed_strains do
  name "Severed Strains"
  tags :resistance, :biotech, :symbiosis
  prominence :recognized

  prose <<~PROSE
    The foundational resistance technology: descendants of Unified organisms whose ability to join the continental network has been removed or crippled. They still close wounds, sense their environment, filter, regulate temperature, repair structure and carry limited neural interfaces. They cannot talk to anything far away.

    Unified biologists consider them mutilated. Resistance communities regard them roughly the way an older century regarded open-source software.
  PROSE

  prose <<~PROSE, section: :limits, heading: "Provenance"
    A severed strain is not safe. Biology mutates, and a strain that cannot reach the network today is a strain whose ancestry, reproductive history and behaviour are understood well enough that somebody is willing to take the risk.

    So the real technology is record-keeping. Entire traditions of biological provenance exist around it, and a village may state with enormous pride that its lineage has been disconnected for #{duration 70} — a claim it can document, and which the #{ref :the_gatekeepers, "Gatekeepers"} will audit for a fee.
  PROSE
end
