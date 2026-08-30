encyclopedia :dark_counting do
  name "Dark Counting"
  summary "Dark counting is the taught discipline of keeping accurate time by voice and breath when the lights and instruments have failed — counted aloud in the paced cadence every hab child learns, holding a room to true seconds through a blackout. It began as ring-era ceremony and the Glassfall made it a survival skill."
  kind :ability
  subkind :technique
  status :complete
  topics :training, :household, :"ring-hab", :"ring-era"
  prevalence :common
  available_globally
  function "Keeps accurate elapsed time through power and instrument failure — a counted cadence, held steady by training, that paces valve turns, breath rationing, and rescue windows in the dark"

  descriptive_identity(
    signs: "A voice takes up the counting cadence — flat, paced, unhurried — and the " \
           "room's other voices drop under it; counters trade the count at the hundred " \
           "marks with a two-word handover that keeps the cadence unbroken.",
    effect: "A trained counter holds true seconds for hours: valve turns land on " \
            "schedule, air rationing keeps its arithmetic, and when the lights return, " \
            "the count and the clock agree closely enough that the drill logs bother " \
            "recording the difference.",
    limits: "The count needs a rested counter and a disciplined room — panic drags the " \
            "cadence fast and cold drags it slow, which is why the training pairs " \
            "counters and why the handover exists."
  )

  prose <<~PROSE
    On the standing ring the count was liturgy. The #{encyclopedia_ref :elves, "elves"} kept ceremonial counts at their festivals of turning — voices pacing the ring's rotation through the night galleries, a practice their recordings preserve in massed cadence — and the early hab generations inherited it as performance. During the Glassfall, the same cadence kept time after power loss took the clocks with the lights. Valve turns, scrubber cycles, air-ration arithmetic, and rescue windows all depend on elapsed seconds. Dark counting became the flat, paced cadence taught young and drilled seasonally to hold that time through a blackout.

    Counters train against two known drifts: alarm runs a cadence fast and cold runs it slow. Pairs trade the count at hundred marks with a two-word handover that keeps the cadence unbroken, and other speech yields to the counting voice. Households drill the skill with the #{encyclopedia_ref :calling_in, "call"}; dock services run paired four-hour counts in sealed training rooms. Turning festivals still carry the old massed counts through lit galleries, keeping the ceremonial cadence in use between drills.
  PROSE

  cue "The lights go, the room's noise rises for one breath, and then the flat cadence starts from the corner bunk; other voices yield while hands move to the timed valves."
  cue "At the hundred mark the tired counter says the two handover words, the partner's voice takes the cadence mid-beat, and the valve hand makes the scheduled quarter-turn in the dark."
  affordance "A trained count keeps a dead room's arithmetic alive — timed valve work, honest air rationing, and rescue-window decisions made on true seconds instead of fear's clock."
  pressure "Alarm pulls the cadence fast and cold pulls it slow, so paired counters trade at hundred marks and compare the count against any returning clock."
  variation "Every hab's training cadence carries local shape, and the turning festivals keep the old massed ceremonial counts that the discipline descends from."
  variation "Dock services drill paired four-hour counts in sealed rooms and certify their counters; household practice is lighter, but the evening drill before deep-season is kept nearly everywhere the air is machine-made."
end
