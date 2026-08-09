installation :cabin_creek_bench do
  name "The Cabin Creek Bench"
  tags :resistance, :medicine, :dependency
  prominence :forgotten

  prose <<~PROSE
    A timing bench in a shed on Cabin Creek, one of perhaps forty places in the #{ref :the_dead_counties, "Dead Counties"} where a substitute compound is proved before it goes out. The compounds are made elsewhere in the county and arrive with the courier who will take them away again; the bench makes nothing.

    What it holds is a pendulum regulator, a rack of ninety stoppered tubes, a spirit burner, glass syringes, and a bedside monitor of a pattern that predates the coalitions — #{ref :orphan_machines, "severed"}, running on shed current, wired to a chart recorder that draws on paper. Two people work it on a fortnight rotation and neither of them is a chemist.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "What It Compares"
    A carrier is charted first on the regimen the substitute is meant to replace: the monitor's analytes, at fixed hours, for the whole of that drug's #{ref :the_halving_count, "count"}. Then the same carrier on the substitute, same monitor, same hours, same count. The two charts are laid over one another and read halving by halving.

    A substitute passes when the charts cannot be separated anywhere across the count. It is rejected on a step, wherever the step falls, and a step in the last halving is the common one — a compound built to match a peak and never asked to match a tail. #{ref :ghost_pharmacology, "Ghost pharmacology"}'s working assumption is that a guardian looks hardest at the shape of a decline, because a decline is where a missed dose shows.
  PROSE

  prose <<~PROSE, section: :economy, heading: "The Carriers"
    A count is long. Something that halves in nine days holds a carrier for six or seven weeks on the first chart and as long again on the second, and the bench's ledger is a list of paid weeks rather than a list of compounds. A carrier is paid in current, parts and standing credit at two kitchens, and is barred from carrying for anything else while charted.

    The bench runs one compound at a time and turns away more than it takes. A kitchen that cannot wait sends its batch out on the strength of a partial count, which the courier is told and the far end usually is not.
  PROSE

  prose <<~PROSE, section: :limits, heading: "One Body"
    The bench cannot compare a substitute against a carrier's own guardian, because a guardian capable of making the comparison would report having made it. So the comparison is against a chart of that carrier from before, and every substitute the county sells is proved on one body and taken by many. Doses are corrected for weight and age at the far end, in a kitchen, by whoever is dispensing.

    The card that leaves with a passed compound states the carrier's weight, age, the regimen charted and the largest separation found between the two charts. It states nothing about anybody else.
  PROSE

  log "2026-08-09 — The bench proves a substitute on one paid carrier because the only comparison available is that person's own earlier chart: a guardian able to compare would be a guardian reporting. That fixes the discipline's real limit — one body, generalized by weight and age at the point of dispensing — and it is the resistance's own version of an account of welfare that omits something."
end
