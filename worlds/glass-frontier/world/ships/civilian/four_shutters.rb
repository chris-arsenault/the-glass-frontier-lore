transport :four_shutters do
  name "Four Shutters"
  summary "Four Shutters is a Pell Assembly claim rig working Deep Shear seams with four isolated receivers and unmanned cutters. Its repeatedly rebuilt process deck supplied the isolation pattern later used aboard Quiet Measure."
  subkind :vessel
  type_of :claim_rig
  capacity "Eight crew, four remote cutters, and four isolated receiving rooms"
  status :complete
  tags :transport, :salvage, :resonance, :orbital, :danger, :trade
  prominence :recognized

  descriptive_identity(
    appearance: "A converted cargo hull with four cutter cradles and four heavy receiving shutters, each surrounded " \
                "by mismatched plates from a different repair.",
    aboard: "Painted deck routes separate the four receivers from the bridge and cabins. Every room has its own " \
            "clock, breaker, hand wheel, and physical tally naming who may reopen it.",
    behavior: "Four Shutters stands off from a claim while its cutters work. Each return is isolated, sounded, and " \
              "sampled before the crew opens anything toward the clean end of the vessel."
  )

  prose <<~PROSE
    *Four Shutters* is a Ratter-built claim rig maintained through the #{ref :pell_freight_assembly, "Pell Freight Assembly"}. It works Deep Shear claims at stand-off range, losing cutters rather than bringing its crew alongside unstable material. Scrape marks and moved breakers around every receiver record the failures that changed its layout.

    The four receiving rooms share no clock, signal bus, or power break. That separation became the working example for the locks and treatment rooms aboard #{ref :quiet_measure, "*Quiet Measure*"}. A return that answers from the wrong place stays behind its shutter while the rig cuts every useful tone beyond it.
  PROSE

  gm_note :appears, "A berth master reads Four Shutters by its repairs: each mismatched plate and relocated breaker records something the original layout failed to contain."
  gm_note :triggered_by, "Opening a receiver requires the named crew member at its hand wheel; a powered safe reading never substitutes for the tally beside the shutter."
  gm_note :complicates, "Once a live return enters one room, all eight crew are fixed to stations and any task needing spare hands leaves another control unattended."
end

relate :rel_claim_rig_operates_deep_shear, :operates_in, :four_shutters, :deep_shear do
  prose "Four Shutters works unstable Deep Shear seams from stand-off range."
end
relate :rel_pell_assembly_maintains_claim_rigs, :maintains, :pell_freight_assembly, :four_shutters, since: 2416 do
  prose "Assembly yards maintain Four Shutters and its isolated receivers."
end
