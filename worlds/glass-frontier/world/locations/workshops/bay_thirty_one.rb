installation :bay_thirty_one do
  name "Thirty-One"
  summary "Thirty-One is a sealed textile workshop on Wash Four's dirty route, where workers map and preserve resonant traces carried by cloth."
  playable_as :chronicle_location
  aka "Bay Thirty-One"
  subkind :workshop
  function "Maps, washes, and preserves resonant traces carried by textiles"
  status :complete
  tags :household, :archives, :"signal-freq", :trade
  prominence :marginal
  omit_facts :maintained_by

  descriptive_identity(
    setting:
      "A sealed textile room behind a pressure door on Wash Four's " \
      "dirty route, its bay number still painted overhead. The central " \
      "table stands on ceramic feet and drains into six sampling jars, " \
      "wall frames stretch garments to full extension under directional " \
      "lamps, and twenty-seven trace-bearing garments currently hang " \
      "from the ceiling with clear floor lanes beneath them.",
    activity:
      "Every job starts dry: tuned wooden paddles worked over the " \
      "cloth, the strongest traces chalked, loose findings lifted into " \
      "labeled trays, the whole map copied onto fired ceramic before " \
      "any water enters. Overhead, a worker plays the hanging garments' " \
      "traces in order while walking the route they describe.",
    hazards:
      "A garment handed in for urgent answers still spends its full dry " \
      "pass under the paddles while the owner waits outside the " \
      "pressure door. Anything that falls out during that pass goes to " \
      "a tray, not back to its owner — a pocketed item comes home only " \
      "if it was named before the wash."
  )

  prose <<~PROSE
    Thirty-One is a sealed textile room on Wash Four's dirty route. The bay number remains over its pressure door, while daily work drops the first word. Its central table rests on ceramic feet and drains into six sampling jars. Wall frames hold garments at full extension while directional lamps expose residue, repairs, and stressed fibers.

    Every job begins dry. Workers map a garment with tuned wooden paddles, chalk the strongest traces, and remove loose findings into labeled trays. Wash water enters only after the map is copied onto a fired ceramic sheet.

    Twenty-seven garments carrying the repeated voice now hang from the ceiling frames. Floor lanes remain open beneath them so workers can play the traces in order while walking the route they describe.
  PROSE

  log "2026-08-21 — Made the workers' shorthand Thirty-One primary while retaining Bay Thirty-One as the formal designation."

  gm_note :complicates, "No water touches a garment until its map is copied onto fired ceramic, so a piece handed in for urgent answers spends a full dry pass under paddles and chalk while its owner waits outside the pressure door."
  gm_note :appears, "Twenty-seven garments hang from the ceiling frames with the floor lanes kept clear beneath them, so anyone crossing the bay walks the route the traces describe while a worker plays them in order overhead."
  gm_note :triggered_by, "Whatever falls out of a garment during the dry pass goes into a labeled tray instead of back to its owner, so a courier who wants a pocketed item returned has to name it before the wash and collect it from the tray."
end

relate :rel_bay_thirty_one_located_in_wash_four, :located_in, :bay_thirty_one, :wash_four, since: 2435 do
  prose "Thirty-One handles disputed and trace-bearing textiles at Wash Four."
end
