phenomenon :ravel_underturn do
  name "Ravel Underturn"
  aka "The Underturn"
  summary "Ravel Underturn is the settlement's recurrent inversion field, exchanging equal volumes from strata with matching resonant loads while leaving every intervening layer untouched."
  type_of :underturns
  subkind :physical_phenomenon
  status :complete
  log "2026-08-31 — Renamed The Underturn to Ravel Underturn when underturn became the reusable name for the wider phenomenon class."
  tags :resonance, :"ring-hab", :danger, :mystery
  prominence :recognized
  trigger "Two separated strata carry matching resonant loads when the inversion field reaches its reversal point"
  effect "Equal volumes exchange position without crossing the intervening matter, carrying structures, atmosphere, heat, momentum, signals, and living bodies intact"
  recurrence "One field follows Ravel's plume cycle and is recognized elsewhere by paired signal silence, duplicated instrument positions, and an exact exchange of volume"
  ending "The exchange completes when both volumes settle into the other's resonant load; changing either load during transit arrests both volumes between positions"
  mitigation "Keep inhabited and buried strata deliberately unequal in load, isolate dangerous layers, and evacuate both paired positions when signal silence begins"
  anchor_behavior "Pairs volumes by resonant load rather than separation, material, ownership, or local gravity"
  medium "Layered terrain, ring decks, buried structures, atmosphere, fluid, and signal-bearing matter"
  content "Two equal volumes with all structures, substances, signals, momentum, and living bodies present inside them"
  hazard "An inhabited layer can exchange with sealed wreckage, poison, hostile life, old transmissions, or another occupied volume whose motion resumes on arrival"

  descriptive_identity(
    signs: "Two separated strata fall silent on signal together and appear on instruments at both positions before their equal volumes exchange.",
    effects: "Each volume arrives in the other's position with rooms, atmosphere, heat, momentum, broadcasts, and living bodies intact.",
    hazards: "Present traffic can descend into stone while a buried ruin's pressure, poison, inhabitants, and unfinished motion resume at the surface."
  )

  prose <<~PROSE
    Ravel collectors call the field the Ravel Underturn because a lower stratum comes up as an upper one goes under. A surface yard can exchange with an equal volume of buried wreckage. Hot atmosphere can trade with cold sealed gas. A broadcast trapped in old signal glass can rise into a working network as the network's present traffic descends into stone.

    The paired volumes never traverse the layers between them. Their signals fall silent together while instruments report each volume at both positions. Rooms and living bodies arrive intact when the receiving volume can contain them. Pressure, heat, momentum, and poison resume as soon as the exchange settles.
  PROSE
  prose <<~PROSE, section: :operations, heading: "The Load Slate"
    Underturn follows #{ref :ravel, "Ravel"} through its nine-day plume cycle. The settlement's load slate lists the inhabited hull, lower service mass, catch tanks, and sealed pressure cells separately. During the two days of line and mesh work before a passage, crews add or release tuned water, machinery, and cargo to keep those strata deliberately unequal.

    Paired signal silence stops catch work. Both listed positions are cleared, pressure doors close around dangerous layers, and the load crew changes one stratum in small increments until the readings separate. When unequal loads cannot be restored, the exchange becomes a choice of strata: a buried refuge can rise, an occupied deck can descend below an attack, or a poison layer can trade with an equal volume prepared in open void. Every rescue brings the other volume into use with its own people, claims, and unfinished motion.
  PROSE
  prose <<~PROSE, section: :limits, heading: "Between Positions"
    Changing a paired load after the exchange begins arrests both volumes. Instruments continue reporting each in both places while neither position answers a signal. Ravel crews evacuate both possible arrivals and rebuild the last unequal load from the slate. The readings collapse to one position only after the field accepts the new imbalance.

    An arrested exchange preserves contents and danger together. A breached tank holds its contents away from the intervening strata during the pause, then resumes venting under pressure wherever the volume settles. A moving machine keeps its unfinished motion. The pause buys work time while both destinations remain hazardous.
  PROSE

  gm_note :complicates, "Paired signal silence marks two equal loads beginning to exchange, so protecting the occupied layer requires preparing the ruin, poison, wreckage, open void, or living ground that will arrive in its place."
end

relate :rel_underturn_manifests_ravel, :manifests_at, :ravel_underturn, :ravel
