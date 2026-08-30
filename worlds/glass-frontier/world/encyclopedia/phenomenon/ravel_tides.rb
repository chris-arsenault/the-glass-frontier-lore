encyclopedia :ravel_tides do
  name "Ravel Tides"
  summary "Ravel Tides are the periodic force shifts around Ravel that draw loose objects toward the next signal relay due to fire, hold them through the transmission, and release them all at once. The settlement lives lashed, reads the drift as a broadcast schedule, and sweeps its floors by physics."
  kind :phenomenon
  subkind :physical_phenomenon
  status :complete
  topics :"ring-hab", :"signal-freq", :mystery, :danger
  prevalence :rare
  appears_when all: { place: [:damaged_signal, :sealed_hab] }
  medium "The inhabited galleries and near space of Ravel's fragment, threaded by the district's surviving relay chain"
  nature "A gathering pull toward whichever relay will transmit next, building ahead of the pulse and releasing on completion"
  hazard "Everything unlashed migrates — tools, crockery, sleeping cats — and the release drops a gallery's drifted goods in one clattering moment"

  descriptive_identity(
    signs: "Loose things begin to lean: dust streams thin lines along the decks, hung cords " \
           "tilt in agreement, and the day's small objects creep toward one quarter of the " \
           "hab like iron filings deciding. The lean names the relay before the relay " \
           "speaks.",
    effects: "The pull builds ahead of a relay's transmission and lets go on completion — " \
             "the release — dropping everything gathered in one clattering settle. Ravel " \
             "reads the lean as a broadcast schedule accurate to the quarter-hour.",
    hazards: "The tide is gentle and cumulative: a shift's unnoticed creep puts a workshop's " \
             "blades in a drift heap at the gallery's relay-ward end, and the release drops " \
             "them from whatever the tide had managed to climb."
  )

  prose <<~PROSE
    Ravel's fragment keeps a chain of working relays threaded through its galleries. Ahead of each transmission, loose objects drift toward whichever relay will fire next — dust in thin streaming lines, crockery walking the shelf, a sleeping cat's bed easing across the deck. The pull builds through the hours before the pulse and releases when transmission ends, dropping the gathered objects in one clatter. The lean names the next relay and its timing to the quarter-hour, so Ravel reads its floors as a broadcast schedule.

    Ravel lives tied down: tools on cords, shelves lipped and netted, tables rimmed and fitted with cutlery clips. Each gallery keeps a drift basket at its relay-ward end, where the day's escaped objects collect for sorting after the release. Unclaimed drift goes to the gallery's children, and a post-transmission sorting commonly draws the whole gallery.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Chain and the Question"
    The pull tracks the relay chain's transmission order, including reroutes. Instruments record the lean swinging mid-build when a relay drops from the chain and traffic moves to another, and strength scales with the coming transmission's length. Surveys have not measured a field gradient carrying the force, so the published record establishes schedule and strength while leaving the carrier unresolved.

    Relay crews use the lean as a systems monitor: a wrong direction flags a chain fault before the diagnostic board does. They stage heavy maintenance in the slack after a large release, when loose equipment will remain in place.
  PROSE

  cue "The workshop's hung cords all tilt a few degrees in the same direction, and the apprentice checks the wall clock against the lean and says 'north relay, before supper.'"
  cue "The transmission ends and the whole gallery clatters at once — the release — and household life resumes mid-sentence while the children race for the drift baskets."
  affordance "The lean is a free broadcast schedule and a free systems monitor in one — it names the next relay and its timing to the quarter-hour, and a wrong lean flags a chain fault ahead of the diagnostic board."
  pressure "Every unlashed blade, bottle, and burden creeps toward the relay-ward end during the build and drops together at the release; galleries secure sharp and heavy objects before long transmissions."
  variation "Ravel's galleries differ in tide strength by their place along the chain, and rents track it — still galleries for the elderly, lively ones for workshops that have learned to load the drift."
  variation "The relay crews schedule heavy maintenance into the post-release slack, and their private almanac of predicted releases is the settlement's most-bribed document."
end
