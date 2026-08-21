creature :marn do
  name "Marn"
  subkind :animal
  status :complete
  tags :surface, :ecology, :trade, :resonance
  prominence :recognized

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
end

relate :rel_marn_inhabits_avar, :inhabits, :marn, :avar do
  prose "Domestic marn herds graze across #{ref :avar, "Avar"} between seasonal wells and ridge shelters."
end
relate :rel_marn_inhabits_ladderwell, :inhabits, :marn, :ladderwell do
  prose "#{ref :ladderwell, "Ladderwell"}'s lower yards receive pack animals, wool herds, and livestock traders from the eastern steppe."
end
