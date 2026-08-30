encyclopedia :passings do
  name "Passings"
  summary "Passings are the scheduled shadows of surviving ring fragments crossing the surface of Kaleidos — minutes of moving dusk that arrive to the almanac, structure the working day, and mark the sky's calendar in every surface settlement."
  kind :phenomenon
  subkind :physical_phenomenon
  status :complete
  topics :surface, :"ring-era", :navigation, :ecology
  prevalence :common
  appears_when all: { place: [:surface] }
  medium "Sunlight and shadow across the surface of Kaleidos"
  nature "Orbital shadows of the larger surviving ring fragments, periodic and precisely predictable"
  function "Surface settlements schedule work, rest, and growing cycles around the passing tables"

  descriptive_identity(
    signs: "A wall of soft dusk slides over the land at a walking cloud's pace — light dims, " \
           "heat eases, gleeds brighten — and slides on, minutes later, restoring full day. On " \
           "clear nights the same fragments cross as slow bright beads.",
    effects: "Each settlement's almanac lists its passings to the breath: the long midday one " \
             "for rest and hot-work, the pair of short morning ones the markets open between, " \
             "the deep seasonal crossings the growers plant against.",
    hazards: "A passing drops surface temperature and light together, and hot-country work " \
             "planned into a passing must finish with it — Ashvane road crews caught mid-pour " \
             "by the returning sun have the burns to teach the lesson."
  )

  prose <<~PROSE
    The intact ring cast one shadow, a steady band the old surface almanacs call the ribbon, and the surface lived under its single daily crossing. The broken ring casts many. The larger surviving fragments — the inhabited arcs, the great dead spans — cross the sun on their orbits and send their shadows over the land as passings: minutes of moving dusk that arrive on schedule, to the breath, generation after generation. Light softens, heat eases, the #{encyclopedia_ref :gleeds, "gleeds"} brighten on glassy ground, and then full day slides back from the west edge of the shade.

    Surface life is built to the passing tables. The long midday passing is the rest in hot country and the working window for heat-shy trades — glazing, wax work, the pouring of road surface on Ashvane's cousin-climates of the Avar summer. Markets open between the paired short passings of morning, and "first shade" and "second shade" are hours in every surface town's mouth. Growers plant to the deep seasonal crossings, when a great fragment's shadow returns day after day for a span of weeks and the fields under its track get a cooler season inside the season. A settlement's passing table is its first civic document; the almanac offices of Sithari print them for every registered town, and a town's copy, posted at the well or the market bell, is annotated in local hands until the next printing.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Shade Work and Shade Custom"
    The predictability is the point. A passing is a scheduled resource: cool light on demand, twice or thrice daily, priced into labor contracts — shade-work rates for jobs that must run in a passing, sun-work rates for jobs that must dodge one. The hazard is the schedule's other face. The shadow ends as punctually as it arrives, and hot-country work that overruns its passing meets the returning sun on open ground; Ashvane and Avar crews both drill the walk-away rule, and the almanac margin in any working household is a tally of near things.

    Custom has grown over the tables like moss. Courting couples in the Sable Crescent walk the long passing. Kyther funerals time the lowering to a shade's arrival. Children everywhere play the game of outrunning the shadow's western edge, and mostly lose, and the game is older than any town that hosts it — the ring's own registers record it played under the ribbon.
  PROSE

  cue "A soft wall of dusk slides across the fields at a walking pace; workers straighten, markets pause mid-haggle, and the whole street's shadow arrives and leaves to the minute the posted table promised."
  cue "At the market bell hangs the town's passing table, printed in Sithari and annotated in three generations of local ink."
  affordance "A passing is scheduled cool and shade on open ground — the working window for heat-shy trades, the surface traveler's free rest stop, and a clock the whole countryside reads bare-eyed."
  pressure "The shade ends to the minute, so any work, march, or meeting planned into a passing inherits its deadline — and the returning sun in hot country grades overruns harshly."
  variation "Fragment towns under a deep seasonal track get a cool growing season inside the season and plant a second crop against it; their neighbors a valley over, off the track, buy the surplus and resent the geometry."
  variation "The Sable Crescent walks its long passing for courtship and the Kyther valleys lower their dead to a shade's arrival, and both customs cite the other as the imported one."
end
