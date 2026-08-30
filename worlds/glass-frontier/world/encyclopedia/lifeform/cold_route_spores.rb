encyclopedia :cold_route_spores do
  name "Cold-Route Spores"
  summary "Cold-Route Spores are dormant organisms sleeping in the ice of the cold routes that wake to the resonance of a working navigation lamp and flower into pale fans around it. Route crews read the fans as a ledger of every lamp that ever burned there."
  kind :lifeform
  subkind :spore
  status :complete
  topics :ecology, :archives, :navigation, :orbital, :"outer-system"
  prevalence :uncommon
  appears_when all: { place: [:cold, :road] }
  biology "Mineral-shelled spores that sleep in ice for spans the surveys measure in generations, germinating on sustained structural-band tone rather than warmth"
  resonance_relation "Wakes to the working tone of navigation lamps and route beacons; the fan's growth rings record the tone's seasons"

  descriptive_identity(
    appearance: "In dormancy, a gray dust in the ice like ground pepper. Woken, a colony of " \
                "pale fans — palm-sized, ribbed, translucent as scraped horn — growing in a " \
                "tight ring around the lamp post at the exact radius its tone carries.",
    behavior: "The spores sleep through cold and dark on their own scale of patience and wake " \
              "to a sustained working tone. Fans grow while the lamp speaks, rest when it " \
              "rests, and lay down a visible ring for every season of service.",
    threat: "The fans crowd whatever wakes them: an old lamp post carries a generation of " \
            "growth that shades its own light, and clearing crews scrape the fans on the " \
            "maintenance round like any other fouling.",
    senses: "Whatever the spore listens with survives freezing, dark, and vacuum-adjacent " \
            "cold — the survey literature records germination on tone through a hand-width " \
            "of ice.",
    risks: "The fans wake to any sustained tone in the band, and a stranded crew running " \
           "equipment through a cold night has camped inside a flowering by morning — " \
           "harmless, unnerving, and a mark other crews read on the route afterward."
  )

  prose <<~PROSE
    The cold routes — the ice roads of Lithren's approaches, the shadowed legs of the outer runs — carry a sleeping cargo. Cold-route spores lie in the ice as a gray dust, mineral-shelled and patient on a scale surveys measure in generations, and they wake to one thing: the sustained working tone of a navigation lamp. Around a burning route lamp the ice flowers. Pale fans, ribbed and translucent as scraped horn, rise in a tight ring at the exact radius the lamp's tone carries, grow while the lamp speaks, and rest when it goes dark.

    The fans keep books. Each season of service lays a visible ring in the fan, and a route crew reading an old lamp post reads the route's history in the growth — how many seasons the lamp burned, the gap years when the route went unserved, the tight starved rings of the Famine, when the lamps ran weak. Surveyors on new routes core old fan beds the way growers core trees, and the great fan colonies at the Lithren waystations, generations deep around lamps the ring itself planted, are route monuments the crews maintain paths around. Where the fans flower, a lamp burned; the cold roads are mapped in flowers for anyone who can read them.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Fouling and the Stranded Camp"
    Working lamps need clearing. A well-served lamp post buries itself — the fans crowd to the tone's radius and shade the light they woke to — so the maintenance round scrapes the season's growth, and the scrapings go home as trade stock: fan horn cuts into pale translucent sheet for lamp shades and instrument windows, and the route posts sell their scrapings by the sack. Clearing custom leaves the oldest ring standing, partly for the record, partly because a bare post reads as an abandoned route to any crew sighting it from distance.

    The spores grade tones honestly and lamps are merely the usual source. A stranded crew running heaters and instruments through a cold night wakes inside a young flowering, and route wisdom reads the accidental gardens afterward: a ring of fans off the marked road is a camp, a breakdown, or a route someone ran dark, and patrol crews log them the way coastal folk log wreckage.
  PROSE

  cue "Around the route lamp the ice has flowered — a tight ring of pale ribbed fans at exactly the radius the tone carries — and the newest growth is still translucent enough to show the light through."
  cue "The waystation's lamp post rises from a colony generations deep, and the maintenance path spirals through the old growth like a walk through an orchard."
  affordance "The fans are the cold roads' own service record — rings per season, gaps for the dark years — and a surveyor who cores an old bed can date a route's whole working life from one lamp post."
  pressure "The colony crowds what wakes it, so every working lamp buys a clearing rota, and a crew that runs equipment through a cold night camps in a flowering that tells the whole route where they stopped and why."
  variation "Lithren's monument colonies are curated with walkways and left to bury their dead lamps whole; the working routes scrape yearly and sell fan horn by the sack."
  variation "Some outer crews plant a lamp deliberately over rich spore ice and farm the fans, and route traditionalists regard a farmed colony's tidy rings the way archivists regard a forged ledger."
end
