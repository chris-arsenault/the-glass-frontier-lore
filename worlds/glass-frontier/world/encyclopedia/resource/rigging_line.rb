encyclopedia :rigging_line do
  name "Singing Line"
  aka "line", "strung line"
  summary "Singing line is the working rope of the system, woven around a single ringglass listening thread that carries the load's voice to a rigger's hand or ear. Line is graded by how true the thread sings, and every serious trade runs on it."
  kind :resource
  subkind :material
  status :complete
  log "2026-08-31 — Renamed Rigging Line to Singing Line; the name promotes the rope's audible load reading, the property that distinguishes it in every trade."
  topics :materials, :trade, :resonance, :salvage
  prevalence :common
  appears_when any: { place: [:yard, :dock, :debris_field] }
  function "Load-bearing rope that reports strain, chafe, and hidden shock through a woven listening thread"
  grades "Four voice grades from choir-true down to mute, walked and certified at the ropery; a line drops a grade at every recorded overload"
  availability "Laid in roperies wherever fiber and glass thread meet; certified line trades system-wide and mute line sells by the coil for fence and awning work"

  descriptive_identity(
    appearance: "Tight-laid working rope in trade colors with one glass-bright thread spiraling " \
                "the lay, visible as a glint when the line turns. The certification whipping at " \
                "each end carries the ropery's mark and the voice grade in colored bands.",
    working: "A rigger reads the line by palm or by ear-piece clipped to the thread: strain " \
             "raises the pitch, chafe roughens it, and a hidden shock — a load about to shift — " \
             "arrives as a flat knock down the whole length.",
    risks: "The thread tells the truth about the line and stays silent about the anchor: a " \
           "choir-true line sings sweetly all the way to the moment the corroded eye-bolt lets " \
           "go, and rigging discipline inspects what the line ties to."
  )

  prose <<~PROSE
    Rope in Kaleidos talks. Every length of working line leaves the ropery with a single ringglass listening thread spiraled through the lay, and the thread carries the load's condition to anyone holding the line: strain as rising pitch, chafe as roughness, the flat knock of a shock working through a badly seated load. A rigger with a palm on the line knows what the load is doing at the far end of forty spans of dark, and #{encyclopedia_ref :load_singing, "load singers"} work the same thread from the other direction, pitching the frame until hidden faults answer.

    Line is graded by voice. Roperies walk each new coil under test load and certify it choir-true, clear, dull, or mute, whipping the grade into the ends in colored bands, and the grade governs the work: choir-true for lifts over people, clear for general rigging, dull for drags and lashings, mute — line whose thread has gone silent — for fences, awnings, and anything else that can fail politely. Every recorded overload drops a line one grade in its yard book, so a coil's history travels with it, and buying secondhand line means reading the book or trusting the seller's face.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Roperies and the Walk"
    A ropery is half mill, half instrument shop. The fiber is whatever the region grows or salvages; the craft is the lay — even tension around the glass thread, since a pinched thread lies about strain forever after. Certification is the walk: the new line strung at test load down the ropery's long gallery while a walker moves its length with an ear-piece, listening for the flats and buzzes that mark a bad lay. Walkers apprentice for years, roperies stake their marks on the walk, and a district's riggers know which walker certified the line over their heads by the whipping colors.

    The trade's standing argument is the mute coil. Thread-silent line holds loads as well as its fiber ever did, and thrifty yards run mute line for jobs with room underneath; careful yards burn it. Both cite the same accident reports, and the reports keep feeding both sides.
  PROSE

  cue "A rigger stands with one palm flat on the taut line, eyes closed, then calls a number and a direction to the crew above."
  cue "The coil's end-whipping carries three colored bands and a ropery mark, and the buyer counts the bands before asking the price."
  affordance "A hand on certified line reads the load's strain, chafe, and coming shocks along its whole run — which lets small crews rig lifts that would otherwise take a spotter on every span."
  pressure "The thread reports the line and stays mute about the anchor, so crews that trust the song and skip the eye-bolt inspection meet the one failure that sits outside the rope's voice."
  variation "Dovra roperies lay reed-fiber line that swells taut in wet work; Shear roperies lay salvage-fiber line certified for cold and grade it harder."
  variation "Yards split on mute line — run it where a fall lands soft, or burn it on principle — and both schools recite accident reports at each other over the same table."
end
