encyclopedia :mender do
  name "Mender"
  summary "A mender is an itinerant repair tradesman working a posted circuit with a treadle cart — edges ground, vessels patched, seals renewed, small mechanisms coaxed — arriving on the schedule the circuit keeps and announced by the cart's chime bar down the road. The trade carries the fix-it half of civilization to every settlement too small to keep its own."
  kind :role
  subkind :profession
  status :complete
  topics :trade, :rebuilding, :household, :transport
  prevalence :uncommon
  appears_when any: { place: [:road, :surface] }

  descriptive_identity(
    attire: "Road clothes under a leather work apron whose pockets are the small " \
            "inventory — stones, solder, gasket stock — with the circuit medal " \
            "of the mender's route worn where a settlement can read which " \
            "roads this cart belongs to.",
    tools: "The treadle cart: grinding wheel, small forge cup, seal press, the " \
           "drawer bank of salvaged fittings sorted finer than most yards " \
           "manage, and the chime bar across the tailgate that announces the " \
           "cart's arrival in its own recognized notes.",
    manner: "Unhurried, talkative at the wheel and precise at the bench; a " \
            "mender works in public by trade custom — the queue watches, the " \
            "fix is narrated, and the price is named before the work starts — " \
            "and carries the circuit's news between settlements as the job's " \
            "unbilled second service."
  )

  cue "The chime bar sounds its recognized notes at the road's turn, and by the time the cart reaches the well square the queue is already forming — knives, pots, a pump valve, a music box."
  cue "The mender names the price before touching the work, grinds the edge at the treadle while the queue watches and comments, and hands it back with the circuit's news from two towns over."
  affordance "The circuit brings workshop-grade repair to settlements a fraction of workshop size — edges, seals, vessels, and small mechanisms handled at the cart, with the drawer bank's salvaged fittings covering what the village store lacks by definition."
  pressure "The trade lives on schedule-keeping and named prices, so a circuit's trust is the mender's whole capital — a missed season strands a road's worth of broken pumps, and the settlements keep long memories for both the reliable chime and the other kind."
  variation "Road circuits work the surface settlements by season; the hab menders ride the ferry rounds with a folding bench, and the debris-field version — the yard skiff that calls at claim hulls — keeps the same chime custom in vacuum, struck on the airlock frame."
  variation "Menders' drawer banks double as the roads' informal parts exchange — a fitting bought in one town surfaces two towns on — and the trade's circuit meets, where routes cross at the season fairs, are where the banks restock from each other."

  prose <<~PROSE
    The ring mended itself. The #{encyclopedia_ref :elves, "elves'"} districts kept fabricators the way present-day settlements keep wells, and a broken thing walked to the corner and came back whole; repair, on the standing ring, was infrastructure — ambient, free, and beneath notice. The Glassfall priced it. A fragment village of forty households can keep a forge going, or a seal press, or a hand skilled at small mechanisms — and can keep one of them, so the rest of the fix-it work either travels to the settlement or the settlement's tools die of small wounds. The mender is the trade that travels. Cart, treadle wheel, forge cup, seal press, and the drawer bank of salvaged fittings sorted finer than most yards manage: a workshop compressed onto axles, working a posted circuit that strings a road's settlements into a repair schedule, announced at each arrival by the chime bar's recognized notes.

    The trade's customs are its contract. Work is done in public at the cart, the price named before the first touch, the fix narrated to the watching queue — transparency as reputation management, since a circuit mender will pass this way twice a year for a working lifetime and every botch waits at the roadside. The chime bar's notes are registered with the road registries alongside the circuit itself, and the schedule is the trade's honor: settlements plan their breakages toward the mender's season, the queue forms before the cart does, and the arrival is half market day — news carried between towns as the job's unbilled second service, the drawer banks trading fittings along the road like a slow bloodstream of parts. The circuit medal at the apron says which roads a cart belongs to, and the roads reciprocate. A mender's cart broken down is, by the oldest custom the trade claims, everyone's to fix — the one repair, menders like to say, that Kaleidos always makes on time.
  PROSE
end
