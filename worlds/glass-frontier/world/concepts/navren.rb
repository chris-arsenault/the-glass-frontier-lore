resource :navren do
  name "Navren"
  subkind :biological_material
  function "Provides curved structural timber that carries a tuned load through its grain"
  status :complete
  tags :ecology, :materials, :trade, :"structural-freq"
  prominence :marginal

  prose <<~PROSE
    At #{ref :noll, "Noll"}, coppiced navren trees grow copper-green bark over pale wood whose fibers align with sustained pressure and a low structural tone. Cultivar plates beside the oldest surviving root stools supply the name.

    Growers shape each stem while it lives. Weights set the broad curve, grafts redirect individual fibers, and water-borne resonance settles the grain around the intended load. A harvested piece keeps that shape through drying and answers strain with a low audible hum.

    Shipwrights use navren for braces that must flex across different hull materials; builders set it around doors and pressure transitions. Instrument makers take narrow offcuts whose growth marks show the tones they carry best. Once dry, the grain holds its imposed curve and ceases to answer a new growth field.
  PROSE
end

relate :rel_navren_sourced_from_noll, :sourced_from, :navren, :noll do
  prose "Noll shapes navren through living growth and repeated coppice cycles."
end


relate :rel_navren_attuned_to_resonance, :attuned_to, :navren, :resonance do
  prose "Navren grain settles around a sustained structural tone while the stem grows."
end
