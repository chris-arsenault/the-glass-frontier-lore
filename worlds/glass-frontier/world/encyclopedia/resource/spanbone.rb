encyclopedia :spanbone do
  name "Spanbone"
  kind :resource
  subkind :material
  status :complete
  topics :materials, :"ring-era", :salvage, :trade
  prevalence :rare
  appears_when all: { place: [:debris_field] }
  summary "Spanbone is the truss alloy of the ring's primary structure — the pale metal that held the ring up, recoverable only from the great dead spans and workable only where it already has the required shape. A spanbone member outlasts everything attached to it, and the system builds its most critical joints around salvaged lengths."
  function "Primary structural members for keel roots, gate hinges, lift shafts, and other joints built for the longest service"
  grades "Graded by recovered length and section — whole members command civic prices, while cut stubs and drilled offcuts serve the yards"
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
    Spanbone is the pale truss alloy of the ring's primary structure. After #{elapsed :the_glassfall, approx: true} in debris weather, recovered members retain crisp surfaces, legible load stampings, and true sections. Cutting consumes tools at a rate the yards price into every attempt, so wrights normally use a member whole. Each design accepts the recovered length and curve, then joins the surrounding structure to it with collars, shrink fittings, or lashings.

    Whole members are civic purchases. Recovered lengths become lift-shaft roots, freight-gate hinge beams, and the primary spines of new hulls. Claim crews recover them from the great dead spans under Compact certification, and a whole-member sale at Pell Cut can spend a district's construction budget. By custom the caller reads the original stampings aloud before bidding: section, station, and load class.
  PROSE

  cue "The auction floor clears around a single pale member forty spans long, and the caller reads the ring's own stampings aloud — section, station, load class — before the first bid."
  cue "In the lift shaft's root, one crisp pale beam carries the whole rig's weight between structures visibly younger, rougher, and mortal."
  affordance "A spanbone member is permanence purchasable — the joint built on one outlasts the settlement's every other decision, and the legible stampings certify its capacity in the ring's own engineering hand."
  pressure "A new structure must accept the member's recovered length and curve, so buyers bring wrights to the auction and price the surrounding redesign with the bid."
  variation "Keel-country yards join whole members with patented collars and guarded shrink schedules; frontier wrights use certified lashings where those fittings cannot be made."
  variation "Cut stubs and drilled offcuts from early salvage circulate as heirloom stock, and a spanbone hinge pin remains a wedding gift in the salvage trades."
end
