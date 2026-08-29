encyclopedia :echo_strip do
  name "Echo Strip"
  summary "An echo strip is a hand-length sheet of dark foil that records the strongest coherent resonance pattern touching it. Archives, workshops, and households use strips for field evidence, machine tones, and messages beyond live signal coverage."
  kind :technology
  subkind :record
  status :complete
  topics :archives, :"signal-freq", :resonance, :trade, :household
  prevalence :common
  available_globally

  descriptive_identity(
    appearance:
      "A hand-length sheet of dark foil — powdered ringglass in " \
      "stillwater resin — with a scored start line at one end and no " \
      "controls at all. Field workers keep them in rigid sleeves with " \
      "the start line exposed; archived records are cut into " \
      "distinctive outlines so used foil cannot pass as blank stock.",
    handling:
      "Bend the start line to begin recording, fold the other end over " \
      "it to stop; the crease seals the pattern until a playback frame " \
      "flattens the foil and turns the grain pattern into vibration, " \
      "light, or instrument data. It takes resonance, not ordinary " \
      "sound — speech survives only when a signal-bearing wall, " \
      "instrument, or trained voice carries it.",
    risks:
      "The foil keeps the strongest coherent pattern reaching it, " \
      "pushing everything weaker to the margins, so a deposition taken " \
      "beside an active lift preserves the lift and loses the witness. " \
      "Flattening without a frame bleeds the record into the nearest " \
      "responsive material, heat softens the resin, and each playback " \
      "copy keeps the words while erasing the edge structure that " \
      "places the original.",
  )

  prose <<~PROSE
    An echo strip is a hand-length sheet of dark foil that records the strongest coherent resonance pattern touching it. The strip has no controls. An operator bends one end along a scored line to begin the record and folds the other end over it to stop. The finished crease seals the captured pattern until the foil is flattened inside a playback frame.

    Conclave listeners use strips for field evidence, workshops use them to preserve failing machine tones, and households keep cheap grades for messages that must travel where no live signal reaches. A strip records resonance rather than ordinary sound. Speech appears only when a signal-bearing wall, instrument, or trained voice carries it.
  PROSE

  prose <<~PROSE, section: :mechanics, heading: "One Strong Pattern"
    The foil contains powdered ringglass held in stillwater resin. Bending the start line brings the grains into loose contact. They shift under the first coherent pattern strong enough to organize them and continue following that pattern until the stop fold locks the resin.

    Competing signals do not become separate tracks. The stronger pattern occupies more of the strip and pushes the weaker one toward the edges. A machine record may contain a voice as a thin change along one margin. A spoken deposition taken beside an active lift may preserve the lift beautifully and the witness poorly.

    Playback frames move a broad tone across the flattened foil and translate the grain pattern into vibration, light, or instrument data. Flattening without a frame releases part of the record into the nearest responsive material. Archive rooms use dead ceramic tables for that reason.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Evidence in a Pocket"
    Field workers carry strips in rigid sleeves with the start line exposed. A strip placed against a hull can capture a failed drive cycle. One tied to a sounding stake records a road movement after the crew withdraws. A Tuner can speak a sensed pattern through a resonant instrument while the foil takes the instrument's output.

    Authentication begins with the folds. The start bend carries tool marks and residue from the place it was made. The stop fold shows whether the strip was reopened. Listeners then compare the central record with edge noise, known equipment, and other strips from the site. A clean playback with no environmental margin is treated as a copy or a staged recording.

    Copies can be made by playing one strip into another. Each loses fine edge structure and strengthens the playback frame's own tone. Several generations preserve words or alarms while destroying the evidence that would establish where the first recording occurred.
  PROSE

  prose <<~PROSE, section: :limits, heading: "Folds, Heat, and Memory"
    A sealed strip tolerates ordinary handling and weak fields. Heat softens the resin. Repeated bending breaks the grain paths. Strong signal equipment stored against the sleeve can slowly overwrite the margins without opening the central fold.

    The foil does not decide what matters. It records the clearest organized pattern available, including a repeated lie, a nearby pump, or the operator's own instrument. It also captures only what reaches it. A strip fixed to one side of a ceramic break may have no trace of the event that damaged the other side.

    Used strips cannot be cleaned into new blanks. Archive workers cut authenticated records into distinctive outlines before storage so an old foil cannot return to the market as unused stock.
  PROSE

  cue "Cheap grades travel as household messages and archive grades as field evidence, so a workshop, a listening room or a rescue office has strips on hand in rigid sleeves with the start line exposed."
  cue "An echo strip is a hand-length sheet of dark foil that records the strongest coherent resonance pattern touching it."
  affordance "The foil takes the strongest coherent pattern reaching it, not the one the party aimed at. A deposition recorded beside an active lift preserves the lift beautifully and the witness as a thin change along one margin."
  pressure "Authentication reads the folds and the edge noise, so a clean playback with no environmental margin is treated as a copy or a staged recording. Copying keeps the words and destroys exactly the structure that would place the original."
  variation "Copies can be made by playing one strip into another."
  variation "Used strips cannot be cleaned into new blanks."

end
