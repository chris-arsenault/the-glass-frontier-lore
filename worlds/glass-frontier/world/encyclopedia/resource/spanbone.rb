encyclopedia :spanbone do
  name "Spanbone"
  kind :resource
  subkind :material
  status :complete
  topics :materials, :"ring-era", :salvage, :trade
  prevalence :rare
  appears_when all: { place: [:debris_field] }
  summary "Spanbone is the truss alloy of the ring's primary structure — the pale metal that held the ring up, recoverable only from the great dead spans and workable only where it is already the shape you need. A spanbone member outlasts everything attached to it, and the system builds its most critical joints around salvaged lengths."
  function "Ultimate structural material for members that must survive everything: keel roots, gate hinges, the bones of bones"
  grades "Graded by recovered length and section — whole members command civic prices, cut stubs serve the yards, and spanbone scrap is a contradiction the trade refuses to recognize"
  availability "Recovered from the great dead spans by claim crews under Compact certification; the whole-member trade is a public event each time"

  descriptive_identity(
    appearance: "A pale gray metal with a faint pearl depth, surfaces still crisp after " \
                "generations of debris weather. Recovered members carry the ring's " \
                "own stampings — section, station, load class — legible as the day the " \
                "elves rolled them.",
    working: "It is worked by using it whole: cut only at ruinous cost in tooling, joined " \
             "by the collar-and-shrink methods the wrights developed around it, and " \
             "engineered into designs that accept the member's existing length and " \
             "curve as given.",
    risks: "The material's virtue is the salvage hazard — spanbone members survive the " \
           "failures that kill everything around them, so a promising span is a mass of " \
           "true metal tangled in the Glassfall's dishonest wreckage."
  )

  prose <<~PROSE
    The ring stood on spanbone. The pale truss alloy of the primary structure — the great members that carried the whole impossible arch — survives its fall almost untouched: #{elapsed :the_glassfall, approx: true} in the debris weather and the surfaces are crisp, the stampings legible, the sections true. The #{encyclopedia_ref :elves, "elves"} rolled it; the Glassfall distributed it; and the system has spent the years since learning the material's one joke, which is that it can barely be worked at all. Cutting spanbone ruins tooling at a rate the yards price like disaster. What the trade does instead is use it whole — members recovered at their fallen lengths, engineered into new work as given, the design bending around the metal because the metal declines to bend around the design.

    Whole members are civic purchases. A recovered length becomes the keel root of a settlement's lift shaft, the hinge beam of a freight gate, the spine a #{encyclopedia_ref :wright, "wright"} builds a hull's whole argument around — the joints that must survive everything, holding up structures the member will outlast. The claim crews that work the great dead spans recover them under Compact certification with the care of people moving something worth a district's budget, the whole-member auctions at Pell Cut are attended like festivals, and the stampings are read aloud at sale by custom: section, station, load class, the ring's own voice stating what its bone was built to carry, into a room full of people planning to ask it for less.
  PROSE

  cue "The auction floor clears around a single pale member forty spans long, and the caller reads the ring's own stampings aloud — section, station, load class — before the first bid."
  cue "In the lift shaft's root, one crisp pale beam carries the whole rig's weight between structures visibly younger, rougher, and mortal."
  affordance "A spanbone member is permanence purchasable — the joint built on one outlasts the settlement's every other decision, and the legible stampings certify its capacity in the ring's own engineering hand."
  pressure "The metal accepts use and refuses alteration, so every acquisition is an engineering marriage — the design takes the member's length and curve as vows — and the whole-member market prices accordingly, in civic money, publicly argued."
  variation "Keel-country yards hold the collar-and-shrink joining patents and guard the shrink schedules; frontier wrights join spanbone by lashing and prayer, and their work holds too, which annoys the yards."
  variation "Cut stubs and drilled offcuts from the old profligate decades circulate as heirloom stock — a spanbone hinge pin is a wedding gift in the salvage trades — and the modern trade regards the era that cut them the way foresters regard old-growth stumps."
end
