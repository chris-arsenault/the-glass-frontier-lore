encyclopedia :korvath_groundsong do
  name "Korvath Groundsong"
  summary "Korvath Groundsong is a structural-band vibration that travels through river mud and turns suspended loads toward its source — a slow seasonal voice in the bed of the Korvath waterways that barge crews read for depth, season, and trouble the way divers read the water itself."
  kind :phenomenon
  subkind :physical_phenomenon
  status :complete
  topics :resonance, :"structural-freq", :navigation, :ecology
  prevalence :uncommon
  appears_when all: { place: [:waterway] }
  medium "River mud — the settled ringglass silt of the Korvath beds carries the vibration; open water and dry bank both drop it"
  nature "A structural-band resonance moving through glass-silt beds; instruments record it as a slow standing tone that strengthens with silt depth and season"
  known_forms "The steady seasonal song, the doubled tone before bed shifts, and the traveling knock that runs a channel ahead of grounded debris"

  descriptive_identity(
    signs: "A crane's suspended load drifts on its cable and settles pointing upstream " \
           "toward the song's source; mud along the waterline shivers in fine standing " \
           "rings; and a bare hand flat on a grounded hull feels the slow tone the way " \
           "a hand on a rail feels engines.",
    effects: "Hanging loads, moored booms, and anything freely suspended over the silt " \
             "swings gently to face the source; silt settles in combed ridge patterns " \
             "along the tone's grain; and the river's listeners — human and otherwise — " \
             "orient by it.",
    hazards: "The doubled tone runs ahead of bed shifts, and a crew that keeps working " \
             "a channel through the doubling is working ground that is about to move."
  )

  prose <<~PROSE
    The Korvath beds are ringglass silt — #{duration 300} of glass dust settled into river mud — and the silt sings. A structural-band vibration travels the beds in slow seasonal tones, and everything freely suspended above them answers: a kiln barge's hanging load drifts on its cable and settles pointing upstream toward the source, moored booms swing to the same bearing, and the mud along the waterline shivers in fine standing rings that comb the silt into ridges along the tone's grain. The song strengthens where the silt runs deep and fades over scoured rock, so a load on a crane is a depth gauge of a kind: barge crews read the swing of their own cargo the way pilots read a kite line, and a channel's seasonal song is charted in the waterway registers alongside its depths.

    The reading tradition is the phenomenon's working half. River families teach the tones the way diving families teach water — hand flat on a grounded hull, the season's song named before a child names the current — and the vocabulary is short and load-bearing: the steady song is the bed at rest; the doubled tone runs ahead of bed shifts, and a doubled channel is cleared and waited out; the traveling knock runs a channel ahead of grounded debris and sends the salvage launches out to meet whatever the river has taken. The source of the great seasonal tones is charted upstream to the Korvath headwater gorges and there the charts stop — the survey barges' instruments agree on the bearing, agree on the season, and return readings from the gorge mouths that the registry files print with the surveyors' margins shown wide.
  PROSE

  cue "The kiln barge's hanging load drifts on its cable, all four crates settling to point the same way upstream, and the crane hand notes the bearing in the day book like weather."
  cue "The pilot lays a bare hand flat on the grounded hull, waits, and calls the channel doubled — and the tow behind her starts its slow turn out of the reach before she has stood up."
  affordance "The song is free instrumentation for anyone taught to read it — depth by the strength of a load's swing, season by the tone, bed shifts announced by the doubling, and lost cargo heralded by the knock that runs ahead of it."
  pressure "The doubled tone gives a channel hours of warning at most, so the reading is only as good as the crew's willingness to stop mid-haul — and the registries' incident files sort cleanly into crews that waited and crews that had reasons."
  variation "Each Korvath reach has its charted seasonal song, and river folk place a stretch of water blind by tone the way hab folk place a caller's home fragment."
  variation "The headwater gorges hold the source bearings and the wide survey margins, and the gorge crews keep their own reading vocabulary the lower river learns only by working up."
end
