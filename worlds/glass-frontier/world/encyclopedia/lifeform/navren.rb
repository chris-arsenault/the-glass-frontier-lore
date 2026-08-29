encyclopedia :navren do
  title "Navren"
  kind :lifeform
  subkind :tree
  status :complete
  summary "Navren is a copper-barked tree cultivated at Noll for curved structural timber whose tuned grain flexes under changing loads."
  function "Provides curved structural timber that carries a tuned load through its grain"
  topics :ecology, :materials, :trade, :"structural-freq"
  prevalence :common
  appears_when all: { place: [:"realm:ring_habitat"] }

  cue "Navren trees grow copper-green bark over pale wood and are coppiced from named root stools at Noll."
  cue "A worked piece answers strain with a low audible hum, so a frame taking a load it was not built for says so aloud."
  affordance "Growers shape each stem while it lives so the harvested wood keeps its imposed curve through drying."
  pressure "Once dry, the grain holds its imposed curve and ceases to answer a new growth field."
  variation "Weights set a stem's broad curve while it grows."
  variation "Grafts redirect individual fibers while water-borne resonance settles the grain around the intended load."

  descriptive_identity(
    appearance:
      "Copper-green bark over pale wood, coppiced from named root " \
      "stools at Noll. A worked piece holds the curve it was grown to " \
      "and answers strain with a low audible hum, so a frame taking a " \
      "load it was not built for says so aloud.",
    working:
      "Growers shape each stem while it lives — weights set the broad " \
      "curve, grafts redirect single fibers, water-borne resonance " \
      "settles the grain around the intended load — and the shape " \
      "survives drying. Shipwrights brace mixed hull materials with it, " \
      "builders set it around doors and pressure transitions, and " \
      "instrument makers pick narrow offcuts by their growth marks.",
    risks:
      "Dried grain no longer answers a growth field, so forcing a " \
      "piece into an unintended shape gets nothing. The repair means " \
      "wood grown to that load — or a reserved stem at Noll and the " \
      "wait through its cutting cycles.",
  )

  prose <<~PROSE
    At #{ref :noll, "Noll"}, coppiced navren trees grow copper-green bark over pale wood whose fibers align with sustained pressure and a low structural tone. Cultivar plates beside the oldest surviving root stools supply the name.

    Growers shape each stem while it lives. Weights set the broad curve, grafts redirect individual fibers, and water-borne resonance settles the grain around the intended load. A harvested piece keeps that shape through drying and answers strain with a low audible hum.

    Shipwrights use navren for braces that must flex across different hull materials; builders set it around doors and pressure transitions. Instrument makers take narrow offcuts whose growth marks show the tones they carry best. Once dry, the grain holds its imposed curve and ceases to answer a new growth field.
  PROSE

end
