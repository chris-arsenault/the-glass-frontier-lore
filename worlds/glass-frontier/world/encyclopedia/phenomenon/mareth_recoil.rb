encyclopedia :mareth_recoil do
  name "Mareth Recoil"
  summary "Mareth Recoil is the breath-long reversal of corridor pull that follows a heavy vessel's departure from a loaded freight gate — the corridor snaps back like a plank stepped off, and dock life at the great gates is choreographed around the snap."
  kind :phenomenon
  subkind :physical_phenomenon
  status :complete
  topics :"ring-hab", :danger, :transport, :resonance
  prevalence :rare
  appears_when all: { place: [:dock] }
  medium "Loaded traffic corridors at ring-era freight gates"
  nature "A recoil in the corridor's kinetic pull after a heavy departure, strongest at Mareth's great gate and documented at three other heavy gates"
  hazard "For one breath the corridor pulls the wrong way, and everything unsecured — carts, cargo, people mid-stride — takes a step toward the departed ship"

  descriptive_identity(
    signs: "The departing hull clears the gate, the corridor's steady pull goes still, and then " \
           "the snap: hung chains swing outward, dust lifts toward the gate, and every dock " \
           "hand in earshot has already grabbed a rail because the departure horn told them " \
           "the count.",
    effects: "The recoil scales with the departure's mass and lasts about a breath. Mareth's " \
             "gate crews call the count from the horn — three, two, hold — and the hold is " \
             "obeyed by carts, cranes, and conversation alike.",
    hazards: "A missed hold puts loose carts and walking cargo a full stride toward the gate; " \
             "the gate log's recoil injuries are, near-universally, visitors who heard the " \
             "horn as ceremony."
  )

  prose <<~PROSE
    Mareth's streets thread a Ring-era freight gate, and the gate still behaves like the piece of transit machinery it is. Its corridors carry a working pull — the engineered drift that walks freight toward the berths — and when a heavy vessel departs under load, the pull recoils. For one breath the corridor reverses, like a plank springing up behind a stepped-off foot: hung chains swing gateward, dust lifts and streams toward the departed hull, and anything unsecured takes an uninvited step toward the departed ship. The effect scales with the departure's mass, runs strongest in the great gate's main throat, and has been measured, charted, and argued over by every survey Mareth has hosted since the Rekindling.

    Dock life absorbed the recoil generations ago. The departure horn carries the count — three notes, two, then the long hold — and the hold is the town's shared reflex: carts chocked, cranes locked, walkers railed, talk suspended mid-word with a hand raised, the whole gate district pausing on one drawn breath. The snap passes, the hold releases, and the district resumes so smoothly that visitors describe the whole exchange as a magic trick. Gate crews time the biggest departures for shift turns as a courtesy, and #{ref :mareth, "Mareth"}'s children play a skipping game to the horn count that teaches the reflex before school does.
  PROSE

  prose <<~PROSE, section: :structure, heading: "Measured and Unexplained in the Usual Proportions"
    The surveys agree on the shape and split on the mechanism. Recoil strength tracks departed mass on a clean curve; the corridor's pull instruments record the reversal arriving gate-first and traveling inward at a measured speed; and three other heavy freight gates — all of the same Ring-era pattern — show the same effect at smaller scale. The standing dispute is whether the recoil is the gate's machinery answering the load change or a property of loaded corridors as such, and Mareth's own gate engineers hold the first view, the visiting-survey literature leans to the second, and both camps schedule instruments on the same departures and go home confirmed.

    The gate log gives the phenomenon its civic weight. Recoil injuries cluster among newcomers — the horn heard as ceremony, the hold taken as local quaintness — and Mareth's remedy is institutional: the horn count is taught at the gate door to every arriving crew, in the manner of a safety brief with the pride of an anthem, and a resident's flat hand raised at the third note will stop a stranger's cart with the authority of any bollard.
  PROSE

  cue "The departure horn sounds its three-two-hold, and the whole gate district pauses on one breath — carts chocked, hands on rails, a sentence suspended — before the chains swing and the dust streams gateward."
  cue "A local's flat raised hand stops the visiting crew's cart at the third note, and the snap that follows explains the hand better than any brief."
  affordance "The recoil is charted to the departure schedule, so gate crews stage heavy or delicate work into the guaranteed still intervals — and the horn count gives every trade in the district a shared, precise clock for the day's departures."
  pressure "The snap arrives on schedule and cares nothing for exceptions, so every job near the gate carries a hold discipline — and the load, patient, or ceremony that must cross the throat at departure time negotiates with the horn, and loses."
  variation "Mareth's great gate runs the full horn count and civic hold; the three smaller documented gates mark departures with a bell and a painted brace-line, and their recoil is a stumble rather than a step."
  variation "Gate engineers and visiting surveys keep instruments on the same departures for opposite reasons, and the gate's tavern keeps both camps' standing graphs chalked on facing walls."
end
