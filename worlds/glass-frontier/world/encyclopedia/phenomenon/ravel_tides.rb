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
    Ravel's fragment keeps a chain of working relays threaded through its galleries, and the relays keep a habit the rest of the system's do without. Ahead of each transmission, the space around Ravel leans. Loose objects drift toward whichever relay will fire next — dust in thin streaming lines, crockery walking the shelf, a sleeping cat's bed easing across the deck — the pull building through the hours before the pulse and releasing the moment it completes, dropping the gathered drift in one clattering amen the settlement calls the release. The lean is faithful: it names the next relay in the chain and its timing to the quarter-hour, and Ravel reads its own floors as a broadcast schedule.

    The settlement's answer is the lash. Ravel lives tied down with a thoroughness visitors mistake for fussiness until the first release — tools on cords, shelves lipped and netted, the famous Ravel table with its rimmed edge and its cutlery clips — and the household art of the place is strategic surrender: each gallery keeps a drift basket at its relay-ward end, and the day's escaped oddments collect themselves there for sorting after the release. Sweeping in Ravel means unhooking the basket. Losing something in Ravel means checking the basket first, and the baskets' contents after a big transmission are a public entertainment with a folk custom attached — unclaimed drift goes to the gallery's children, who pray nightly for long broadcasts.
  PROSE

  prose <<~PROSE, section: :structure, heading: "The Chain and the Question"
    The surveys have the pattern cold and the mechanism warm. The pull's timing tracks the relay chain's transmission order exactly, including reroutes — instruments record the lean swinging mid-build when a relay drops from the chain and its traffic reassigns — and strength scales with the coming transmission's length. What the instruments have yet to supply is a carrier: the force arrives without a measured field gradient to ride, and the standing survey's annual report has closed with the same sentence, lightly edited, for a generation: the schedule is confirmed; the mechanism is unmet.

    Ravel's relay crews, for their part, work inside the phenomenon with the unbothered competence of people whose hazard pays rent. The lean is their systems monitor — a wrong lean flags a chain fault before the diagnostic board does — and crews stage heavy maintenance into the slack after a big release, when the tide's ledger is spent and the floors, briefly, keep still.
  PROSE

  cue "The workshop's hung cords all tilt a few degrees in the same direction, and the apprentice checks the wall clock against the lean and says 'north relay, before supper.'"
  cue "The transmission ends and the whole gallery clatters at once — the release — and household life resumes mid-sentence while the children race for the drift baskets."
  affordance "The lean is a free broadcast schedule and a free systems monitor in one — it names the next relay and its timing to the quarter-hour, and a wrong lean flags a chain fault ahead of the diagnostic board."
  pressure "The tide is gentle, cumulative, and indifferent to what it gathers, so every unlashed blade, bottle, and burden in a gallery spends the build creeping toward the same wall — and comes down together at the release."
  variation "Ravel's galleries differ in tide strength by their place along the chain, and rents track it — still galleries for the elderly, lively ones for workshops that have learned to load the drift."
  variation "The relay crews schedule heavy maintenance into the post-release slack, and their private almanac of predicted releases is the settlement's most-bribed document."
end
