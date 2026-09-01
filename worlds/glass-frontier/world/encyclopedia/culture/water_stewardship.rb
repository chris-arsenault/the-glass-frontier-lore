encyclopedia :water_stewardship do
  name "Water Standing"
  summary "Water Standing is the measured authority of bed stewards, sinkers, tank wardens, and water boards over a settlement's supply, drawing calendar, and water-carried signal. Open audit books support every finding and determine whether the water can bear a proposed use."
  kind :culture
  subkind :collective_standing
  status :complete
  log "2026-08-31 — Renamed Water Stewardship to Water Standing; the name joins the office's authority to the water it measures and speaks for."
  topics :governance, :"social-structure", :resonance, :ecology
  prevalence :uncommon
  appears_when any: { place: [:waterway, :garden, :sealed_hab] }
  integration "The council governs the settlement while stewards determine what the water can supply; a contrary finding requires another steward's measurements and enters the same audit book"
  formal_register "A steward speaks for the water in a fixed formula at council — 'the water can bear it' or 'the water cannot' — and the finding is entered as a measurement, argued only by another steward with figures"
  aesthetic "The steward's marks are working ones: the measuring rod worn like a staff of office, the calendar boards posted at channel heads and tank rooms, and the audit book whose open page is, by custom, readable by anyone who asks"

  descriptive_identity(
    manner: "Stewards answer requests with current levels, assays, draw logs, " \
            "and calendar capacity, then enter the finding in the public audit " \
            "book before the council acts.",
    appearance: "The measuring rod, keys to the works, and audit book carried " \
                "to every meeting " \
                "where the water will be discussed.",
    hospitality: "A steward's door answers water trouble at any hour on the " \
                 "midwife's model, and the works themselves keep the old courtesy — " \
                 "any traveler may drink at the public tap and read the posted " \
                 "calendar."
  )

  prose <<~PROSE
    Kaleidos water carries drinking supply, #{encyclopedia_ref :rill_households, "pipe-line"} knocking-talk, #{encyclopedia_ref :korvath_groundsong, "riverbed"} signal, and part of a habitat's damping reserve. Bed stewards, #{encyclopedia_ref :sinker, "sinkers"}, tank wardens, and water boards measure those uses together. At council, a steward gives one of the fixed findings — *the water can bear it* or *the water cannot* — with the levels, assays, and calendar capacity entered beside it. Another steward may challenge the finding by adding measurements to the same book.

    Draw logs, cutting calendars, levels, and assays remain open for public audit. A failed audit removes the steward from office and reopens every active finding based on the faulty figures. Measuring rods, works keys, and the audit book are the office's working marks. Public taps remain available to travelers, calendars are posted at channel heads and tank rooms, and #{encyclopedia_ref :reed_flour, "reed-cutting rotations"} appear alongside draw limits because they keep the filters open.
  PROSE

  cue "The council has argued the expansion for an hour when the steward stands with the audit book and says the finding in the old form — the water cannot bear it — and the argument changes from whether to when."
  cue "At the channel head a traveler drinks at the public tap, reads the posted calendar above it, and knows the settlement's next dry week and next cutting day before meeting a single resident."
  affordance "One audited finding gives a council the combined capacity of drinking supply, signal, tank reserve, and the cutting calendar for a proposed use."
  pressure "A failed audit removes the steward and reopens every active finding that relied on the faulty figures."
  variation "River country vests the standing in bed stewards and boards over open water; hab country vests it in tank wardens whose books answer to the dock services; the forms and the boundary formula are the same in both."
  variation "Stewards from neighboring settlements reconcile drawing and cutting calendars where several jurisdictions share the same water."
end
