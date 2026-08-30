encyclopedia :roadspider do
  name "Roadspider"
  kind :technology
  subkind :transport
  status :complete
  topics :transport, :surface, :resonance, :trade
  prevalence :uncommon
  appears_when all: { place: [:surface, :unstable_route] }
  summary "A roadspider is a walking freight carrier for ground that shifts: eight independently sprung legs read the footing through resonance-sensing feet, and the machine refuses bad ground by planting where the ground answers well. Crews follow good footing the way fleets follow a shoal."
  function "Carries freight across unstable, shifting, or glass-sheeted ground on eight resonance-sensing legs"
  classes "Avar route walkers with high cargo slings; Kyther slope walkers with short paired legs; the broad marsh pattern of the Sable Crescent"
  capacity "A route walker carries three heavy pallets and a crew of two; slope patterns trade cargo for reach"
  operating_limit "Walks at a herd's pace and plants only where the ground answers; on dead-flat settled road a wheeled hauler passes it laughing"

  descriptive_identity(
    appearance: "A low slung hull between eight tall independently sprung legs, each ending in a " \
                "broad ringglass-shod foot. At rest it stands splayed like its namesake; walking, " \
                "the legs move in threes and the hull rides level while the legs do the arguing.",
    working: "Each foot reads the ground it touches — a resonance sounding through the shoe — and " \
             "the walker plants weight only where the answer comes back solid. The driver steers " \
             "a heading; the legs choose the steps.",
    risks: "A spider trusts its feet completely, so a route of ground that answers well but sits " \
           "over a void walks the machine onto the void. Crews sound doubtful stretches ahead on " \
           "foot with a pole shoe, and the walking pole is the apprentice's job and education.",
    handling: "Drivers grade routes by how much the legs argue — a quiet route walks itself, a " \
              "loud one needs the pole — and route grades travel between crews like fishing marks."
  )

  prose <<~PROSE
    Avar's roads move, the Kyther slopes shed scree, and the Sable marshes eat wheels whole. The roadspider is the freight answer: a low hull slung between eight tall legs, each ending in a broad ringglass-shod foot that sounds the ground it touches. The walker plants weight where the answer comes back solid and lifts away from ground that answers soft, and it does this leg by leg, continuously, at a herd's patient pace. The driver holds a heading and a schedule; the legs hold the argument with the terrain.

    The craft of spider freight is route reading. Ground that answers well runs in veins — a shelf here, a compacted old roadbed there — and the veins shift with seasons, strikes, and the slow breathing of the glass sheets. Crews follow good footing the way fleets follow a shoal: a route that walked quiet last season gets walked first this season, graded by how much the legs argued, and the grades pass between crews as working currency. A quiet route is worth money; a route gone loud is news the next crew pays to hear.
  PROSE

  prose <<~PROSE, section: :operations, heading: "The Pole and the Void"
    The machine's honesty is its one blind spot. Feet judge the ground they touch, and ground can answer solid over a hollow — a crusted sink, a roofed old cellar, the glass bridge over a drained channel. Doubtful stretches get sounded ahead on foot with a pole shoe, a walking staff shod with the same ringglass as a spider foot, and reading the pole is the apprentice's first responsibility and whole education. A crew that loses a spider to a void has usually lost it to a saved half-hour, and route-grade books mark voids in a hand that stays legible for decades.

    Regional patterns diverge on the usual lines. Avar route walkers stand tall with high cargo slings for flood season. Kyther slope walkers run short paired legs and hug the grade. The Sable marsh pattern spreads its feet broad as serving trays and walks water-logged ground a person sinks in. All of them yield the road to wheels wherever ground holds still, and spider crews wave haulers past on the flats with professional serenity, because the flats end.
  PROSE

  cue "Eight tall legs move in unhurried threes along the broken shelf, the hull riding level as a carried tray, while the driver reads a grade book instead of the ground."
  cue "An apprentice walks ahead of the machine sounding the crust with a glass-shod pole, and the whole crew turns its head at one dull answer."
  affordance "A spider crew moves real freight across ground that ends wheeled traffic entirely, and their route grades — where the ground answered well this season — are purchasable knowledge worth more than the cargo on the wrong week."
  pressure "The feet trust what they touch, so ground that answers solid over a void invites the machine on — and the crew that skips the pole to save a half-hour explains the sling salvage to the owner."
  variation "Avar walkers stand tall with flood slings, Kyther patterns hug slopes on short paired legs, and the Sable marsh build walks on feet broad as serving trays."
  variation "Some crews name their spiders and paint the hulls; Kesh crews leave them bare and instead name the routes, and both traditions defend the practice as obviously correct."
end
