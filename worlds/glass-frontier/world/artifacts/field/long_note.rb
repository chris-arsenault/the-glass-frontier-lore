artifact :long_note do
  name "The Long Note"
  subkind :record
  status :complete
  tags :archives, :navigation, :mystery, :"signal-freq"
  prominence :marginal

  prose <<~PROSE
    Three passive-array traces recorded at #{ref :issel, "Issel"} make up the Long Note. Each carries the same narrow signal rising slowly in pitch, but their directions cross the dish from three sides and their delays place each apparent source at a different distance. Issel fixed them into separate ceramic plates whose groove depth follows signal strength. A mechanical reader can reproduce the timing outside the observatory's signal field, and the plates travel in a padded case with the original watch boards and array-temperature marks.

    Navigators use the record to compare unexplained signals from other routes. Several have found brief rising tones at the edge of busy drive wakes. Their pitch matches a short interval from the middle plate.
  PROSE
end

relate :rel_issel_possesses_long_note, :possesses, :issel, :long_note, since: 2435 do
  prose "Issel holds the three original plates and watch boards of the Long Note."
end

relate :rel_long_note_attuned_to_resonance, :attuned_to, :long_note, :resonance do
  prose "The Long Note preserves the same narrow signal-band rise across three incompatible arrival paths."
end
