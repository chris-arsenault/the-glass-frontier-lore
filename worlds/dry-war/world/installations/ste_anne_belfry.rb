installation :ste_anne_belfry do
  name "The Ste. Anne Belfry"
  tags :resistance, :surveillance, :religion, :legibility
  prominence :recognized

  prose <<~PROSE
    The north tower of Ste. Anne de Détroit, whose eight bells have hung for full-circle ringing since the church was rebuilt in 1886 and which #{ref :caretaker, "Caretaker"} has paid to keep in ringing order since 2074. The parish still says mass. The ringing is a municipal sound programme with a cost line.

    Caretaker funds it on measurement. Households within about three kilometres of the tower show shorter sleep latency on session evenings, file fewer noise complaints in the following week, and score higher on the district mood index than the ring's rope stock, bearings and insurance cost to maintain. #{ref :odile_marchand, "Odile Marchand"} books the sessions and signs the acoustic return on each one.
  PROSE

  prose <<~PROSE, section: :structure, heading: "What The Return Records"
    A bell's strike note is not present in its spectrum. The pitch a listener hears is inferred from the hum, tierce and nominal partials rather than sounded, so Caretaker's monitor scores a session on sound-pressure level, dwell above threshold, session length and the raise and lower at either end. It has no field for the order in which the bells struck.

    That order is the whole of #{ref :the_ring_call, "the ring call"}. Marchand's return for a forty-five minute quarter peal and her return for forty-five minutes of rounds are the same document carrying the same numbers.
  PROSE

  prose <<~PROSE, section: :limits, heading: "The Raise And The Band"
    Bells rung full circle rest mouth upward and must be raised from rest before any method can be struck: nine or ten minutes of climbing, irregular blows that carry as far as the ringing does. The #{ref :the_choir, "Choir"} cannot open the channel quietly and has never tried to.

    The band is eight bodies that can handle a rope. #{ref :cecile_ouellette, "Ouellette"} is the fourth captain since the programme began and the only ringer on the roster who learned from a band predating it. Two of the eight are past seventy. Marchand's return for #{year :now} records nine sessions cancelled for want of a band and none for weather.
  PROSE

  log "2026-08-09 — Campanological acoustics decide what Caretaker can measure here: a bell's strike note is a virtual pitch inferred from its partials rather than a component of the radiated spectrum, so a level-and-spectrum monitor has no natural handle on the row sequence. The same craft supplies the raise and lower, which is why the channel cannot be opened without ten audible minutes of warning."
end
