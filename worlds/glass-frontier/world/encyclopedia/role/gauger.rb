encyclopedia :gauger do
  name "Gauger"
  summary "A gauger reads, calibrates, and certifies the instruments a district lives by — walking the round of pressure gauges, flow meters, and band instruments, testing each against carried standards, and sealing accurate instruments. The registered crimp on the seal gives the reading standing in contracts, courts, and halt calls."
  kind :role
  subkind :profession
  status :complete
  topics :trade, :governance, :training
  prevalence :common
  appears_when any: { place: [:urban, :yard, :dock] }

  descriptive_identity(
    attire: "A worked leather instrument coat, its loops and padded pockets holding the " \
            "carried standards — the certified weights, the reference tones, the sealed " \
            "master gauge — with the crimping pliers for the certification seals hung " \
            "where a factor hangs the counter-seal.",
    tools: "The standards case, calibrated against the district masters on a posted " \
           "schedule; the round book listing every certified instrument with its drift " \
           "history; and the lead-and-wire seals whose crimp pattern is the gauger's " \
           "signature.",
    manner: "Skeptical by profession and cheerful about it; a gauger reads an instrument " \
            "the way a factor reads a client, assumes drift the way sailors assume " \
            "weather, and delivers a failed certification with the bedside manner the " \
            "news requires."
  )

  cue "The gauger works down the yard's gauge row with the standards case open — reference in, reading compared, seal crimped or cut — and the shop's foreman trails behind absorbing each verdict."
  cue "On the boiler's dial hangs a lead seal with a crimp pattern the trades read like a signature, and the date punched beside it is inside the season."
  affordance "The gauger's round keeps a district's instruments honest against carried standards — sealed gauges settle disputes, certified readings stand in court and contract, and the round book's drift histories tell the wrights which machines are lying before the machines know it."
  pressure "Carried standards are calibrated against district masters on a posted schedule, and the round book names every instrument tested from them. A bad standard therefore recalls a specific chain of seals for a second round."
  variation "City gaugers walk dense rounds of fixed instruments; the route gaugers ride circuits certifying carrier and dock equipment, and their standards cases are built to survive what the cargo survives."
  variation "The crimp patterns are registered like mixer's marks, and a cut seal — the gauger's public verdict that an instrument lies — stays on the round book's record as long as the instrument does."

  prose <<~PROSE
    The system runs on readings — the pressure that says a boiler is safe, the flow that divides the water shares, the band level that stands between a shop and a halt call — and readings drift. The gauger is the trade that keeps them honest: walking the certification round with the carried standards, testing each instrument against reference weight, tone, and master gauge, and sealing the ones that read true with the crimped lead that makes a reading citable. A sealed gauge settles arguments; an unsealed one is an opinion; and the whole architecture of halt calls, water shares, and freight ratings stands on the assumption, audited seasonally, that the seals mean what they say.

    The round book is the trade's working record. Every certified instrument is listed with its drift history — how far it wandered between rounds, in which direction, under what duty — and the histories are diagnosis: a gauge drifting fast is an instrument being shaken, cooked, or misread by its mounting. Gaugers hand the #{encyclopedia_ref :wright, "wrights"} and #{encyclopedia_ref :minder, "minders"} their earliest warnings as marginalia. Carried standards calibrate against district masters on posted schedules, the masters against the capital's, and each handoff enters the custody record. If a standard fails, the round book identifies every seal that must be cut and tested again.
  PROSE
end
