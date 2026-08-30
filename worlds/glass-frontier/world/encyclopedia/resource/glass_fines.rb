encyclopedia :glass_fines do
  name "Glass Fines"
  aka "fines", "grit"
  kind :resource
  subkind :material
  status :complete
  topics :materials, :trade, :ringglass, :household
  prevalence :common
  available_globally
  summary "Glass fines are the powder and grit of every ringglass working — swept from cutting floors, graded by mesh, and sold into a hundred humble trades. The fines economy is the glass trades' shadow: scrub grit, casting sand, pitch filler, and the fine flours the delicate work pays real money for."
  function "Abrasives, fillers, casting sand, and polishing flours — the working byproduct of all ringglass cutting and grinding"
  grades "Meshed from coarse scrub grit down through casting sand to the polishing flours, with the dead-band certificate dividing household stock from the live fines the resonance trades buy"
  availability "Swept and sold wherever glass is worked; every yard's sweepings contract is let annually and argued longer"

  descriptive_identity(
    appearance: "Gray-white powder and grit in graded sacks, each stamped with mesh and " \
                "the dead-band or live certificate. The fine flours pour like smoke and " \
                "get handled accordingly.",
    working: "Household grit scrubs pots and decks; casting sand beds the foundries; " \
             "pitch and mortar take fines as filler; and the polishing flours finish " \
             "lenses, panes, and instrument faces under wet cloths in draft-free rooms.",
    risks: "Fines are ringglass and remember it — most sweepings grind dead, but a " \
           "live batch answers the band like the sheet it came from, and the " \
           "certificate that divides scrub grit from resonant stock is checked by " \
           "the gauger's fork at every honest mill."
  )

  prose <<~PROSE
    Every saw cut, bore, and grinding pass in the glass trades sheds powder, and the powder is an economy. Glass fines — swept from the cutting floors on contracts the yards let annually and argue longer — move through the mesh mills into grades: coarse scrub grit for pots, decks, and rust; casting sand for the foundry beds; mid-mesh filler for the pitch and mortar trades; and the polishing flours, fine as smoke, that finish lenses and instrument faces and sell for more than the sheet they were cut from. The sweepings contract is the glass district's humblest serious business — a big yard's floors yield steadily, the mills bid on the year's dust sight unseen, and the trade's proverb serves half the system's commerce: the cut pays once, the floor pays always.

    The grading's load-bearing line is the certificate. Most fines grind dead — the working that makes powder breaks the structure that answers the band — but a fraction comes off the floors live, still answering like the sheet it was, and the two stocks part company at the mill: dead-band fines to the household and building trades by the sack, live fines to the resonance trades by the measured jar, for the seeded castings, tuned mortars, and instrument work that want a material with an opinion. The certificate is checked by fork at every honest mill and audited by the #{encyclopedia_ref :gauger, "gaugers"}, because the failure modes run both directions: live grit in a scrub sack hums in a scoured pot, which is a complaint, and dead flour sold live ruins a seeded casting, which is a lawsuit.
  PROSE

  cue "The mill's meshing floor runs the week's sweepings through graded screens, and the sacks stack by mesh number with the dead-band stamp going on last, after the fork."
  cue "In the household cupboard the grit sack sits beside the soap, and the pot scoured with it this morning came up bright as new work."
  affordance "Fines put the glass trades' waste to work at every scale — the scrub sack in each kitchen, the casting sand under every foundry pour, and the live jars that let the resonance trades seed their work with material that already answers."
  pressure "The dead-live line carries the whole trade's trust, so the certificate is forked, stamped, and audited — and a mill caught careless with it loses the sweepings contracts that are the whole business, to competitors who bid the next morning."
  variation "Glasswake's mills grade the fused ridge's sweepings and export system-wide; small yards mesh their own floors on a kitchen screen and sell to the neighbors, certificate by handshake."
  variation "Instrument shops specify polishing flour by yard and even by saw; the finest grade, swept from lens-finishing rooms, resells above the price of many whole cuts."
end
