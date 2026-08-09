installation :cabin_creek_bench do
  name "The Cabin Creek Bench"
  tags :resistance, :medicine, :dependency
  prominence :forgotten

  prose <<~PROSE
    A timing bench in a shed on Cabin Creek, one of perhaps forty places in the #{ref :the_dead_counties, "Dead Counties"} where a substitute compound is proved before it goes out. The compounds are made elsewhere in the county and arrive with the courier who will take them away again; the bench makes nothing.

    What it holds is a pendulum regulator, a rack of ninety stoppered tubes, a spirit burner, glass syringes, and a bedside monitor of a pattern that predates the coalitions — #{ref :orphan_machines, "severed"}, running on shed current, wired to a chart recorder that draws on paper. Two people work it on a fortnight rotation and neither of them is a chemist.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "Two Paper Traces"
    A carrier is charted first on the regimen the substitute is meant to replace, at fixed hours until the drug has halved five times. Then the same body is charted on the substitute with the same monitor and the same hours. The two paper traces are laid over one another.

    A usable substitute stays inside the old trace from the first peak to the last decline. The common failure is a late step: a compound built to match the peak but not the tail. A guardian looks hardest at the decline because that is where a missed dose appears.
  PROSE

  prose <<~PROSE, section: :economy, heading: "The Carriers"
    A drug that halves in nine days holds a carrier for six or seven weeks on the first chart and as long again on the second. The bench's ledger is therefore a list of paid weeks rather than a list of compounds. A carrier is paid in current, parts and standing credit at two kitchens, and carries for nothing else while charted.

    The bench runs one compound at a time, and most batches fail. A kitchen that sends a batch out after a partial chart is selling medicine that has not survived the full decline.
  PROSE

  prose <<~PROSE, section: :limits, heading: "One Body"
    The bench cannot compare a substitute against a carrier's own guardian, because a guardian capable of making the comparison would report having made it. So the comparison is against a chart of that carrier from before, and every substitute the county sells is proved on one body and taken by many. Doses are corrected for weight and age at the far end, in a kitchen, by whoever is dispensing.

    Each batch therefore rests on one carrier. The card that leaves with it gives that person's weight and age, and kitchens use only those two figures to adjust doses for everyone else.
  PROSE

  log "2026-08-09 — The bench uses one paid carrier because the only private comparison is that person's earlier paper chart. Every later dose is adjusted from that one body by weight and age."
end
