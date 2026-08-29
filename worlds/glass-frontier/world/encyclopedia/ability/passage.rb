encyclopedia :passage do
  name "Passage"
  summary "Passage carries travelers across impossible distance by making a known destination directly reachable for a limited time."
  kind :ability
  subkind :ability
  status :complete
  topics :resonance, :navigation, :transport, :"signal-freq"
  prevalence :rare
  available_globally

  tier :broad,
       effect: "Cross one obstructed span to a destination the traveler can presently sense",
       cost: "Disorientation and loss of balance proportional to the distance bypassed"
  tier :focused,
       effect: "Carry a small group to a place one traveler knows through direct memory or a live signal",
       cost: "The opening remains available to anything close enough to follow before it seals"
  tier :narrow,
       effect: "Move a vessel or company between known destinations without crossing the intervening route",
       cost: "The point of departure becomes unreachable to the user until they complete an ordinary journey of equal difficulty"
  tier :apex,
       effect: "Open a traversable way between any two genuinely known places in the system and sustain it for an army or fleet",
       cost: "The way remains open behind the last intended traveler, and the bearer cannot close it while any pursuer is upon it"

  descriptive_identity(
    signs: "The destination becomes visible through an ordinary opening or across a single step, while sound and air move between both places.",
    effect: "Passage makes two known locations directly adjacent long enough for bodies, vehicles, signals, and pursuing hazards to cross.",
    limits: "A destination must be known through lived memory, a trustworthy live signal, or a traveler who belongs there. A name, map, or guess is insufficient."
  )

  cue "A doorway, hatch, or empty step shows weather and light from the destination before anyone crosses."
  cue "Air, sound, loose dust, and hostile fire can pass in either direction while the way remains open."
  affordance "Passage can extract people from a sealed ruin, board a moving vessel, outflank a fortress, or bring distant allies directly into a battle."
  pressure "The route grants no preference to friends, and an error in what the traveler truly knows can open onto the last place that satisfies the memory."
  variation "Some passages occupy an existing door or hatch and fail when its frame is broken."
  variation "Others appear as a single impossible stride whose far end moves with a living guide or active signal."

  prose <<~PROSE
    Passage makes a destination adjacent. The space between remains where it was; travelers simply stop crossing it. A hatch can open from a ring fragment onto a surface courtyard. One step can carry a boarding party from a kite deck into a vessel moving beyond weapon range. Air, light, sound, loose matter, and danger travel through the opening as readily as people do.

    The destination must be genuinely known. Lived memory is the surest anchor. A live signal can serve when it carries enough of a place to distinguish it from every similar room, and a traveler can anchor a place through the habits and relationships that make it home. A copied name or accurate plan is not knowledge of this kind. Passage follows what the traveler has actually encountered.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "What Follows"
    An open way has two sides and no allegiance. Pressure crosses. Fire crosses. A hostile creature can charge through before the last intended traveler clears it. At greater reach, the way also acquires momentum from both ends; a vessel that opens passage into a storm receives the storm immediately.

    The greatest expression belongs to #{ref :waybearer, "the Waybearer"}. Its bearer can sustain a road for armies and fleets across the Kaleidos system. The mantle cannot close that road while a pursuer is still upon it, turning every rescue into a decision about what may be invited through after the rescued are safe.
  PROSE
end
