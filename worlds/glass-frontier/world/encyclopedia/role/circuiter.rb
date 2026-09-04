encyclopedia :circuiter do
  name "Circuiter"
  summary "A circuiter is an itinerant repair tradesman working a posted circuit with a treadle cart — edges ground, vessels patched, seals renewed, small mechanisms coaxed — arriving on the schedule the circuit keeps. One cart supplies workshop tools to every small settlement on its route."
  kind :role
  subkind :profession
  status :complete
  log "2026-08-31 — Renamed Mender to Chimer; the title comes from the cart's recognized arrival sound."
  log "2026-08-31 — Renamed Chimer to Circuiter. The chime bar is one tool on the cart; the road circuit is the institution that defines the trade and recurs in its books, medals, schedules, guilds, and host records."
  topics :trade, :rebuilding, :household, :transport
  prevalence :uncommon
  appears_when any: { place: [:road, :surface] }

  descriptive_identity(
    attire: "Road clothes under a leather work apron whose pockets are the small " \
            "inventory — stones, solder, gasket stock — with the circuit medal " \
            "of the circuiter's route worn where a settlement can read which " \
            "roads this cart belongs to.",
    tools: "The treadle cart: grinding wheel, small forge cup, seal press, the " \
           "drawer bank of salvaged fittings sorted finer than most yards " \
           "manage, and the chime bar across the tailgate that announces the " \
           "cart's arrival in its own recognized notes.",
    manner: "Unhurried, talkative at the wheel and precise at the bench; a " \
            "circuiter works in public by trade custom — the queue watches, the " \
            "fix is narrated, and the price is named before the work starts — " \
            "and carries the circuit's news between settlements as the job's " \
            "unbilled second service."
  )

  cue "The chime bar sounds its recognized notes at the road's turn, and by the time the cart reaches the well square the queue is already forming — knives, pots, a pump valve, a music box."
  cue "The circuiter names the price before touching the work, grinds the edge at the treadle while the queue watches and comments, and hands it back with the circuit's news from two towns over."
  affordance "The circuit brings workshop-grade repair to settlements a fraction of workshop size — edges, seals, vessels, and small mechanisms handled at the cart, with the drawer bank's salvaged fittings covering what the village store lacks by definition."
  pressure "The circuit posts its schedule and names each price before work begins. Settlements plan repairs for the cart's arrival, so the circuiter records delays at the road registry and sends notice ahead when a season's round slips."
  variation "Road circuiters work the surface settlements by season; hab circuiters ride the ferry rounds with a folding bench, and the debris-field version — the yard skiff that calls at claim hulls — keeps the same chime custom in vacuum, struck on the airlock frame."
  variation "Circuiters' drawer banks double as the roads' informal parts exchange — a fitting bought in one town surfaces two towns on — and the trade's circuit meets, where routes cross at the season fairs, are where the banks restock from each other."

  prose <<~PROSE
    #{encyclopedia_ref :elves, "Elven"} districts kept fabricators as public infrastructure, with ordinary repair available in every neighborhood. After the Glassfall, a fragment village of forty households might keep a forge, a seal press, or a hand skilled at small mechanisms, but seldom all three. The circuiter carries the missing work between settlements. Cart, treadle wheel, forge cup, seal press, and a drawer bank of salvaged fittings make a workshop on axles, working a posted circuit announced at each arrival by the chime bar's recognized notes.

    Work is done in public at the cart, the price named before the first touch, and the repair narrated to the watching queue. A circuiter returns twice a year for a working lifetime, so the same settlements inspect the old work at every visit. The chime bar's notes and circuit are registered with the road offices. Settlements plan repairs toward the posted season, while the cart carries news and salvaged fittings between its stops. The circuit medal on the apron says which roads a cart serves. By trade custom, everyone on those roads helps repair a disabled circuiter's cart.
  PROSE
end
