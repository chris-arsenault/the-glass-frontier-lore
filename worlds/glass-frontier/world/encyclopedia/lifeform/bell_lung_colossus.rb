encyclopedia :bell_lung_colossus do
  name "Bell-Lung Colossus"
  summary "A bell-lung colossus is a building-sized engineered creature that coils around a habitat air shaft and breathes for the structure, exhaling whenever the frame bends. The elves grew them as living ventilation, and the habs that still have one build their lives around its breath."
  kind :lifeform
  subkind :creature
  status :complete
  topics :"ring-hab", :"ring-era", :ecology, :danger
  prevalence :rare
  appears_when all: { place: [:sealed_hab] }
  origin "Elven-engineered ventilation organism of the intact ring"
  biology "A slow cold metabolism fed on shaft condensate and airborne organics; the bell-shaped lung chambers ring faintly on each exhale"
  function "Breathes for a habitat section, driving air through the shaft it coils around and answering structural flex with pressure"
  lifespan "Every documented colossus predates the Glassfall; the archives record hatchings on the intact ring and none since"

  descriptive_identity(
    appearance: "A pale coiled bulk filling the shaft gallery like rope in a locker, its hide the " \
                "gray of old ceramic, with a crown of bell-shaped lung chambers that swell and " \
                "settle in a rhythm a whole district learns in the cradle.",
    behavior: "It sleeps in its coil and breathes on the shaft's schedule, quickening when crowds " \
              "thicken the air and easing in the off-shift. When the frame bends — a docking " \
              "shock, a settling span — it exhales hard, and the gust arrives ahead of the creak.",
    threat: "Its danger is scale and reflex: an exhale in a narrow gallery knocks a standing " \
            "adult down, and maintenance inside the shaft is scheduled against its rhythm the " \
            "way tide work is scheduled against water.",
    senses: "It reads the frame through its coil — surveys record it answering loads the hab's " \
            "own gauges register minutes later — and it turns its crown toward unfamiliar " \
            "engine notes.",
    risks: "A colossus off its rhythm is district news: quickened breath with an empty gallery " \
           "has preceded three recorded pressure failures, and a hab that hears its lung hurry " \
           "checks the seals first and the creature second."
  )

  prose <<~PROSE
    A handful of habs still breathe through a bell-lung colossus. The creature fills its shaft gallery like rope coiled in a locker — a pale, building-sized bulk crowned with bell-shaped lung chambers — and it does for its section what pumps do elsewhere: drives the air, holds the pressure, and answers the structure's flexing with compensating breath. The #{encyclopedia_ref :elves, "elves"} grew them for the intact ring as living ventilation, and the ring's registers list them among machinery, by shaft and feeding schedule, with the same bureaucratic calm they give the pumps.

    A hab with a colossus lives to its rhythm. The breath is the district's clock and lullaby: it quickens with crowded halls, eases in the off-shift, and rings faintly at the crown on each exhale — the bell in the name. When the frame bends, from a docking shock or a settling span, the creature exhales hard, and the gust reaches the galleries ahead of the creak. Vey's ward wardens treat the lung's rhythm as an instrument in its own right and log it beside the gauge readings, because the coil reads loads through the structure minutes before the hab's own instruments agree.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Keeping a Lung"
    A colossus is fed at the shaft mouth — condensate sludge and gallery sweepings by the barrow, on a schedule its #{encyclopedia_ref :minder, "minder"} keeps and its district subsidizes — and worked around with tide-table discipline. Shaft maintenance happens in the long ease of the off-shift breath; a crew caught inside on a hard exhale comes out bruised and lectured. The creature tolerates its neighbors with the indifference of weather, and the one recorded exception is engine noise new to it, which turns the crown slowly and quickens the rhythm until the noise becomes familiar or leaves.

    Every documented colossus predates the Glassfall. The archives record hatchings on the intact ring — clutch entries, shaft assignments — and record the method with them in notation the archives preserve and the trades still argue over. The habs that keep a lung therefore keep it the way a family keeps its last heirloom of a kind: with a named minder, a civic feeding budget, and a standing rule that the creature's health outranks the convenience of any schedule touching its shaft.
  PROSE

  cue "The whole gallery breathes — a long, faintly ringing exhale moves the hung laundry and everyone's hair at once — and conversation pauses around it as automatically as around a passing cart."
  cue "A barrow crew tips condensate sludge into the shaft-mouth trough while a coil the color of old ceramic shifts somewhere above, and the barrow crew's timing is visibly rehearsed."
  affordance "The lung is a living pressure system and early-warning instrument in one: it answers structural loads minutes ahead of the gauges, and a ward that logs its rhythm alongside instrument readings catches what either alone would miss."
  pressure "The creature's reflexes are scaled to the shaft, so a hard exhale in a narrow gallery flattens a work crew, and every schedule touching the shaft bends around a breath that answers to loads, moods, and unfamiliar engines rather than to the schedule."
  variation "Vey's colossus is civic property with a salaried minder and a feeding budget defended in ward sessions; a smaller lung in the outer arcs is kept by three families who split the barrow rota and the standing."
  variation "Districts differ on the courtesies — some hush engine tests near the shaft by ordinance, others introduce new machinery to the creature deliberately, running it soft nearby until the crown settles."
end
