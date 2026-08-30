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
    hazards: "The glass cuts exposed skin and abrades unshuttered surfaces. Scree whisper, " \
             "a line of green gleeds, and the interval bells give travelers time to reach " \
             "the route shelters."
  )

  prose <<~PROSE
    The Kyther slopes wear the Glassfall's oldest debris — generations of splinters weathered into the scree — and the range's charged storm winds put it back in the air. Glass rain is the result: wind off the high slopes that lifts the splinter beds and drives them laterally in glittering, hissing sheets, scouring the windward face of everything standing and turning the air itself into an abrasive. The storms run the funnels — the same valley throats, season after season, tracked by the range's charge the way water tracks its beds — and the valleys have built against them for three hundred years of learned specificity: windowless windward walls, shutter tracks worn silk-smooth, the deep door porches that let a household receive a storm the way coastal houses receive weather.

    The scree whispers first, shifting on its beds as the charge rises; the slope's #{encyclopedia_ref :gleeds, "gleeds"} green in a line down the funnel; and the valley storm bells take up the interval ring that counts the front down. Travelers make for the stone shelters painted in the storm colors along every route. The paint requires renewal each spring because the same glass that makes the markers necessary abrades them from the windward side. After the blow, quarry crews read and stake the new deposition fans, while glaziers collect storm-frosted panes for the outside luxury trade.
  PROSE

  cue "The scree slope has begun to whisper — a dry shifting hiss with the wind still calm — and down in the valley the storm bells take up a measured interval ring."
  cue "The route shelter's windward face is frosted blind and freshly painted in storm colors, and inside, the bench is worn by generations of the same wait."
  affordance "The storm announces itself in order — whisper, green line, bells — and runs known funnels, so the valleys shutter, shelter, and afterward harvest: fresh-lifted splinter beds for the quarries and storm-frosted glass the outside trade pays well for."
  pressure "Everything between shelters when the front arrives is steadily abraded, so route timing in storm season follows the bells and refuge markings require yearly renewal before the next crews depend on them."
  variation "The deep valleys build windowless windward walls and shelter at home; high quarry camps evacuate down-funnel on the first scree whisper."
  variation "Storm-frosted panes and scoured stone sell to the outside luxury trade as Kyther finish; local builders reserve the same surfaces for shutters and windward work."
end
