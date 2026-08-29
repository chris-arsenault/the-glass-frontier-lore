encyclopedia :revelation do
  name "Revelation"
  summary "Revelation perceives distant, hidden, or past events through the resonant traces left by what physically occurred."
  kind :ability
  subkind :ability
  status :complete
  topics :resonance, :"signal-freq", :archives, :mystery
  prevalence :rare
  available_globally

  tier :broad,
       effect: "Read the recent resonant trace of an event from an object or place that participated in it",
       cost: "Temporary confusion between the user's senses and the trace being read"
  tier :focused,
       effect: "Observe a distant place through a known person, object, or signal that is physically present there",
       cost: "The observed place receives a clear sensory sign that someone is looking"
  tier :narrow,
       effect: "Follow one true event backward through damaged records, moved evidence, and interrupted signals",
       cost: "The user loses awareness of their own surroundings for the duration of the search"
  tier :apex,
       effect: "Witness a distant or historical event across the system wherever a surviving physical consequence still carries it",
       cost: "Everyone and everything capable of perceiving resonance along the traced event can perceive the bearer in return"

  descriptive_identity(
    signs: "Reflections face the wrong direction, old sounds return through present surfaces, and the observer's eyes answer light from another place.",
    effect: "Revelation follows the physical consequences of a true event until they yield a sensory account of what occurred.",
    limits: "It cannot read private intent, prove an interpretation, see an unrealized future, or recover an event whose every consequence has been erased."
  )

  cue "A surface involved in the event repeats a fragment of light, pressure, or sound that no longer belongs to the room."
  cue "People at a distant target feel watched and may see the observer standing in reflection or signal noise."
  affordance "Revelation can reconstruct a crime, find a missing vessel, inspect a sealed chamber, or learn what struck before anyone entered the wreck."
  pressure "Observation is reciprocal at useful range, exposing the user to the subject and to anything else following the same trace."
  variation "Material readers recover events as pressure, heat, and stress moving through worked matter."
  variation "Signal readers receive broken voices, images, and positional data through surviving transmissions and recording substrates."

  prose <<~PROSE
    Revelation begins with a consequence. A scored bulkhead remembers the direction of the blow. A signal relay retains a voice beneath later traffic. Dust carries the path of the body that disturbed it, and a witness carries the change an encounter made in breath and pulse. The ability follows those consequences toward the event that joined them.

    What returns is sensory evidence rather than explanation. A revelator may see a hand place the charge and still lack the person's name. They may hear the words spoken in a chamber and remain unable to tell which speaker believed them. Intent leaves consequences only when it changes a body, an object, or a signal. Futures have no consequences to follow.
  PROSE
  prose <<~PROSE, section: :dangers, heading: "The Answering Gaze"
    Distance does not make revelation private. A person under observation may see an unfamiliar face in polished metal. A machine may log an impossible return signal. Resonance-sensitive creatures turn toward the observer as if the intervening space were absent. At narrow and apex use, other readers can enter the same trace and follow it back.

    Erasure defeats revelation only when it is complete. Destroying a recording leaves the heat and fragments of its destruction. Killing a witness leaves a body. Moving an object extends the event rather than ending it. #{ref :far_witness, "The Far Witness"} can cross the system or descend through centuries of such consequences, but the mantle makes its bearer present to everything they choose to see.
  PROSE
end
