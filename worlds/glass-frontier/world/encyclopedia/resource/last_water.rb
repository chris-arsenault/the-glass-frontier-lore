encyclopedia :last_water do
  name "Last Water"
  aka "salt"
  kind :resource
  subkind :material
  status :complete
  log "2026-08-31 — Renamed Pan Salt to Scores; the harvesters' scored crust supplies the commodity's shifted working name instead of a source-plus-material label."
  log "2026-08-31 — Renamed Scores to Last Water. Scoring is one harvest procedure. Salters call the set crust from the final basin last water, a commodity name that carries the terraces' uphill brine cycle beyond the coast."
  topics :trade, :household, :"ring-era", :materials
  prevalence :common
  available_globally
  summary "Last water is the working salt of the system, drawn from the elven evaporation pans that still terrace the Kaleidos coasts. The pans walk brine uphill through a cycle of basins, leaving a set crust in the last basin for salters to score, break, and grade from packing coarse to table fines."
  function "Preservation, curing, seasoning, and the mineral base of half the pharmacopoeia's pressings"
  grades "Field coarse for packing and curing, second-break for the kitchens, and pan fines — the clear top crystal — for the table and the mixers"
  availability "Harvested at the coastal pan terraces and traded everywhere; the salter towns' output sets the season's curing calendars system-wide"

  descriptive_identity(
    appearance: "Coarse grades come as broken crust — gray-white slabs and rubble with a " \
                "faint sea-green cast in the deep stacks; pan fines run clear and bright " \
                "as ground glass and are sold in stamped paper the way mixers sell salts.",
    working: "The pans concentrate brine through their terraced cycle and set a harvest " \
             "crust; salters score the field in a grid, break along the lines, and grade " \
             "at the break — clear top crystal from the first lift, coarse from the deep " \
             "cuts.",
    risks: "The pans keep their own calendar — a crust taken early is a season's yield " \
           "spoiled thin, and the salter towns' harvest law fences the fields with " \
           "customs as old as the terraces."
  )

  prose <<~PROSE
    The salt terraces predate every town that harvests them. The #{encyclopedia_ref :elves, "elves"} built evaporation pans along the warm Kaleidos coasts — stepped stone fields that walk brine uphill through basin after basin on a cycle the terraces still keep — and the pans have concentrated the sea on their own patient schedule through the Glassfall, the Famine, and everything since. What arrives in the final basins is last water: a set field of salt, renewed each cycle, that the salter towns take the way ice crews take a frozen field. The harvesters score the crust in a grid, break along the scores, and grade at the break — the clear top crystal lifted first and sold as pan fines, the deep cuts stacked as field coarse for the packing and curing trades.

    Last water is the quiet constant of the working system. Field coarse packs #{encyclopedia_ref :salt_eggs, "salt-eggs"} and cures the fish and the hides; second-break salts every kitchen; the fines season the tables and supply the #{encyclopedia_ref :mixer, "mixers'"} benches, where last water is the mineral base of half the pharmacopoeia's pressings. Coastal trade books distinguish it from #{encyclopedia_ref :first_water, "first water"}: last water renews with the pan cycle and moves by stack and barrel, while first water is a sealed inheritance drawn by flask. The salter towns' harvest sets calendars far inland — curing seasons wait on the salt fleet, and a thin pan year is priced into eggs, fish, and pressings across the system before the first barrel ships. Harvest law is correspondingly old and serious: the pans are common infrastructure under town stewardship, the crust is taken on the pans' schedule and the stewards' word, and the scoring of a field before the stewards call it is the salter coast's version of cutting past the call.
  PROSE

  prose <<~PROSE, section: :trade, heading: "The Salter Towns and the Long Stacks"
    Harvest weeks run the salter towns like festivals with quotas. Scoring crews walk the fields at dawn chalking the grids, breaking gangs follow with bars to the work songs that pace the lift, and the graded salt moves inland from the pan stacks — the long weatherproofed ricks, walled in coarse and roofed in tile, where a good year's surplus waits out the thin ones. A town's long stacks are its treasury and are audited like one; the stack wardens' tallies post at the market bell, and coastal politics runs on stack levels the way ward politics runs on water.

    The pans receive the running-elven-equipment courtesy: stewards clear the channels, dress the sluice stones, and leave the terraced cycle unchanged. A Rekindling-era pumping gallery meant to hurry the brine remains unfinished at its site, and steward oaths at two towns still cite it when forbidding changes to the flow.
  PROSE

  cue "At dawn the scoring crews walk the set salt field chalking a grid across the crust, and the breaking gangs behind them lift the first clear slabs to a work song."
  cue "The stack warden's tally posts at the market bell, and the town reads its year off the long ricks' levels the way farmers read a granary."
  affordance "Salt is the system's preservation infrastructure — the pans deliver it on their own reliable cycle, the grades serve everything from hide-curing to the mixers' benches, and a town's long stacks buffer the thin years for the whole inland trade."
  pressure "The pans keep their own calendar and the trades keep theirs, so a thin pan year travels inland as price before the first barrel does — and the temptation to score early is fenced by the oldest harvest law on the coast."
  variation "Each salter town's pans set a slightly different crystal, and the curing trades specify coasts the way kettle crews specify pitch houses."
  variation "The unfinished Rekindling pumping gallery stands preserved at its site as the coast's cautionary monument, and two towns' steward oaths still mention it by name."
end
