encyclopedia :displaced_fauna do
  name "Crossers"
  summary "Crossers are the animal populations whose nests, feeding grounds, or travel routes pass through rooms moved by displacement. Threshold-nesters hold to stable seams, draft-followers leave before a chamber shifts, and shift-riders reappear through sequences of rooms that surveyors cannot reproduce."
  kind :lifeform
  subkind :ecological_group
  status :complete
  topics :ecology, :"fluid-reality", :"ring-hab"
  prevalence :uncommon
  appears_when all: { place: [:displacement_zone] }
  origin "Descended from animals resident when a zone opened and from later arrivals carried through shifted rooms; each zone begins with different stock"
  biology "An ecological group spanning unrelated lineages whose established populations nest in stable thresholds, follow pre-shift air movement, or travel with a room's displacement"
  lifespan "Varies by lineage; the most specialized populations are small animals that have bred through many generations since the Silent Bloom"
  function "Nest density, coordinated departures, and repeated travel routes give residents observable evidence of how a zone is moving"
  resonance_relation "Pressure and airflow account for the departures of draft-followers; the repeated nonadjacent routes kept by shift-riding populations fall outside those measurements"

  descriptive_identity(
    appearance: "Several unrelated bodies recur in the wardens' lists: small " \
                "wall-nesters packed into door frames, long-bodied runners in " \
                "service gaps, and light gliders moving on between-room drafts.",
    behavior: "Threshold-nesters return to the same seams after each shift. " \
              "Draft-followers leave a chamber together before it moves. " \
              "Shift-riders keep circuits through nonadjacent rooms and may " \
              "vanish from one settlement before appearing in another.",
    threat: "Dense colonies strip stores, nest in wiring, and foul door seals. " \
            "Households protect food and live circuits while leaving the " \
            "animals access to the thresholds they monitor.",
    senses: "Pressure and airflow explain the departure of documented " \
            "draft-followers. Marked shift-riders keep repeatable routes " \
            "outside what survey crews can predict from those readings.",
    risks: "A colony carries seeds, parasites, and scavengers along its route, " \
           "so a newly occupied threshold can join two local ecologies before " \
           "the adjoining rooms meet."
  )

  prose <<~PROSE
    Zone wardens call animal populations whose ordinary lives cross moving rooms *crossers*. The category covers descendants of stock caught inside the first Bloom Zones and later animals carried in through new shifts. It joins unrelated lineages through a shared ecological history and observable behaviors: a wall-nester, service-gap runner, and draft glider may share no ancestry and still enter the same survey ledger.

    Wardens recognize three field groups:

    - **Threshold-nesters** build in door frames, wall junctions, and other seams that have held their position through several shifts. A dense old nest records stability at the seam itself.
    - **Draft-followers** move with the changing pressure between incompatible interiors. Several species will leave the same chamber within minutes of one another and settle on the side from which the stable air is entering.
    - **Shift-riders** keep routes through displacement. Marked animals disappear through one room and recur through a sequence of nonadjacent interiors, sometimes in another settlement. Surveyors can plot the circuit after the animals travel it and cannot reproduce the crossing themselves.
  PROSE

  prose <<~PROSE, section: :operations, heading: "In the Warden Ledgers"
    A survey walk records nests beside gauge readings. An occupied threshold stays on the map; a seam abandoned by several species goes on the watch list that morning. Coordinated departures carry more weight than one startled animal, and households learn the distinction by repetition. They keep food in sealed bins, mesh live wiring, and leave known nest pockets undisturbed.

    Air pressure explains the draft-followers and gives residents minutes of warning. A shift-rider's circuit through rooms that never adjoin falls outside those readings. Warden ledgers preserve the circuits as animal movements, with dates and identifying marks, and bar crews from attempting them as routes. The same paths also move seeds, parasites, and scavengers between local ecologies before the adjoining rooms meet.
  PROSE

  cue "Wall-nesters leave three door frames at once and collect along the corridor's inward seam; the household moves its cases before the gauge completes its rise."
  cue "A marked runner appears in a service room two habitats away with the same blue thread still caught in its coat, adding another stop to a route no survey crew can follow."
  affordance "Nest maps show which thresholds have remained stable, coordinated departures warn of an approaching room shift, and marked animals reveal recurring links between nonadjacent interiors."
  pressure "A displaced population carries its food web with it. New arrivals bring seed, parasites, and small predators through the same threshold, joining two local ecologies before their rooms meet."
  variation "Threshold-nesters may remain within one building for generations, returning to the same door frames after each movement."
  variation "Shift-riding populations range across several habitats and keep a repeatable sequence of rooms whose order appears only in the wardens' animal ledgers."
end
