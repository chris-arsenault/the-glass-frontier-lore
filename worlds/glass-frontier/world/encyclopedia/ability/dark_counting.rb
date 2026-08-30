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
    On the standing ring the count was liturgy. The #{encyclopedia_ref :elves, "elves"} kept ceremonial counts at their festivals of turning — voices pacing the ring's rotation through the night galleries, a practice their recordings preserve in beautiful massed cadence — and the early hab generations inherited it as performance. The Glassfall repriced it. A fragment hab that loses power loses its clocks with its lights, and everything that keeps a sealed room alive is timed: valve turns, scrubber cycles, air-ration arithmetic, the rescue windows that tell a crew when help can have arrived and when it must move on its own. Dark counting is the ceremony turned tool — a flat, paced counting cadence, trained young and drilled seasonally, that holds a room to true seconds through the whole length of a blackout.

    The craft's content is steadiness. Counters train against the two known drifts — panic runs a cadence fast, cold runs it slow — and the discipline is social as much as personal: the count is held by pairs, traded at the hundred marks with a two-word handover that keeps the cadence unbroken, and a counting voice in a dark room outranks every other voice by custom old enough that the deference is reflex. Households keep the skill the way they keep the #{encyclopedia_ref :calling_in, "call"}; the trades keep it harder, with the dock services drilling four-hour paired counts in the sealed training rooms; and the practice keeps one thread of its ceremonial birth — at the turning festivals, habs still count the old massed counts aloud in the lit galleries, and the drill masters attend approvingly, on the reasoning that a hab that counts for joy will count well when it matters.
  PROSE

  cue "The lights go, the room's noise rises for one breath, and then the flat cadence starts from the corner bunk — and the noise drops under it, because everyone was raised to make room for a count."
  cue "At the hundred mark the tired counter says the two handover words, the partner's voice takes the cadence mid-beat, and the valve hand makes the scheduled quarter-turn in the dark."
  affordance "A trained count keeps a dead room's arithmetic alive — timed valve work, honest air rationing, and rescue-window decisions made on true seconds instead of fear's clock."
  pressure "The count is only as good as the counter's steadiness and the room's discipline, so a blackout becomes a small test of the household's whole order — and the drill logs' worst entries are rooms that argued over the cadence."
  variation "Every hab's training cadence carries local shape, and the turning festivals keep the old massed ceremonial counts that the discipline descends from."
  variation "Dock services drill paired four-hour counts in sealed rooms and certify their counters; household practice is lighter, but the evening drill before deep-season is kept nearly everywhere the air is machine-made."
end
