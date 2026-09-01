encyclopedia :fracture_afterimage do
  name "Afterseeing"
  summary "Afterseeing is an innate visual trait that preserves a moving object's last seen outline, position, and heading for several breaths after it leaves view. Debris crews count the age of each afterimage aloud."
  kind :ability
  subkind :innate_sensitivity
  status :complete
  log "2026-08-31 — Renamed Outlining to Afterseeing. The Fracture trade term joins the lingering perception to the Ashenmaw afterseer who practices it; an outline is only the shape the sense retains."
  log "2026-08-31 — Removed the broad tier. Afterseeing is an innate sensitivity, not a resonant spell."
  topics :danger, :salvage, :orbital, :training
  prevalence :rare
  appears_when all: { place: [:debris_field] }

  descriptive_identity(
    signs: "The afterseer tracks empty space with working attention — eyes " \
           "following a line where onlookers see vacuum — and calls positions " \
           "for objects that left view several breaths ago, counting down " \
           "each ghost's age as it fades.",
    effect: "A seen moving object leaves its outline in the eye — position, " \
            "extent, and heading held as a fading ghost-line for several " \
            "breaths after occlusion, shadow, or glare takes the object " \
            "itself — and a trained afterseer works a debris field's blind " \
            "moments on the ghosts.",
    limits: "The afterimage continues along the last seen course. Maneuvering, " \
            "deflection, or breakup behind cover appears only when the debris " \
            "returns to view, so crews count every ghost's age aloud."
  )

  prose <<~PROSE
    Afterseeing leaves a fading image of a seen moving object across the bearer's visual field. The image retains the object's last position, extent, and heading through occlusion, shadow, or glare. An afterseer calls those positions and gives each ghost an age in breaths, allowing a crew to track debris through short blind intervals.

    Yard schools test the trait with a shutter box and license the measured duration. Working doctrine treats every ghost as an expiring record of the last seen course. Debris that could have maneuvered, deflected, or broken apart behind cover becomes new traffic when it reappears. Rostered afterseers work transit corridors, active salvage, and the crossing seasons when #{encyclopedia_ref :fracture_wake_crews, "Rejoiners"} enter dense fields. Busy traffic layers the bearer's sight with involuntary afterimages, causing eye-ache and bright dreams; short rotations and quiet berths limit the strain.
  PROSE

  cue "The tug drops behind the wreck and the afterseer keeps calling it — position, heading, ghost at two breaths, ghost at four — until it clears the far side within a hand's width of the fading line."
  cue "The yard school's shutter box clicks dark and the candidate keeps drawing the tumbling bar's outline on the slate, three breaths past the shutter — and the examiner starts the roster paperwork."
  affordance "A rostered afterseer bridges short blind intervals caused by occlusion, shadow, and glare, keeping traffic and salvage moving on a spoken age-count."
  pressure "An afterimage preserves the last seen course while unseen debris may turn or break apart; crews that exceed the licensed count work from a false position."
  variation "Transit afterseers work the corridors' scheduled blind spots; salvage afterseers ride the active fields where the ghosts layer thickest; and the crossing-season rosters pay the trade's best rates for its shortest shifts."
  variation "Ghost duration is measured and licensed. The few long-eyed afterseers who retain an outline past six breaths work the worst fields, and their shutter-box scores circulate through yard schools."
end
