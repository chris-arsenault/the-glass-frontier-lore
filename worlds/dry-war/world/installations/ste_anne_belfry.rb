installation :ste_anne_belfry do
  name "The Ste. Anne Belfry"
  subkind :landmark
  tags :resistance, :surveillance, :religion, :legibility
  prominence :recognized

  prose <<~PROSE
    The north tower of Ste. Anne de Détroit. The present church was built in 1886 and still keeps the Beaubien Bell brought from its previous building. #{ref :caretaker, "Caretaker"} installed a separate ring of eight bells in the north tower in 2074 and has paid to keep them in full-circle ringing order since. The parish still says mass. The ringing is a municipal sound programme with a cost line.

    Caretaker funds it on measurement. Households within about three kilometres of the tower show shorter sleep latency on session evenings and file fewer noise complaints in the following week. Their change on the district mood index still clears the programme's threshold after the cost of rope stock, bearings and insurance is applied. #{ref :odile_marchand, "Odile Marchand"} books the sessions and signs the acoustic return on each one.
  PROSE

  prose <<~PROSE, section: :structure, heading: "What Caretaker Hears"
    Caretaker's monitor reduces a session to loudness by frequency over time. It records sound-pressure level, time above threshold, session length and the irregular blows while the bells are raised and lowered. The acoustic return does not retain the order in which individual bells struck.

    The changing order carries the #{ref :the_choir, "Choir"}'s district signal. Each named method points members to one of five places in their memorized sequences, while the number of complete rounds before it gives the days to wait. Marchand's return for forty-five minutes of changing orders and her return for the same time spent ringing in scale order carry the same figures.
  PROSE

  prose <<~PROSE, section: :limits, heading: "The Raise And The Band"
    Bells rung full circle rest mouth upward and must be raised from rest before any method can be struck. Nine or ten minutes of climbing and irregular blows carry as far as the later ringing, giving the district warning before the method begins.

    The band is eight people who can handle a rope. #{ref :cecile_ouellette, "Ouellette"} is the fourth captain since the programme began and the only ringer on the roster who learned from a band predating it. Two of the eight are past seventy. Marchand's return for #{year :now} records nine sessions cancelled for want of a band and none for weather.

    Seven of the eight ropes are interchangeable to a competent ringer. The sixth is the heaviest-going of the ring and sits slightly off the others in strike note; the two oldest ringers always choose other ropes. A morning that assembles seven ringers is short the sixth more often than any other rope.
  PROSE

  prose <<~PROSE, section: :history, heading: "The Old Sixth"
    Five bells were cast for the programme in 2074 and two were recast after cracks in 2081. #{ref :the_old_sixth, "The sixth"} is older. It has no founder's mark, and its inscription bears damaged letters also found on two Detroit bells hung before the programme existed.

    Its exact age remains unknown because the stamps that made those letters stayed in use for decades. A new bell would have stood the band down for a season, so Caretaker kept the sixth and corrected its own inventory.
  PROSE

  log "2026-08-09 — Campanological acoustics decide what Caretaker can measure here: a bell's strike note is a virtual pitch inferred from its partials rather than a component of the radiated spectrum, so a level-and-spectrum monitor has no natural handle on the row sequence. The same craft supplies the raise and lower, which is why the channel cannot be opened without ten audible minutes of warning."
  log "2026-08-09 — The present church dates to 1886 and retains the older Beaubien Bell. The separate ring of eight is a Caretaker installation from 2074; it does not belong to the church's nineteenth-century history."
end
