encyclopedia :mixer do
  name "Mixer"
  summary "A mixer keeps a district's working pharmacy: pressing watch salts, compounding the pharmacopoeia standards, and grading every batch by its answer in the band. The mixer's mark on a tin is the trade's whole promise, and districts choose their mixers the way they choose their bread."
  kind :role
  subkind :profession
  status :complete
  topics :trade, :household, :resonance
  prevalence :common
  appears_when any: { place: [:urban, :market] }

  descriptive_identity(
    attire: "A pressing apron with the mark stamp chained to it, sleeves pinned back to the " \
            "elbow, and the faint mineral sharpness of the salts bench carried like a second " \
            "signature.",
    tools: "The press, the pharmacopoeia — chained open on its stand — the grading fork whose " \
           "ring against a finished batch is the bench's last test, and the mark stamp that " \
           "goes onto every tin the shop will answer for.",
    manner: "Exact about formula and forgiving about people; a mixer measures aloud from the " \
            "open book on principle, and reads a customer's week off their order with tactful " \
            "silence."
  )

  cue "In the shop window the pharmacopoeia stands chained open to the day's pressing, and the mixer measures aloud from it while the queue watches with proprietary attention."
  cue "The finished batch gets the fork — one clear ring against the tin, a tilted head — before the mark stamp comes down."
  affordance "The mixer's bench turns the public formulas into trustworthy tins — salts, salves, the route standards — and the mark on the lid carries the shop's whole history as warranty, checkable in any district ledger."
  pressure "The trade runs on public formulas and personal marks, so every batch is a reputation pressed into metal — and a bad tin travels with the mark on it, into route chests and cordon posts, faster than any correction can follow."
  variation "City mixers run pressing benches with apprentices and queue custom; route-town mixers press small and trade tins along the carrier lines, and their marks travel farther than they do."
  variation "The grading fork's ring is bench doctrine — a true batch answers clean in the band — and old mixers claim to hear moisture, short-weight, and haste in a dull ring, with a court record that keeps agreeing with them."

  prose <<~PROSE
    Every district of consequence keeps a mixer's shop, and the shop keeps the district. The trade presses and compounds the public standards — #{encyclopedia_ref :watch_salts, "watch salts"} first among them, then the salves, washes, and route medicines of the open pharmacopoeia — and its architecture is trust made procedural. The formula book stands chained open on the bench where any customer can read it; the mixer measures aloud from it by custom older than the chain; and the finished tin takes the mixer's mark, the personal stamp that makes every batch a signed statement. The formulas belong to everyone. The mark belongs to the mixer, and the difference is the trade.

    The bench's own instrument is the grading fork. A finished batch answers a struck fork with a ring, and the ring grades it: a true pressing answers clean in the band, and moisture, short measure, or hurried work dull the note in ways bench training makes audible. The fork test closes every pressing — one ring, a tilted head, the stamp or the scrap bin — and the trade's confidence in it is empirically earned; the registries' quality actions against marked tins have sided with the fork against fonder evidence for generations.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Marks, Districts, and Succession"
    A mark is a career in metal. It registers with the district ledger at the mixer's certification, appears on every tin the bench presses, and accrues its record — the routes that reorder, the cordon posts that specify it, the quality actions it has faced — in a public file the careful consult before stocking a chest. District loyalty to a mark runs bread-deep: crews swear by their press, travelers carry their home mark across the system, and a district whose mixer retires follows the succession with open partisanship.

    Succession is the pressing of the first marked batch. An apprentice earns the bench through years of measured-aloud work under the open book, presses a certification batch that seniors fork-test in public, and registers a mark of their own — traditionally quoting an element of the teacher's, so a district's marks form family trees the ledgers can read backward for generations. The old mark retires with its holder, pressed once more into the final batch, which custom distributes free, tin by tin, to the households the bench has served longest.
  PROSE
end
