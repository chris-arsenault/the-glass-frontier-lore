encyclopedia :echoing do
  name "Echoing"
  summary "Echoing is a broad spell that replays one recent fragment of light, sound, or pressure retained in a touched surface."
  kind :ability
  subkind :resonant_effect
  status :complete
  log "2026-08-31 — Separated Echoing from the former Witnessing ladder because it reads one local retained impression without following evidence or reconstructing the event around it."
  topics :resonance, :"signal-freq", :archives, :mystery
  prevalence :uncommon
  available_globally

  tier :broad
  effect "Replay the most recent fragment of light, sound, or pressure retained by one touched nonliving surface that carries signal resonance"
  limits "The practitioner chooses one sensory mode and receives only what reached that surface; later traffic overwrites the impression, and the spell supplies no identity, intent, or surrounding event"
  consequence "The replay overlays the practitioner's present sense until it ends, so current light, voices, or force become difficult to distinguish from the retained fragment"

  descriptive_identity(
    signs: "A touched wall repeats an old voice through its present vibration, a polished plate shows light from moments before, or a struck rail presses its last impact into the practitioner's hand."
  )

  prose <<~PROSE
    Echoing reads the last clear impression held by one surface. A hatch can repeat the final blow struck against it, a console can carry the last voice that used its housing, and a window can return the light of the figure that crossed it. The replay belongs to the material: a wall heard the room but did not see it, while a pane saw the corridor and felt little of its speech.

    Signal-bearing material keeps the cleanest echoes. Ringglass, old alloys, recording substrates, and surfaces joined to active arrays may retain several breaths. Ordinary stone or cloth keeps less, and repeated handling writes over what came before. The practitioner chooses sight, sound, or pressure before touching the surface and cannot change senses during the replay.
  PROSE
  prose <<~PROSE, section: :limits, heading: "One Impression"
    Echoing returns a fragment rather than an account. A hand on a rail may feel a running impact without learning who ran, why they fled, or where they went after letting go. Present sensation continues beneath the replay, making a loud echo dangerous beside moving machinery or an active fight.

    #{encyclopedia_ref :witnessing, "Witnessing"} follows physical consequences until they yield an event. Echoing neither follows nor joins them; it reports the last impression carried by the surface under the practitioner's hand.
  PROSE
end
