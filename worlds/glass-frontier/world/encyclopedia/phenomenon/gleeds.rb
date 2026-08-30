encyclopedia :gleeds do
  name "Gleeds"
  summary "Gleeds are drifting lights that gather in the air over concentrated ringglass, shading from amber toward blue as the local resonance gradient steepens. People read their color the way sailors read weather, and following one is walking onto the slope it is announcing."
  kind :phenomenon
  subkind :physical_phenomenon
  status :complete
  topics :resonance, :ringglass, :navigation, :danger, :mystery
  prevalence :common
  appears_when all: { place: [:ringglass_rich] }
  medium "Open air above ringglass concentrations"
  nature "Luminous discharge associated with band bleed across a resonance gradient"
  hazard "Marks steepening gradients; pooling gleeds sit over ground or structure approaching discharge"

  descriptive_identity(
    signs: "Fist-sized patches of sourceless light drifting a hand's height above ground, water, or " \
           "deck, most visible in dusk and shadow. They pool where ringglass lies buried and climb " \
           "slowly toward whatever direction the local field steepens.",
    effects: "Color runs a fixed sequence with the gradient: settled dull amber, a green cast as the " \
             "field starts to move, blue-white where it steepens hard. The sequence tracks the " \
             "field both ways, easing back exactly as fast as the field itself settles.",
    hazards: "A blue-shading gleed stands over ground about to discharge — a footing shift, a crack " \
             "run, a spark across wet stone. Camping in a pool of amber gleeds is common practice; " \
             "staying while they green is how the practice gets its funerals."
  )

  prose <<~PROSE
    Anywhere ringglass lies thick — the sheets under Avar, the veined stone of the Kyther valleys, the fused ridge over Glasswake — the dusk carries gleeds: fist-sized patches of light drifting a hand's height above the ground, cool as the air they hang in, most visible at the edge of shadow. They pool over buried concentrations and drift, slowly, in the direction the local resonance field steepens. Herders, surveyors, and road crews read them as second habit, the way anyone reads clouds.

    The reading is the color. A settled field shows dull amber, an even, unimpressive light that sits still for hours. As the field starts to move the amber takes a green cast, and where the gradient steepens hard the light goes blue-white and small, like a struck spark held at the top of its arc. The sequence is reliable enough that Avar route crews cover ordinary runs on the rule alone, and children can recite it: amber sit, green stand, blue go.

    What the light actually is remains a working dispute. Every instrument pointed at a gleed reads it cold, and the standing survey at Lumenshard holds #{duration 12} of paired readings in which gleed brightness and measured field strength agree in trend and disagree in scale. One survey program holds that gleeds emit; another that they reflect a component of the field the instruments blend together; the paired readings fit both programs, and each publishes the same twelve columns under its own conclusion.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Reading and Misreading"
    The practical craft is knowing what a pool means. Gleeds gather where ringglass concentrates, and a stable amber pool is so reliable a landmark that surface roads plant route stones in them — the stone at a crossing sits in a faint permanent glow, findable at night from a ridge away. The misreading that kills is the inviting one: a pool of light on a cold night looks like a place to camp, and it is, exactly as long as it stays amber. Travelers bed down in light and wake to green, and the ones who learned the rule as a rhyme get up and move, and the ones who learned it as trivia bank the fire.

    Following a single drifting gleed is walking up the gradient it is climbing. Sometimes that is the job — Kyther prospectors track drifters to find where a vein approaches the surface — and the trade's discipline is the turn-back color, agreed aloud before setting out, because the light that was worth following at green-amber is standing over discharging ground at blue.
  PROSE

  cue "Fist-sized patches of dull amber light hang a hand's height off the ground across the slope, still as lamps, with no source and no heat."
  cue "A route stone stands at the crossing in its own faint permanent pool of glow, visible from a ridge away in the dusk."
  affordance "Gleed color is a free gradient instrument: amber ground is settled, green is moving, and a prospector who tracks a drifting gleed uphill is following the field toward whatever concentrates it."
  pressure "The light invites exactly the mistake it warns against — a warm-looking pool is a tempting camp, and a camp that wakes to green cast has minutes to be somewhere else."
  variation "Over water the sequence compresses: river gleeds in the Sable Crescent run amber to blue in a breath ahead of a surge, and ferry crews post a child to watch them where the channel narrows."
  variation "In worked stone the lights run in seams instead of pools, tracing the vein below, and Kyther quarry crews chalk their cuts by the evening seam-light before the morning shift."
end
