encyclopedia :stay do
  name "Stay"
  summary "Stay is a broad spell that holds one small physical process at its present stage for several breaths."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Separated Stay from the former Hourtaking ladder because it holds one small process and sends the denied duration only through the practitioner rather than assigning it to another action."
  topics :resonance, :danger, :"kinetic-freq", :cosmology
  prevalence :rare
  available_globally

  tier :broad
  effect "Hold one hand-sized physical process at its present stage for several breaths"
  limits "The practitioner must keep the whole process within reach and perception; Stay cannot reverse a completed change, isolate one part of a living mind, or hold a process after its material leaves the working area"
  consequence "Every denied breath passes through the practitioner's body as additional lived duration, bringing the corresponding fatigue, thirst, healing, hunger, and progress of injury"

  descriptive_identity(
    signs: "A flame holds one shape, a crack stops between grains, or a moving gear waits short of its next tooth while the practitioner's breath and pulse count more time than the room's clocks."
  )

  prose <<~PROSE
    Stay holds one small process where it is. A flame can wait before consuming the next thread of wick, a crack before crossing the next grain, a bleeding vessel before releasing the next pulse, or a gear before taking its next tooth. The surrounding world continues, and the held process resumes from the same stage when the practitioner releases it.

    The whole active boundary must remain within reach. Holding one gear does not hold the machine driving it; torque accumulates at the waiting tooth. Holding one point in a spreading fire leaves the flame free to go around it. A process that moves out of the working area resumes immediately.
  PROSE
  prose <<~PROSE, section: :aftermath, heading: "The Breaths Denied"
    The practitioner lives the interval the process does not. A hold of six breaths adds six breaths of pulse, thought, hunger, healing, and injury to the body even when the room's clock records only the ordinary time spent casting. Repeated holds leave the practitioner older by small intervals that no record can separate from the rest of the day.

    #{encyclopedia_ref :hourtaking, "Hourtaking"} assigns duration taken from one process to another immediate action. Stay has no second recipient: it buys delay only by carrying the missing breaths through the person holding it.
  PROSE
end
