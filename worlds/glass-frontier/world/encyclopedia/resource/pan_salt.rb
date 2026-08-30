encyclopedia :pan_salt do
  name "Pan Salt"
  aka "salt"
  kind :resource
  subkind :material
  status :complete
  topics :trade, :household, :"ring-era", :materials
  prevalence :common
  available_globally
  summary "Pan salt is the working salt of the system, drawn from the elven evaporation pans that still terrace the Kaleidos coasts. The pans concentrate brine on their own schedule, the salter towns harvest by scoring and breaking the crust like a field, and the grades run from packing coarse to the table fines."
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
    The salt terraces predate every town that harvests them. The #{encyclopedia_ref :elves, "elves"} built evaporation pans along the warm Kaleidos coasts — stepped stone fields that walk brine uphill through basin after basin on a cycle the terraces still keep — and the pans have concentrated the sea on their own patient schedule through the Glassfall, the Famine, and everything since. What arrives in the final basins is a harvest crust: a set field of salt, renewed each cycle, that the salter towns take the way ice crews take a frozen field. The harvesters score the crust in a grid, break along the scores, and grade at the break — the clear top crystal lifted first and sold as pan fines, the deep cuts stacked as field coarse for the packing and curing trades.

    Salt is the quiet constant of the working system. Field coarse packs the #{encyclopedia_ref :perch_salt_egg, "salt-eggs"} and cures the fish and the hides; second-break salts every kitchen; the fines season the tables and supply the #{encyclopedia_ref :mixer, "mixers'"} benches, where pan salt is the mineral base of half the pharmacopoeia's pressings. The salter towns' harvest sets calendars far inland — curing seasons wait on the salt fleet, and a thin pan year is priced into eggs, fish, and pressings across the system before the first barrel ships. Harvest law is correspondingly old and serious: the pans are common infrastructure under town stewardship, the crust is taken on the pans' schedule and the stewards' word, and the scoring of a field before the stewards call it is the salter coast's version of cutting past the call.
  PROSE

  prose <<~PROSE, section: :trade, heading: "The Salter Towns and the Long Stacks"
    Harvest weeks run the salter towns like festivals with quotas. Scoring crews walk the fields at dawn chalking the grids, breaking gangs follow with bars to the work songs that pace the lift, and the graded salt moves inland from the pan stacks — the long weatherproofed ricks, walled in coarse and roofed in tile, where a good year's surplus waits out the thin ones. A town's long stacks are its treasury and are audited like one; the stack wardens' tallies post at the market bell, and coastal politics runs on stack levels the way ward politics runs on water.

    The pans themselves get the running-elven-equipment courtesy: stewards clear the channels, dress the sluice stones, and otherwise leave the terraces to their cycle, which has survived three hundred years of clever suggestions. The one recorded improvement scheme to reach construction — a Rekindling-era pumping gallery meant to hurry the brine — is preserved unfinished at its site as the salter coast's favorite cautionary monument, and steward oaths at two towns still include a line about it.
  PROSE

  cue "At dawn the scoring crews walk the set salt field chalking a grid across the crust, and the breaking gangs behind them lift the first clear slabs to a work song."
  cue "The stack warden's tally posts at the market bell, and the town reads its year off the long ricks' levels the way farmers read a granary."
  affordance "Salt is the system's preservation infrastructure — the pans deliver it on their own reliable cycle, the grades serve everything from hide-curing to the mixers' benches, and a town's long stacks buffer the thin years for the whole inland trade."
  pressure "The pans keep their own calendar and the trades keep theirs, so a thin pan year travels inland as price before the first barrel does — and the temptation to score early is fenced by the oldest harvest law on the coast."
  variation "Each salter town's pans set a slightly different crystal, and the curing trades specify coasts the way kettle crews specify pitch houses."
  variation "The unfinished Rekindling pumping gallery stands preserved at its site as the coast's cautionary monument, and two towns' steward oaths still mention it by name."
end
