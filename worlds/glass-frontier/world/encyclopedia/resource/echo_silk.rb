encyclopedia :echo_silk do
  name "Echo Silk"
  aka "singing thread"
  kind :resource
  subkind :material
  status :complete
  topics :materials, :"signal-freq", :archives, :trade
  prevalence :uncommon
  appears_when any: { place: [:waterway, :archive, :market] }
  summary "Echo silk is the singing thread of the Sable Crescent — larval silk that holds the blurred sound its spinners fed on, woven into hushing veils, murmuring dress bolts, and the archival cloth the registries bind their recordings in. It is graded by ear and priced by what it says."
  function "Sound-holding textile: damps, murmurs, or preserves acoustic character by weave and grade"
  grades "Bow-graded by fullness and blur — hushing grade, murmur grade, and the hymned bolts — with flat-spotted thread sold down to the lining trade"
  availability "Reeled by the Crescent's rearing houses and traded system-wide; the great bolts move with floor-logs as provenance"

  descriptive_identity(
    appearance: "Thread with a gray sheen like wet slate that feels faintly warm to a bare " \
                "hand. Cloth of it seems to breathe in a quiet room — the murmur sits at " \
                "the edge of hearing and steps closer when the room stills.",
    working: "Woven tight, it hushes — veils of it deaden a chamber wall to wall; woven " \
            "loose, it murmurs its season into the room. Cut edges are sealed with graft " \
            "wax or the murmur frays into whisper-fuzz the seamstresses despise.",
    risks: "The thread says what its spinners ate for as long as it exists, so a bolt is a " \
           "recording with no eraser — and more than one house has woven its floor's worst " \
           "week into a wedding silk."
  )

  prose <<~PROSE
    What the #{encyclopedia_ref :echo_larva, "echo larvae"} spin, the Crescent weaves. Echo silk carries its spinners' acoustic diet in the thread — a blurred, sweetened remainder of whatever the feeding water held — and the weave decides what the cloth does with it. Woven tight, the silk hushes: veil cloth that deadens a chamber, the registry curtains that make a reading room out of a market hall, the linings that let the capital's grand doors close on silence. Woven loose, it murmurs, and the murmur is the luxury — dress bolts that rustle with river-talk, hangings that breathe a hymned season into a hall, the famous mourning silks woven from thread fed on the household's own archive water, which say the beloved voices just below understanding.

    Grading is by ear at the sounding bow, and the vocabulary is a wine trade's: fullness, blur, the flat spots of a hungry day, the bright grain of a floor that kept singers. The great bolts travel with their floor-logs as provenance — buyers read the season's acoustic diet the way they would read a vineyard's weather — and the registries, the material's steadiest customers, specify archival cloth by diet outright: recordings swaddled in silk fed on kindred water, on the binders' long-standing and measurable observation that like-fed cloth keeps a crystal's voice truer in storage. The mechanism is argued; the storage results repeat; the registries keep buying.
  PROSE

  prose <<~PROSE, section: :trade, heading: "The Recording With No Eraser"
    The silk's permanence is its price and its complication. Thread says what its spinners ate for as long as the thread exists — washing, dyeing, and decades change the murmur's clothes and keep its content — so a bolt is a recording that keeps its season forever, and the trade has learned the corollaries by expensive example. Floor-logs are contracts; a house that wove a bad week into a wedding silk pays for the reweave and the joke follows the house; and the resale market employs listeners who put an ear to old cloth for a living, appraising estate silks by what the murmur has been saying since the grandmother's day.

    The lining trade takes the rest. Flat-spotted thread, hungry-day reels, the honest blur of the small floors — sewn inside coats and cases where the murmur warms a pocket of quiet — and the Crescent's habit of lining a traveler's coat with home-fed silk is the material at its plainest: the coat says the river, faintly, wherever its wearer winters.
  PROSE

  cue "The dress moves through the quiet room and the room leans in — a rustle of river-murmur at the edge of hearing, stepping closer whenever the conversation drops."
  cue "The buyer holds the bolt's edge to one ear and the floor-log to the lamp, checking the season's diet against what the thread is saying."
  affordance "One material carries the system's quiet — hushing veils for its reading rooms, murmuring bolts for its luxuries, and like-fed archival cloth that measurably keeps stored recordings truer."
  pressure "The thread is a recording with no eraser, so every bolt binds its floor's whole season — provenance, arguments, hungry days — and the estate-appraisal listeners can hear exactly what a house hoped time would launder."
  variation "Mourning silks fed on the household's own archive water say the beloved voices just below understanding, and the custom divides the Crescent's families into those who commission them and those who cannot bear to."
  variation "The lining trade sews the humble grades into coats and cases, and a Crescent traveler's coat murmurs home water wherever it winters."
end
