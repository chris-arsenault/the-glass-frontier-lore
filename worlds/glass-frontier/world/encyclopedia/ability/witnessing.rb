encyclopedia :witnessing do
  name "Witnessing"
  summary "Witnessing perceives distant, hidden, or past events through the resonant traces left by what physically occurred."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Renamed Revelation to Witnessing; the name joins the ability to Kaleidos's practice of making an event answerable through surviving physical evidence."
  log "2026-08-31 — Kept Witnessing as the narrow reconstruction of one event through its surviving consequences. Present observation through a distant person, object, or signal became Elsewhere because it uses a live anchor and answers the observer immediately."
  log "2026-08-31 — Separated Echoing as the broad replay of one recent sensory fragment retained in a touched surface; Witnessing joins multiple consequences into an account of the event that produced them."
  topics :resonance, :"signal-freq", :archives, :mystery
  prevalence :rare
  available_globally

  tier :narrow
  effect "Follow the surviving physical consequences of one event to receive a sensory account of what occurred"
  limits "The practitioner must begin with an object, body, place, or signal that participated in the event; the spell yields sensation rather than intent or interpretation, cannot see a future, and ends where every consequence has been erased"
  consequence "The practitioner loses awareness of their present surroundings while following the trace, and people, machines, or resonant presences encountered along it can perceive and follow the watcher in return"

  descriptive_identity(
    signs: "Reflections face the wrong direction, old sounds return through present surfaces, and the practitioner's eyes answer light from another place."
  )

  prose <<~PROSE
    Witnessing begins with a consequence. A scored bulkhead remembers the direction of the blow. A signal relay retains a voice beneath later traffic. Dust carries the path of the body that disturbed it, and a witness carries the change an encounter made in breath and pulse. The ability follows those consequences toward the event that joined them.

    One casting follows one line of evidence and returns sensory material rather than explanation. A witnesser may see a hand place the charge and still lack the person's name. They may hear the words spoken in a chamber and remain unable to tell which speaker believed them. Intent leaves consequences only when it changes a body, object, or signal.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "The Answering Gaze"
    Witnessing is reciprocal. A person preserved in the trace may see an unfamiliar face in polished metal. A machine may log an impossible return signal in the recovered account. Another reader can enter the same trace and follow it back while the casting continues. #{encyclopedia_ref :elsewhere, "Elsewhere"} uses the same answering property to observe one distant place as it is now rather than reconstructing an event.

    Destroying a recording leaves the heat and fragments of its destruction. Killing a witness leaves a body. Moving an object extends the event rather than ending it. Only complete erasure ends the trace. #{ref :far_witness, "The Far Witness"} can cross the system or descend through centuries of connected consequences.

    #{encyclopedia_ref :echoing, "Echoing"} reads one recent impression directly from one surface. It can recover the last impact on a hatch or the last voice carried through a console, but it does not connect that fragment to other evidence or identify the event around it.
  PROSE
end
