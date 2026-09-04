encyclopedia :halos do
  name "Halos"
  summary "Halos are dormant organisms sleeping in the ice of the cold routes that wake to the resonance of a working navigation lamp and flower into pale fans around it. Route crews read the fans as a ledger of every lamp that ever burned there."
  kind :lifeform
  subkind :spore
  status :complete
  log "2026-08-31 — Renamed Cold-Route Spores to Halos; the former descriptive compound did not supply a setting name."
  topics :ecology, :archives, :navigation, :orbital, :"outer-system"
  prevalence :uncommon
  appears_when all: { place: [:cold, :road] }
  biology "Mineral-shelled spores that sleep in ice for spans the surveys measure in generations, germinating on sustained structural-band tone rather than warmth"
  resonance_relation "Wakes to the working tone of navigation lamps and route beacons; the fan's growth rings record the tone's seasons"

  descriptive_identity(
    appearance: "In dormancy, a gray dust in the ice like ground pepper. Woken, a colony of " \
                "pale fans — palm-sized, ribbed, translucent as scraped horn — growing in a " \
                "tight ring around the lamp post at the exact radius its tone carries.",
    behavior: "Halos sleep through cold and dark on their own scale of patience and wake " \
              "to a sustained working tone. Fans grow while the lamp speaks, rest when it " \
              "rests, and lay down a visible ring for every season of service.",
    threat: "The fans crowd whatever wakes them: an old lamp post carries a generation of " \
            "growth that shades its own light, and clearing crews scrape the fans on the " \
            "maintenance round like any other fouling.",
    senses: "Whatever a halo listens with survives freezing, dark, and vacuum-adjacent " \
            "cold — the survey literature records germination on tone through a hand-width " \
            "of ice.",
    risks: "The fans wake to any sustained tone in the band. Equipment run through a cold " \
           "night can leave a new ring off the marked road, recording the camp for later " \
           "patrols."
  )

  prose <<~PROSE
    The cold routes — the ice roads of Lithren's approaches, the shadowed legs of the outer runs — carry a sleeping cargo. Halos lie in the ice as a gray dust, mineral-shelled and patient on a scale surveys measure in generations, and they wake to one thing: the sustained working tone of a navigation lamp. Around a burning route lamp the ice flowers. Pale fans, ribbed and translucent as scraped horn, rise in a tight ring at the exact radius the lamp's tone carries, grow while the lamp speaks, and rest when it goes dark.

    The fans keep books. Each season of service lays a visible ring in the fan, and a route crew reading an old lamp post reads the route's history in the growth — how many seasons the lamp burned, the gap years when the route went unserved, the tight starved rings of the Famine, when the lamps ran weak. Surveyors on new routes core old fan beds the way growers core trees, and the great fan colonies at the Lithren waystations, generations deep around lamps the ring itself planted, are route monuments the crews maintain paths around. Where the fans flower, a lamp burned; the cold roads are mapped in flowers for anyone who can read them.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Fouling and the Stranded Camp"
    Working lamps need clearing. A well-served lamp post buries itself — the fans crowd to the tone's radius and shade the light they woke to — so the maintenance round scrapes the season's growth, and the scrapings go home as trade stock: fan horn cuts into pale translucent sheet for lamp shades and instrument windows, and the route posts sell their scrapings by the sack. Clearing custom leaves the oldest ring standing, partly for the record, partly because a bare post reads as an abandoned route to any crew sighting it from distance.

    Navigation lamps are the usual sustained tone, but heaters and instruments can also wake halos. A crew running equipment through a cold night may wake inside a young flowering. Patrols log every fan ring found off the marked road as evidence of an earlier camp or unlisted route.
  PROSE

  cue "Around the route lamp the ice has flowered — a tight ring of pale ribbed fans at exactly the radius the tone carries — and the newest growth is still translucent enough to show the light through."
  cue "The waystation's lamp post rises from a colony generations deep, and the maintenance path spirals through the old growth like a walk through an orchard."
  affordance "The fans are the cold roads' own service record — rings per season, gaps for the dark years — and a surveyor who cores an old bed can date a route's whole working life from one lamp post."
  pressure "A working lamp needs a clearing rota as the fans crowd its light. Equipment used through a cold night may also leave a fan ring that marks the camp for later patrols."
  variation "Lithren's monument colonies are curated with walkways and left to bury their dead lamps whole; the working routes scrape yearly and sell fan horn by the sack."
  variation "Some outer crews plant a lamp over halo-rich ice and farm the fans; route records distinguish those regular harvest rings from colonies around navigation lamps."
end
