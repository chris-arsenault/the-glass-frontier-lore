encyclopedia :thirty_one_echo do
  name "Thirty-One Echo"
  kind :phenomenon
  subkind :physical_phenomenon
  status :complete
  log "2026-08-31 — Renamed Thirty-One Echo to The Knock; the receiving deck's placeless impact sound supplies the freight-grid effect's direct working name."
  log "2026-08-31 — Restored Thirty-One Echo. The knock is the audible symptom; Bay Thirty-One identifies the surviving freight grid and echo is the established term for a physically retained repetition."
  topics :"ring-era", :mystery, :trade, :resonance
  prevalence :rare
  appears_when any: { place: [:dock, :yard] }
  summary "Thirty-One Echo occurs where parts of an elven freight-registration grid survive. An impact on a linked loading floor sounds again at its receiving deck after a fixed delay, preserving the volume and timing of the original strike."
  medium "Linked loading floors and receiving decks cut from a surviving elven freight-registration grid"
  nature "A surviving registration link that reproduces the sound of each impact at the receiving deck after a constant delay"
  hazard "Every impact on an active loading floor is audible at its receiver, including work intended to remain private"
  known_forms "Single live links between one floor and one receiver; several floors repeating into one hall; and orphan receivers that sound for inaccessible or collapsed loading rooms"
  operating_limit "A knock carries the impact's sound and timing, not the load itself, and ends where the surviving registration grid is broken"

  descriptive_identity(
    signs: "A dry, placeless knock sounds through the receiving floor and " \
           "matches an impact on a linked loading room after the same measured " \
           "delay on every test.",
    effects: "Routine work becomes a low murmur at the receiver. Large loads " \
             "interrupt the room at full volume, and clocks at both ends " \
             "preserve the link's fixed lag.",
    hazards: "The link carries sound alone but publishes every impact. Orphan " \
             "receivers may also announce activity in rooms that cannot be " \
             "reached or inspected."
  )

  prose <<~PROSE
    Elven freight depots registered arrivals by impact. A load set on a linked floor repeated its sound at a receiving hall, where clerks tallied deliveries by ear and with #{encyclopedia_ref :rattle_tally_dust, "tally dust"}. Surviving pieces of those grids still reproduce a strike at their receiver after a constant delay. The repeat matches the original volume and timing closely enough for crews to identify which linked floor is working.

    A single active floor produces an occasional knock. Several floors linked to one hall make a workday murmur. Some receivers continue to sound for loading rooms that have collapsed, shifted, or become inaccessible; registrars compare the knocks with old plans and current work logs before treating an unknown strike as evidence of movement. Workshops on an active floor accept that every dropped tool and heavy load is public at the receiving end.

    One accessible circuit joins workshop floors at #{ref :bay_thirty_one, "Bay Thirty-One"} to the former receiving deck beneath #{ref :exchange_c, "Rattle's market"}. A heavy impact pauses trade and starts wagers on what fell. Linked workshops announce their largest deliveries by setting them down hard, while work requiring quiet or secrecy is done elsewhere.
  PROSE

  cue "A knock sounds under a former receiving hall with no local source; a clerk checks the clock, then asks which linked floor was working at that exact lag."
  cue "A receiving deck carries a steady workday murmur until one full-volume impact stops every conversation and sends the registrar to the linked-floor ledger."
  affordance "A known knock lets registrars monitor active loading floors from the receiver and identify large arrivals without opening the linked rooms."
  variation "Some grids preserve one clean link, while others merge several floors into a murmur whose separate delays must be measured and kept in a register."
  variation "An orphan receiver repeats impacts from a collapsed or inaccessible room, providing evidence of activity without revealing what moved there."
end
