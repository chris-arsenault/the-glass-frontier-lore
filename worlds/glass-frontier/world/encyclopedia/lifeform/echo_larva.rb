encyclopedia :echo_larva do
  name "Echo Spinner"
  kind :lifeform
  subkind :anomaly
  status :complete
  log "2026-08-31 — Renamed Echo Larva to Echo Spinner; the title names its lasting silk-making form."
  topics :ecology, :"signal-freq", :archives, :trade
  prevalence :uncommon
  appears_when any: { place: [:waterway, :ringglass_rich] }
  summary "Echo spinners are finger-length spinners of the Echo River country that feed on remembered signal in the water and spin it into their silk — thread that holds sound. Rearing houses raise them in hushed rooms on measured echo-water, and the harvest is the Crescent's singing thread."
  origin "Native to the Echo River margins; reared stock kept since the ring era, with elven rearing-house patterns surviving in the Crescent's oldest silk floors"
  biology "A signal-feeding spinner that metabolizes ordered signal suspended in echo-water; dissections trace the feeding vein and silk glands but do not explain how the silk preserves that order"
  resonance_relation "Feeds on signal-bearing water and spins silk that plays back a blurred remainder of what the water carried"

  descriptive_identity(
    appearance: "A pale finger-length spinner, translucent enough to show the dark feeding " \
                "vein along its back, which flickers faintly while it feeds on charged " \
                "water. Spinning, it sways with a metronome regularity rearing hands find " \
                "companionable.",
    behavior: "Wild spinners line the quiet margins of echo-bearing water and spin anchored " \
              "cocoon veils; reared stock feeds on measured echo-water in hushed floors " \
              "and spins on racks, swaying in unison down the rows.",
    threat: "Sound entering a rearing floor becomes part of the season's thread. Houses use " \
            "felt shoes, quiet doors, and work calls pitched below the spinning rows.",
    senses: "It feeds selectively: spinners crowd water carrying strong ordered signal and " \
            "disperse from washed-out stock, and rearing houses grade their water by " \
            "where the larvae gather.",
    risks: "The silk plays a blurred remainder of what the spinner consumed. Graders hear " \
           "washed-out water, a hungry day, or unplanned floor noise in the finished thread."
  )

  prose <<~PROSE
    Echo spinners feed on remembered signal carried by the #{encyclopedia_ref :echo_rivers, "Echo Rivers"}. They line the quiet margins of the Crescent's charged waters — pale, finger-length, translucent spinners with a dark feeding vein that flickers as they feed — and their silk holds a blurred remainder of the signal: voices sweetened past understanding, music reduced to its gait, the murmur the Crescent calls river-talk. A cocoon veil on a wild margin whispers. A woven bolt hums with its whole season.

    The rearing houses have raised them since the ring era, on floors whose pattern the oldest houses attribute to elven design and whose custom argues for the attribution: the floors are kept hushed, warmed, and evenly lit, the spinners fed on measured echo-water dippered from graded stock, and the rearing rows spin on racks in a unison sway the floor-hands pace their own work to. The hush is production discipline. The spinners spin what they steep in, water and air both, and a floor's acoustic diet is its product — the great houses feed archival water for thread that murmurs in period voices, keep singers on retainer for the bolts the trade calls hymned, and fine a slammed door like a spoiled vat.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Thread, Grading, and the Wild Take"
    Reeled and twisted, the silk becomes the Crescent's singing thread — woven into veils that hush a room, instrument windings, the murmuring dress silks the capital pays for, and the archival cloth that binds recordings the registries want swaddled in more of the same. Grading is by ear: the grader draws a thread across a sounding bow and listens for fullness, blur, and the flat spots that mark a hungry day, and a house's floor-book pairs each bolt with the water it was fed and the season's floor-log, which buyers of the great bolts read like provenance.

    The wild take persists beside the houses. Margin veils are gathered under living-cargo rules — the wild lines are the rearing stock's reservoir, and the stewards enforce the leavings — and wild thread, blurrier and stranger than floor silk, has its own buyers: the veils spin whatever the river carried past, and the collectors' market prices the chance of a clear phrase in the murmur the way prospectors price a promising seam.
  PROSE

  cue "Down the hushed rearing floor the racked rows sway in unison, and the only sounds are the dipper measuring charged water and the floor-hand's felt-soled steps."
  cue "The grader draws a thread across a sounding bow, and the room hears a season of river-murmur compressed into one drawn note."
  affordance "The silk is sound made stock — hushing veils, murmuring dress bolts, archival cloth — and a floor's acoustic diet is a product any house can design, from period-voiced thread fed on archive water to the hymned bolts kept for the capital trade."
  pressure "The spinners spin floor noise with the water's signal. The floor-log records each shift, and graders match a marked bolt to the day and room that produced it."
  variation "Great houses feed graded archival water and retain singers for the hymned bolts; small floors feed the daily river and sell honest murmur by the reel."
  variation "Wild margin veils are gathered under steward leavings-rules, and the collectors' market prices them like promising seams — for the chance of one clear phrase in the blur."
end
