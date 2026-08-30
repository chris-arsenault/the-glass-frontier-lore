encyclopedia :marn do
  name "Marn"
  summary "Marn are broad-footed grazing animals kept across Avar for wool, milk, hides, meat, and light pack work. Their foot pads sense low vibration, and herders watch a whole herd's response for signs of moving ground."
  kind :lifeform
  subkind :animal
  status :complete
  topics :surface, :ecology, :trade, :resonance
  prevalence :common
  appears_when all: { place: [:surface] }

  descriptive_identity(
    appearance: "A grazing animal standing chest-high on a human, deep-bodied, its coat dense along the spine " \
                "and sparse around the legs. Each broad foot splits into two hard inner toes inside a flexible " \
                "pad that leaves a shallow crescent print in wet clay. Ownership marks are cut into the horn " \
                "sheaths behind the jaw, which shed as the animal matures.",
    behavior: "It grazes steppe grass, scrub, and harvest leavings between ridge shelter and open ground, " \
              "patient on firm stone and reluctant on glass-bearing clay. Stiffening hair between the foot " \
              "pads gives it a continuous sense of ground vibration: a herd notices a loaded caravan beyond a " \
              "ridge before the bells carry, learns the rhythm of the machine it lives beside, and refuses " \
              "ground beginning to slip under a repeated load.",
    threat: "Not a hunter, but a kinetic correction through the ground — a flitter settling close, a changed " \
            "bearing in a familiar pump — can make a tethered group pull at once. One animal planting all " \
            "four feet and lowering its head is temperament; twenty facing the same empty hollow is a reason " \
            "to move the caravan."
  )

  prose <<~PROSE
    Marn are broad-footed grazing animals kept across #{ref :avar, "Avar"} for wool, milk, hides, and meat. A mature animal stands chest-high on a human and carries a deep body under a coat that grows dense along the spine and sparse around the legs. Herding families move them between ridge shelter and open grass as water and road conditions change.

    The animals are patient on firm stone and reluctant on glass-bearing clay. They feel low vibration through the outer pads of each foot and often refuse ground beginning to slip beneath a repeated load. Herders watch that response. Route keepers do not accept it as a survey.
  PROSE

  prose <<~PROSE, section: :biology, heading: "Feet, Coat, and Senses"
    Each foot divides into two hard inner toes surrounded by a broad flexible pad. On dry ground the toes carry most of the weight. In wet clay the pad spreads and releases at an angle, leaving a shallow crescent print instead of a deep hole. Hair between the pads stiffens when the ground vibrates and gives the animal a low, continuous sense of nearby movement.

    Marn hear ordinary sound well and react more strongly to vibration arriving through their feet. A herd can notice a loaded caravan beyond a ridge before its bells carry through the wind. The same sensitivity makes them difficult near mills, pumps, and badly balanced kinetic drives. Animals raised beside one machine learn its rhythm; a changed bearing can unsettle the entire pen.

    Their coat contains a coarse weather layer over soft insulating wool. Steppe spinners separate the two at washing. The long fibers become rope, packing, and hard-wearing cloth. The inner wool goes into clothing, blankets, and the felt pads placed between cargo and a sounding frame.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Herd Work"
    A family herd ranges from a few animals kept beside a farm to several hundred moving between seasonal camps. Lead animals know wells, salt grounds, and the sheltered cuts through a stone shelf. Herders change the route after flood, road work, or a new survey closure and allow time for the herd to learn it. Driving unfamiliar animals across a marked red section is both dangerous and an effective way to lose the trust of every neighboring camp.

    Marn feed on steppe grass, tough scrub, and the leaves left after grain harvest. They need dependable water and cannot take enough from green forage during the dry season. Public well orders therefore name livestock basins explicitly. In a shortage, drinking taps remain first while herd allotments shift to outlying shafts and temporary trough lines.

    Milking and shearing take place in low pens on stone or well-drained soil. A singing route stake outside the gate lets handlers compare the pen with the approach. If the tones divide, the herd leaves before the fence and water trough add another repeated load to the moving layer.
  PROSE

  prose <<~PROSE, section: :operations, heading: "On a Moving Road"
    Pack marn carry light loads across highland paths too narrow for a cargo vehicle. Their pace is slow, and the broad pads handle broken ground without damaging the trails as quickly as wheels or skids. Market caravans often combine pack animals with haulers, shifting grain, wool, instruments, and replacement parts between them when a road changes class.

    The animals dislike active kite fields. A flitter settling nearby sends a kinetic correction through the ground that can make a tethered group pull at once. Ladderwell keeps the livestock yards below the benches and the kite field beyond them. Smaller markets post a landing interval during which animals are held away from the pad.

    A marn that plants all four feet and lowers its head may have sensed moving ground, an approaching vehicle, or another animal calling through the soil. Herders check the whole herd before deciding. One refusal is temperament. Twenty facing the same empty hollow is a reason to move the caravan.
  PROSE

  prose <<~PROSE, section: :culture, heading: "Marks and Exchange"
    Ownership marks are cut into horn sheaths that grow behind the jaw and shed as the animal matures. The mark identifies a household and season rather than permanently branding the body. Lost animals can be returned from the most recent sheath; old pieces become buttons, tool scales, and counters used in market accounts.

    Breeding animals move widely through loan and exchange. A household that accepts a male for one season returns wool, young stock, or future water access according to the local agreement. Those obligations travel between wells and can outlast the animals that created them.

    Market towns process more marn goods than they raise. #{ref :ladderwell, "Ladderwell"} is the eastern steppe's largest wool and machinery exchange, where highland carriers meet lowland herds and repair shops produce pumps sturdy enough for both routes.
  PROSE

  cue "Herds share every steppe road, so a party arriving by kite comes down into somebody's livestock. A flitter settling nearby drives a kinetic correction through the ground and can make a tethered group pull at once, which is why small markets post a landing interval."
  cue "In wet clay the pad spreads and releases at an angle, leaving a shallow crescent print instead of a deep hole."
  affordance "Players who read a stopped animal as a warning get one answer from herders and another from route keepers. One refusal is temperament, a whole herd facing the same empty ground moves the caravan, and no keeper will reopen or close a section on animal behavior alone."
  pressure "Animals kept beside a settlement learn the rhythm of the machine they live next to, and a changed bearing unsettles the entire pen. Work on a mill or pump reaches the livestock before anyone else notices, and the handlers arrive wanting to know what was altered."
  variation "A family herd ranges from a few animals kept beside a farm to several hundred moving between seasonal camps."
  variation "Pack marn carry light loads across highland paths too narrow for a cargo vehicle."

end
