phenomenon :underturn do
  name "The Underturn"
  summary "The Underturn exchanges equal upper and lower strata, raising buried matter and carrying surface places downward without crossing the space between."
  type_of :stratum_exchange
  subkind :physical_phenomenon
  status :complete
  tags :resonance, :"ring-hab", :danger, :mystery
  prominence :recognized
  trigger "Two separated strata within the active field carry matching resonant load at the moment the field reverses"
  effect "Equal volumes of upper and lower matter exchange position, including heat, wreckage, poison, broadcasts, structures, and living bodies"
  recurrence "The same inversion field follows Ravel's plume cycle and has been identified elsewhere by its paired signal silence and exchanged volume"
  ending "The exchange completes when both volumes settle into the other's resonant load; interrupting one load arrests both volumes between states"
  mitigation "Keep inhabited strata at deliberately unequal loads, isolate poisonous or pressurized layers, and evacuate anything caught in the paired signal silence"
  anchor_behavior "Pairs volumes by resonant load rather than distance, material, ownership, or local direction of gravity"
  medium "Layered terrain, ring decks, buried structures, atmosphere, fluid, and signal-bearing material"
  hazard "Occupied places descend while sealed wreckage, toxins, hostile life, and old transmissions rise into them"

  descriptive_identity(
    signs: "Two separated layers fall silent on signal at once, then exchange equal volumes without traversing the material between them.",
    effects: "Upper matter occupies a matched lower stratum as the lower matter rises into its exact former volume, carrying structures, heat, atmosphere, broadcasts, and life intact until arrival.",
    hazards: "A settlement can trade places with a buried ruin, open air with poison, or living ground with wreckage whose momentum resumes only after the exchange."
  )

  prose <<~PROSE
    The Underturn exchanges layers. A surface yard vanishes into the ground while an equal volume of buried wreckage occupies its place. Hot atmosphere can trade with cold sealed gas. A broadcast trapped in old signal glass can rise into a working network as the network's present traffic descends into stone.

    Nothing crosses the material between. During the exchange, instruments show both volumes at both positions and signals from each go silent. The arrival is exact enough to preserve rooms and living bodies when the receiving volume is compatible. Pressure, heat, momentum, and poison resume in the new place as soon as the exchange settles.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Ravel's Two Loads"
    The Underturn follows #{ref :ravel, "Ravel"} through its plume cycle. Collectors keep the inhabited hull and the lower service mass at deliberately unequal resonant loads so the field cannot pair them. Crews add or release tuned water, machinery, and cargo before the paired signal silence begins.

    When the loads cannot be separated, the exchange becomes a choice of strata. A buried refuge can be brought to the surface. An occupied deck can be traded below an attack. A poison layer can be sent into open void if an equal volume there can be prepared to receive it. Every rescue displaces something else, and that displaced volume arrives with its own people, claims, and unfinished motion.
  PROSE

  gm_note :complicates, "Two equal resonant loads begin to exchange, so saving the occupied layer requires deciding what lower volume—ruin, poison, wreckage, or living ground—will take its place."
end

relate :rel_underturn_manifests_ravel, :manifests_at, :underturn, :ravel
