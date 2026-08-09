resource :stillwater do
  name "Stillwater"
  path "player/concepts/stillwater.md"
  reviewed "2026-03-19"
  tags :resonance, :"signal-freq", :materials
  prominence :recognized

  prose <<~PROSE, section: :how_it_works, heading: "How It Works"
    Purified #{ref :echo_rivers, "Echo River"} water. In its raw state, Echo River water carries resonance imprints — fragments of pre-Glassfall data encoded in the crystal particulate suspended in the flow. With careful filtration and resonance stabilization, the water can be cleaned of its historical content while retaining its extraordinary capacity to hold signal-band information.

    The result is an effectively infinite storage medium. A vial of stillwater can hold more data than a conventional crystal array ten times its size, because the suspended crystal particulate provides a three-dimensional lattice of microscopic storage surfaces. Writing data to stillwater requires signal-band Tuning. Reading it back requires the same. The medium is fragile — contamination, resonance spikes, or temperature extremes corrupt the contents — but for archival purposes, nothing else comes close.

    The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} is the largest consumer. The #{ref :lattice_proxy_synod, "Lattice Proxy Synod"} uses it to record AI custodian outputs that don't survive transfer to conventional media. Black market stillwater with pre-purification content — original Echo River voices still intact — commands extreme prices from collectors.
  PROSE
end

relate :rel_stillwater_derived_from_echo_rivers, :derived_from, :stillwater, :echo_rivers do
  prose "Stillwater grew out of the work on the #{ref :echo_rivers, "Echo Rivers"} — the same impulse to keep what surfaces from being lost again, turned toward the deep reservoirs."
end
