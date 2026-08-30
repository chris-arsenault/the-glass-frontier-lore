encyclopedia :lamplighter do
  name "Lamplighter"
  summary "A lamplighter keeps a cold route's navigation lamps: walking or riding the line on the lighting round, feeding and tuning each lamp, and tending the spore-fan colonies that flower around them. The elves lit these routes first; the lighters have kept the light moving since."
  kind :role
  subkind :profession
  status :complete
  topics :navigation, :"outer-system", :"ring-era", :danger
  prevalence :uncommon
  appears_when any: { place: [:cold, :road] }

  descriptive_identity(
    attire: "Cold-route gear worn to a polish, with the lighter's ring of lamp keys on a " \
            "lanyard and the fan-knife — half tool, half badge — sheathed at the chest where " \
            "stiff fingers can find it.",
    tools: "The round book listing every lamp with its feeding, tone, and clearing schedule; " \
           "the lamp keys; the fan-knife for the season's scraping; and the spare hearts — " \
           "the small tuned cores that bring a dead lamp back to voice.",
    manner: "Methodical to the bone and talkative by radio custom — lighters call their " \
            "rounds in at every lamp, and the calls' dry running commentary is the cold " \
            "routes' longest-running entertainment."
  )

  cue "At the route lamp a muffled figure works through keys, feed, and tone check in strict order, scrapes a palm of fan growth clear of the lens, and calls the lamp's name and state into the radio before moving on."
  cue "The round book lies open on the sledge bench, one line per lamp in generations of different hands, and the current lighter's entries are the neat ones."
  affordance "The lighter's round keeps a route's lamps fed, tuned, and clear — which keeps the line navigable, the spore colonies recording, and every crew on the route inside a chain of working light with a name responsible for each link."
  pressure "The lighter calls in each lamp's state and enters any deferred work under their own name. Crews hear the calls, route offices track the gap, and the spore rings show how long a lamp went without its scheduled tending."
  variation "The Lithren approach rounds ride sledges between lamps and take a season each way; short valley rounds are walked in a week, and their lighters double as the route's postal service by immemorial custom."
  variation "Lighters call every lamp in by radio, and the accumulated dry commentary of the great rounds — weather, fans, philosophy — is transcribed by route offices and quoted like an almanac."

  prose <<~PROSE
    The cold routes run on chains of navigation lamps — tuned lights whose tone carries as far as their shine — and the lamps run on lamplighters. The #{encyclopedia_ref :elves, "elves"} planted the original lines, and the ring's registers list the lighting rounds among the route services; the modern round is the same work under harder weather. A lighter serves a route, and the route's lamps are in the round book: each with its feeding schedule, its tone setting, its clearing calendar, and its line of entries running back through every hand that kept it. The round is walked or ridden end to end on the season's rhythm, lamp by lamp — keys, feed, tone check, clearing — and called in by radio at each stop, so the route offices track the light's health one lamp at a time.

    Tending the lamp means tending its garden. #{encyclopedia_ref :cold_route_spores, "Cold-route spores"} flower wherever a lamp speaks, the fans crowd the light on their own schedule, and the lighter's fan-knife does the season's scraping — always sparing the oldest ring, by the custom that keeps the route's history legible. The scrapings ride home as trade stock. The remaining rings record each season of growth, and a lighter reading an old post can identify winters when a predecessor deferred the clearing.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Rounds, Hearts, and Succession"
    The lamp's heart — the tuned core that gives it voice — is the round's treasure. Spare hearts travel in the lighter's padded chest-case, a dead lamp's revival is the job's high craft, and the route offices' standing joke with truth in it is that a lighter will surrender the sledge before the case. Long rounds are provisioned on the thirds like any cold-route work, staged at the waystations whose great fan colonies mark generations of lighters' layovers, and the profession's mortality tables are read at every contract signing with route-trade frankness.

    Rounds pass by walking. A successor rides the full round with the incumbent at least once — learning each lamp's temper, each stretch's weather, where the book's neat lines hide hard nights — and the handover is marked at the round's last lamp, where the retiring lighter makes the final entry and the new one makes the first. The route offices countersign, the crews on the route drink to it, and the new lighter begins the next circuit under their own name.
  PROSE
end
