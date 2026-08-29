geographic_location :kaleidos_echo_rivers do
  name "The Kaleidos Echo Rivers"
  summary "The Kaleidos Echo Rivers are crystal-bearing underground waterways whose surfacing branches carry fragments of speech and signal from before the Glassfall."
  subkind :region
  type_of :echo_rivers
  status :complete
  tags :resonance, :"signal-freq", :archives
  prominence :renowned
  custom_fact :medium, "Crystal-bearing underground water"
  custom_fact :content, "Fragments of pre-Glassfall signal and speech"
  custom_fact :hazard, "Headaches, disorientation and identity drift after prolonged exposure"

  descriptive_identity(
    setting: "Underground waterways moving through crystal-laced rock beneath Kaleidos, surfacing at springs, sinkholes, caves, and wet cliff faces.",
    activity: "Listeners and Echo Ledger crews wait at surfacing branches for whatever old voices and signals the water carries next.",
    hazards: "Long exposure brings headaches, disorientation, and drift severe enough for a listener to lose track of which remembered voice was theirs."
  )

  prose <<~PROSE
    Beneath Kaleidos, water moves through rock saturated with crystal dust from #{elapsed :the_glassfall, approx: true} of ring debris. The waterways lift old signal-band impressions from the stone and carry them to springs, sinkholes, cave mouths, and wet cliff faces. Voices layer over one another there — mostly unintelligible, occasionally clear.

    The richest surfacing branches lie in the #{ref :sable_crescent, "Sable Crescent"}. Some settlements work beside them. Others keep their paths away. The #{ref :echo_ledger_conclave, "Echo Ledger Conclave"} maintains listening stations and catalogues what surfaces; the rivers repeat nothing on request and preserve no distinction between a repair order, a family call, and a voice from the day the ring broke.
  PROSE

  gm_note :appears, "A spring, sinkhole, or wet cliff face on the route begins carrying layered voices before anyone thinks to ask a question."
  gm_note :triggered_by, "Repeating a name or playing a recovered voice back to the water changes nothing; the next fragment arrives on the river's own course."
  gm_note :complicates, "A listener who remains through a long scene develops the headaches and disorientation the Conclave records as drift."
end

relate :rel_kaleidos_echo_rivers_part_of_kaleidos, :part_of, :kaleidos_echo_rivers, :kaleidos do
  prose "The underground network runs through crystal-bearing rock beneath Kaleidos."
end

relate :rel_kaleidos_echo_rivers_located_in_sable_crescent, :located_in, :kaleidos_echo_rivers, :sable_crescent, since: 2140 do
  prose "The clearest and most heavily worked surfacing branches lie in the Sable Crescent."
end
