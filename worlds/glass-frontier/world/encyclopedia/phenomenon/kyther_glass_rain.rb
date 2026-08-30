encyclopedia :kyther_glass_rain do
  name "Kyther Glass Rain"
  summary "Kyther Glass Rain is the mountain storm of the crystal-strewn slopes: charged wind that lifts old splinters from the scree and drives them sideways in glittering sheets. The valleys build for it, the storm season is charted, and the shelters are marked because the storm finds the marks."
  kind :phenomenon
  subkind :catastrophe
  status :complete
  topics :surface, :danger, :ringglass, :ecology
  prevalence :uncommon
  appears_when all: { place: [:surface, :ringglass_rich] }
  medium "The crystal-strewn slopes and settled valleys of the Kyther Range"
  nature "Charged storm winds that lift ringglass splinters from the scree and carry them laterally at speed"
  hazard "Airborne glass in cutting sheets; the storms track the slopes' charge and arrive along the same funnels reliably enough to build against"

  descriptive_identity(
    signs: "The scree starts to whisper before the wind arrives — splinters shifting on " \
           "their beds — and the slope's gleeds green in a line down the funnel while " \
           "the valley's storm bells start the interval ring.",
    effects: "A full storm drives glass sideways in glittering sheets for an hour or a " \
             "day, scouring paint from windward walls, frosting hard glass smooth, and " \
             "resurfacing the scree beds it lifted from in new deposition fans the " \
             "quarries read like tide-wrack.",
    hazards: "Exposed skin and unshuttered glass are the casualties; the storm's mercy " \
             "is that it announces — whisper, green, bells — and its cruelty is the " \
             "steady work it makes of anything caught between shelters."
  )

  prose <<~PROSE
    The Kyther slopes wear the Glassfall's oldest debris — generations of splinters weathered into the scree — and the range's charged storm winds put it back in the air. Glass rain is the result: wind off the high slopes that lifts the splinter beds and drives them laterally in glittering, hissing sheets, scouring the windward face of everything standing and turning the air itself into an abrasive. The storms run the funnels — the same valley throats, season after season, tracked by the range's charge the way water tracks its beds — and the valleys have built against them for three hundred years of learned specificity: windowless windward walls, shutter tracks worn silk-smooth, the deep door porches that let a household receive a storm the way coastal houses receive weather.

    The warning ladder is local knowledge with bells on. The scree whispers first, shifting on its beds as the charge rises; the slope's #{encyclopedia_ref :gleeds, "gleeds"} green in a line down the funnel; and the valley storm bells take up the interval ring that counts the front down. Travelers between shelters make for the marked refuges — the stone shelter huts on every route, painted in the storm colors — and the range's grim old navigation joke is in every guidebook: the shelters are marked so you can find them, and the storm finds the marks too, which is why the paint is renewed every spring and the huts' windward faces are frosted blind. After the blow, the valleys turn out to read the deposition fans, the quarries stake the fresh-lifted beds, and the glaziers collect the storm-frosted panes that the luxury trade, with the Kyther's full contempt, buys as fast as the storms can make them.
  PROSE

  cue "The scree slope has begun to whisper — a dry shifting hiss with the wind still calm — and down in the valley the storm bells take up a measured interval ring."
  cue "The route shelter's windward face is frosted blind and freshly painted in storm colors, and inside, the bench is worn by generations of the same wait."
  affordance "The storm announces itself in order — whisper, green line, bells — and runs known funnels, so the valleys shutter, shelter, and afterward harvest: fresh-lifted splinter beds for the quarries and storm-frosted glass the outside trade pays well for."
  pressure "Everything between shelters when the front arrives is being steadily abraded, so route timing in storm season is bell arithmetic — and the refuges' own markings need yearly renewal because the storm erases exactly what makes them findable."
  variation "The deep valleys build windowless and ride storms out at home; the high quarry camps evacuate down-funnel on the first whisper and lose a camp to pride every few years."
  variation "Storm-frosted panes and scoured stone sell to the luxury trade as Kyther finish, and the range's craftsmen take the money while maintaining that buying weather damage on purpose is the surest sign of a soft life."
end
