encyclopedia :banking do
  name "Banking"
  summary "Banking is the household skill of settling a room's resonance for the night — damping the day's accumulated charge with cloth, water, and a walked circuit the way a fire is banked to coals. A banked room holds quiet for sleep until morning traffic wakes it."
  kind :ability
  subkind :technique
  status :complete
  topics :household, :resonance, :training
  prevalence :common
  available_globally
  function "Settles a lived-in room's accumulated resonance so its occupants can rest"

  descriptive_identity(
    signs: "At dusk someone walks the room's circuit — cloth over the bright corner, a hand of " \
           "water across the sill stone, the hung metal touched still — in an order as habitual " \
           "as latching the door. The room's hum drops behind them like a settling bird.",
    effect: "Living loads a room: bodies, work, cooking, and machinery all feed the structural " \
            "band, and a day's charge keeps sleepers shallow and dreams loud. A banked room " \
            "settles under the routine and holds quiet until morning traffic wakes it.",
    limits: "Banking settles the room's own charge and leaves the neighbors' alone. A bed " \
            "against a party wall inherits the far side's evening, and hab etiquette about " \
            "late machinery exists because banking stops at the wall."
  )

  prose <<~PROSE
    A lived-in room accumulates resonance the way it accumulates warmth. Bodies, argument, cooking, and the day's work all feed the structural band, and a room left carrying its full day keeps its sleepers shallow. Banking is the dusk circuit that damps the charge point by point, named for the older habit of banking a fire to coals.

    The circuit is local knowledge in the fullest sense. Every room charges its own way — this corner brightens, that sill carries the street's hum in, the hung pans ring on at a touch — and the household's banking round addresses its own room's habits in an order children absorb by following the walker. Wet cloth over the bright corner. A hand of water across the sill stone. The pans touched still, the loom's tension eased, the door mat squared over the floor seam. A practiced walker banks a family room in the time a kettle takes, and the drop in the room's hum is plain enough that guests raised elsewhere sit up and remark on it.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Beds, Walls, and Watch Rooms"
    The skill shapes buildings. Beds stand off the party walls in ring habs because banking stops at the wall and a neighbor's late shift arrives through it; the courteous hab custom of quiet machinery after the evening bell is banking's public half. Rooms that must stay sharp all night — watch rooms, birthing rooms, a tuner's workbench — are deliberately left unbanked, and "an unbanked room" is the system's phrase for any place where rest is beside the point.

    Trades extend the household skill. Innkeeps bank a full house floor by floor and hire for the speed of it. Carrier crews bank their bunk hold before the sleep shift, and the crew member with the round is doing the day's most thanked chore. Instructors teach children the family circuit as their first resonance lesson, years before any of the theory, on the sound principle that the hands learn the band before the head does.
  PROSE

  cue "At dusk someone walks the room with a damp cloth and a small can of water, touching corner, sill, and hung metal in a fixed order, and the room's background hum steps down behind them."
  cue "Every bed in the sleeping gallery stands a hand's width off the party wall, and the gap is plainly deliberate."
  affordance "A practiced banker can settle any room in kettle-time — a skill worth a bed and breakfast to a full hostel, and the first thing a new household learns about the rooms it moves into."
  pressure "Banking stops at the wall, so late machinery on one side keeps neighboring rooms charged; evening-bell customs set the hours for work that carries through shared structure."
  variation "Ring habs bank hard and early to the evening bell; surface farm households bank light in storm seasons on purpose, keeping the rooms half-awake to feel the weather coming."
  variation "Innkeeps hire banking rounds by demonstration — hand the candidate a cloth and a strange room — and the trade grades the result by where the guests' complaints go quiet."
end
