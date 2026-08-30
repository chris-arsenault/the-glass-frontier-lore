encyclopedia :lung_moss do
  name "Lung Moss"
  aka "moss"
  kind :resource
  subkind :biological_material
  status :complete
  topics :"ring-hab", :ecology, :materials, :danger
  prevalence :uncommon
  appears_when all: { place: [:sealed_hab] }
  summary "Lung moss is the living filter material of the sealed habs: a dense gray-green mat grown in shaft frames that traps structural dust from the air and turns bitter to the taste before the shaft that houses it begins to buckle. The habs breathe through it and lick it for a living."
  function "Filters structural dust from hab air; its taste tracks the load on the shaft that houses it"
  grades "Sweet, flat, and bitter — the taster's ladder — with frame stock graded separately by mat density and seed vigor"
  availability "Grown in frame beds at Lung Three, Kesh, and every hab with a moss ward; frame stock and seed mats trade between habs under stewardship rules"

  descriptive_identity(
    appearance: "A dense gray-green mat filling its shaft frame like bread risen into a pan, " \
                "napped like wet felt and cool to the touch. Working moss carries a clean " \
                "mineral smell; a loaded mat darkens along the seams first.",
    working: "Grown in removable frames racked across airways, harvested and split like turf, " \
             "and read by taste: a licked fingertip pressed to the mat comes back sweet from " \
             "healthy moss, flat from tired moss, and bitter from moss whose shaft is " \
             "carrying wrong load.",
    risks: "The bitterness is the treasure and the trap — it reports strain in the structure " \
           "housing the frame, runs ahead of instruments, and says one word only, so a " \
           "bitter reading starts an inspection rather than ending one."
  )

  prose <<~PROSE
    Sealed habs breathe recycled air through whatever they can grow, and the best thing they grow is lung moss. The mats fill removable frames racked across airways and shaft mouths — dense gray-green turf, napped like wet felt — and do the daily work of trapping the structural dust that ring fragments shed into their own lungs: glass fines, ceramic powder, the gray flour of old decks grinding. A hab's moss ward racks, rotates, and harvests the frames like any crop, and split moss turf goes on to a second working life as packing, poultice stock, and the filter plugs in every respirator the hab issues.

    The taste is the material's second gift and the habs' oldest structural instrument. Moss roots read the frame that holds them, and the frame reads the shaft: a licked fingertip pressed to healthy moss comes back faintly sweet, tired moss reads flat, and moss housed in structure under wrong load turns bitter — distinctly, reliably, and ahead of the gauges. The habs institutionalized the tongue generations ago. Moss wards walk their racks on taster's rounds, the taster's ladder — sweet, flat, bitter — is taught to children with the rest of the survival canon, and a bitter frame is pulled, tagged, and reported with the same standing a #{encyclopedia_ref :span_listening, "listener's"} call carries: the shaft gets inspected, and the argument about why happens afterward.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Wards, Frames, and the Kesh Strain"
    Moss keeping is ward work on the water-board pattern: the beds are common infrastructure, the households along each airway hold assessed shares of the racking and rotation, and the ward's taster holds an office with a walk, a ledger, and standing. Frame stock trades between habs under living-cargo rules — a seed mat travels with its lineage and a second-habitat record like any strain worth keeping — and the great beds at Lung Three, which filter for a whole settlement and predate its current name, seed daughter beds across the ring settlements.

    Strains diverge on the usual lines. Lung Three's deep stock grows slow, filters fine, and tastes with a subtlety its wards claim outsiders waste. The Kesh strain grows fast and coarse, thrives on shifting-gravity decks that sicken gentler mats, and reads strain loudly — Kesh wards say honestly — and the two traditions trade seed mats and disparagement in equal measure at every stewardship fair.
  PROSE

  cue "The taster works down the shaft racks pressing a licked fingertip to each mat in turn, and pauses at one frame to taste again with the expression of someone rereading a bad line."
  cue "A pulled frame leans tagged by the ward door, its seams gone dark, and the shaft behind it is already roped for inspection."
  affordance "The moss filters the hab's air and audits its bones in one crop — a taster's round reads strain in every shaft that houses a frame, ahead of the gauges, for the price of a walk."
  pressure "Bitter says strain and stops there, so every bitter frame buys an inspection of unknown size — and a ward that tastes too cautiously drowns the wrights in false alarms while one that tastes too bravely gets remembered by name."
  variation "Lung Three's slow deep stock filters fine and seeds daughter beds system-wide; the Kesh strain thrives on shifting decks and reads strain loudly, and each ward tradition finds the other's moss exactly like its keepers."
  variation "Split harvest turf lives a second life as respirator plugs, packing, and poultice stock, and hab pharmacopoeias list moss poultice recipes older than the pharmacopoeias."
end
