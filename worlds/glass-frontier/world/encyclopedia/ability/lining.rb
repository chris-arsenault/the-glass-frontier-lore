encyclopedia :lining do
  name "Lining"
  summary "Lining is the trained laying and keeping of boundary lines in the elves' marker compound — the painted lines that sweeps halt at, service organisms obey, and some ring-era machinery still respects. A liner's fresh line is a wall that costs a brushstroke."
  kind :ability
  subkind :technique
  status :complete
  topics :"ring-era", :household, :training
  prevalence :common
  appears_when all: { place: [:sealed_hab] }
  function "Lays and maintains boundary lines that ring-era organisms and mechanisms treat as walls"

  descriptive_identity(
    signs: "A liner works kneeling backward along the line, brush in one hand and the pot of " \
           "marker slurry warming in the other, laying an even finger-width stripe with the " \
           "steady backward pace of someone paying out rope. Finished lines get the double " \
           "tap — brush handle to deck — that liners give a sound tie-off.",
    effect: "A true line reads as a boundary to the ring's living and mechanical servants: " \
            "sweeps halt at it, vent crawlers turn along it, and the older door mechanisms " \
            "treat a threshold line as a closed gate. The compound answers faint in the " \
            "structural band, and the servants read the answer.",
    limits: "The line binds the ring's servants and stands merely decorative to everything " \
            "else — vermin, weather, and people cross it freely — and a scuffed or thinned " \
            "line fails quietly, which is why liners walk their lines on a calendar."
  )

  prose <<~PROSE
    The #{encyclopedia_ref :elves, "elves"} ruled their ring's servants with painted lines. The marker compound — a mineral slurry the ring's stores held by the tank, and salvage still recovers — dries into the finger-width stripes that #{encyclopedia_ref :sweep, "sweeps"} halt at, vent crawlers steer along, and certain old mechanisms obey as gates. Lining is the living craft of that compound: mixing it, laying a line true, and keeping a settlement's boundary work honest. Every hab has lines worth a life — the stripe holding a sweep's route out of the nursery, the box around a shaft mouth — and the liner's trade is knowing which stripe is ornament and which is load-bearing.

    A line is laid like a guideline and treated like one. The liner works backward along the route at a payout pace, even pressure, even width, with tie-off marks at junctions — the small crossbars that tell the next liner where a line begins, ends, and may be safely joined. Junction discipline is the craft's core, drilled the way route crews drill: a line that wanders or breaks fails its whole length silently, so liners walk their lines on a posted calendar, brush in hand, refreshing scuffs before the servants find them. Household lining — the threshold stripe, the larder box — is common knowledge laid on from the family pot; the certified trade begins where a failed line costs more than a spoiled larder.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Slurry, Salvage, and the Third Rule"
    The compound is salvage stock with a working afterlife. Recovered tanks grade by how strongly the dried line answers in the structural band — first-water slurry from sealed stores, down to the pale reclaimed stock scraped and reboiled from dead sections' own lines — and a liner's pot is blended for the job, strong for a route boundary, mild for a larder. The trade's supply rule is borrowed from the route crews outright and named for them: a third of the pot out, a third back, a third against surprises, because a boundary abandoned half-laid is a gate standing open with a wall's reputation.

    The ring's surviving registers record issue quantities and route assignments, but the formulation sheets have not been recovered. Reboilers hold the working recipe for reclaimed stock. Three archived analyses agree on its minerals and identify different components as the source of the structural-band answer.
  PROSE

  cue "Someone kneels backward down the corridor at a slow even pace, laying a finger-width stripe from a warmed pot, and finishes the junction with two taps of the brush handle on the deck."
  cue "The nursery threshold carries a fresh bright line across it, renewed this season, and the hab's sweep turns at it like a cart at a wall."
  affordance "A true line steers the ring's surviving servants for the price of a brushstroke — routing sweeps, fencing vent crawlers, holding old doors closed — and a certified liner can re-fence a district's living machinery in a working day."
  pressure "People, weather, and vermin cross a marker line freely. Scuffs and thinning weaken its answer without warning, so liners walk every load-bearing stripe on a posted calendar and refresh it before the ring's servants test the gap."
  variation "Households lay their own threshold and larder lines from the family pot; certified liners keep the route boundaries and shaft boxes, and sign their junctions with a personal crossbar mark."
  variation "Rich habs line in first-water slurry and repaint on festival years; poor ones reboil their dead sections' old lines into pale stock and walk the calendar twice as often."
end
