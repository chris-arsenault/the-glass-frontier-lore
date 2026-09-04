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
    risks: "The thread retains its spinners' acoustic diet for as long as it exists, including " \
           "arguments, hungry days, and every other sound a rearing house fed into a season's bolt."
  )

  prose <<~PROSE
    What the #{encyclopedia_ref :echo_spinner, "Echo Spinners"} spin, the Crescent weaves. Echo silk carries its spinners' acoustic diet in the thread — a blurred, sweetened remainder of whatever the feeding water held — and the weave decides what the cloth does with it. Woven tight, the silk hushes: veil cloth that deadens a chamber, the registry curtains that make a reading room out of a market hall, the linings that let the capital's grand doors close on silence. Woven loose, it murmurs, and the murmur is the luxury — dress bolts that rustle with river-talk, hangings that breathe a hymned season into a hall, the famous mourning silks woven from thread fed on the household's own archive water, which say the beloved voices just below understanding.

    Grading is by ear at the sounding bow: fullness, blur, the flat spots of a hungry day, the bright grain of a floor that kept singers. The great bolts travel with floor-logs recording the season's acoustic diet. Registries, the material's steadiest customers, specify archival cloth by diet outright: recordings swaddled in silk fed on kindred water, based on the binders' repeated observation that like-fed cloth keeps a crystal's voice truer in storage. The mechanism remains disputed; the storage results repeat across registry tests.
  PROSE

  prose <<~PROSE, section: :trade, heading: "A Season Held in Thread"
    Thread retains the sounds its spinners consumed for as long as the material survives. Washing, dyeing, and age alter the tone without erasing the recorded season. Floor-logs therefore form part of the sale contract. A rearing house that supplies an unsuitable wedding bolt pays for the reweave, and resale listeners compare old cloth with its log before valuing an estate silk.

    The lining trade takes the rest. Flat-spotted thread, hungry-day reels, the honest blur of the small floors — sewn inside coats and cases where the murmur warms a pocket of quiet — and the Crescent's habit of lining a traveler's coat with home-fed silk is the material at its plainest: the coat says the river, faintly, wherever its wearer winters.
  PROSE

  cue "When conversation drops, a moving dress releases a river-murmur that was hidden beneath the louder voices."
  cue "The buyer holds the bolt's edge to one ear and the floor-log to the lamp, checking the season's diet against what the thread is saying."
  affordance "One material carries the system's quiet — hushing veils for its reading rooms, murmuring bolts for its luxuries, and like-fed archival cloth that measurably keeps stored recordings truer."
  pressure "Every bolt retains its floor's whole season — provenance, arguments, and hungry days — so floor-logs and listening appraisals travel with valuable cloth through every resale."
  variation "Mourning silks fed on a household's archive water carry familiar voices just below understanding; some families commission them for the burial room and others prohibit them there."
  variation "The lining trade sews the humble grades into coats and cases, and a Crescent traveler's coat murmurs home water wherever it winters."
end
