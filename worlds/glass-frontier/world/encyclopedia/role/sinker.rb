encyclopedia :sinker do
  name "Sinker"
  summary "A sinker keeps the buried water — the wells, galleries, and mother shafts that carry a settlement's supply underground — descending on the yearly round to clear, shore, and sound the line. The trade digs by ear, inherits its galleries, and holds the water ledger that divides the flow."
  kind :role
  subkind :profession
  status :complete
  topics :household, :governance, :danger, :"ring-era"
  prevalence :uncommon
  appears_when any: { place: [:surface, :urban] }

  descriptive_identity(
    attire: "Clay-pale working leathers that mark the trade at a distance, the descent " \
            "harness worn to the body's shape, and the sinker's lamp — a ration lamp " \
            "re-collared for gallery draft — hung at the chest where the flame stays " \
            "readable.",
    tools: "The sounding bar for the gallery walls, the shoring kit, the airing lamp, " \
           "and the water ledger: the book of shares, flows, and gallery condition that " \
           "makes the sinker half tradesman and half magistrate.",
    manner: "Deliberate above ground and fluent below it; sinkers speak of their galleries " \
            "in the first person plural, answer questions about the water with numbers, " \
            "and drink one cup from the shaft before posting the year's flow."
  )

  cue "A clay-pale figure in a worn harness descends the well mouth on the yearly round, lamp at the chest, while the households whose water it is stand about the shaft head with the day off."
  cue "The water ledger lies open on the shaft-head stone — shares, flows, this year's gallery notes — and the queue to consult it is longer than the queue for the water."
  affordance "The sinker's round keeps the buried water flowing and honest — galleries cleared and shored, flow sounded against last year's numbers, and the ledger's shares dividing the supply by a record every household can read at the shaft head."
  pressure "The sinker posts the measured flow and recalculates every share in the public ledger. Households may contest the arithmetic at the shaft head, but the year's figure begins with the round completed underground."
  variation "Ladderwell's aquifer galleries descend generations deep and their sinkers serve civic terms with deputies; village wells are kept by a circuit sinker who rides the round like a lamplighter and holds six ledgers."
  variation "Underlayers sinkers work the capital's buried lines where galleries meet ring-era conduits, and their trade examinations include the old junctions' knocking sequences."

  prose <<~PROSE
    Under the dry districts, the water travels in the dark — wells sunk to the aquifers, galleries run laterally along the water table, the mother shafts at Ladderwell descending past generations of tool marks — and the sinkers are the trade that keeps the dark passable. The work is the yearly round: descend, clear the season's silt and falls, shore what the ground has argued with, and sound the line, walking the gallery with the bar ringing the walls to hear where the stone has gone hollow behind the shoring. Sinkers dig by ear as much as by lamp; a gallery's answer to the bar is its health, and the trade's apprenticeship is largely the long slow calibration of an ear against a senior's verdicts, boot to bootprint in the wet dark.

    The ledger makes the trade civic. Buried water divides by shares — flow-time measured out to households and gardens on the old rotation — and the sinker keeps the book: who draws, in what order, against what flow, revised each year from the round's soundings. At the shaft-head reading, the sinker surfaces, drinks the ritual cup, posts the year's flow, and recalculates the shares in public. Dry-district proverb pairs the sinker with the crier: one posts the water and the other carries the posting through town.
  PROSE
end
