resource :blue_loam do
  name "Blue Loam"
  summary "Blue loam is a live medicinal soil cultivated at Seren; its fungal nodules guide sensation back through damaged nerves."
  subkind :biological_material
  function "Carries a medicinal mold that guides nerve regrowth"
  status :complete
  tags :ecology, :materials, :trade, :resonance
  prominence :marginal

  prose <<~PROSE
    Cobalt fungal hairs thread the dark soil sold as blue loam. Growers at #{ref :seren, "Seren"} keep it in shallow warm beds and feed it powdered root, saline water, and a slow structural tone. The mature mold forms pale nodules along the tone lines.

    Apothecaries steep those nodules into a paste applied around damaged nerves. A steady culture encourages sensation to return from the injury outward. A stressed culture sends rapid pulses through nearby tissue and can keep a patient awake for several days.

    A shipment includes live loam, dried nodules, and a scored ceramic bar carrying the bed's cultivation tone.

    Seren's stock has divided into two stable forms while retaining the same appearance and recorded ancestry. The exchange lot remains closed while matched cultures establish which form a shipment carries.
  PROSE

  gm_note :appears, "Blue loam arrives as three things at once: live soil, dried nodules, and a scored ceramic bar carrying the bed's cultivation tone. A bar cracked or swapped in transit leaves nobody able to say which of the two forms the shipment holds."
  gm_note :triggered_by, "Any patient treated with the paste raises the question of which bed the stock came from; a stressed culture drives rapid pulses through the tissue around the injury and keeps them awake for days."
  gm_note :complicates, "The exchange lot at #{ref :seren, "Seren"} is closed, so loam offered anywhere else moved before the closure, and a seller who understands that prices the ceramic bar above the soil."
end

relate :rel_blue_loam_sourced_from_seren, :sourced_from, :blue_loam, :seren do
  prose "Seren propagates and exchanges blue loam from its warm trial beds."
end


relate :rel_blue_loam_attuned_to_resonance, :attuned_to, :blue_loam, :resonance do
  prose "A slow structural tone directs the mold's growth and the pace of its nerve response."
end
