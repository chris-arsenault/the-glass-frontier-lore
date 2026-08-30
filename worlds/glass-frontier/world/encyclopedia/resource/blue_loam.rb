encyclopedia :blue_loam do
  title "Blue Loam"
  kind :resource
  subkind :biological_material
  status :complete
  summary "Blue loam is a live medicinal soil cultivated at Seren; its fungal nodules guide sensation back through damaged nerves."
  function "Carries a medicinal mold that guides nerve regrowth"
  topics :ecology, :materials, :trade, :resonance
  prevalence :rare
  appears_when all: { place: [:garden] }

  cue "Cobalt fungal hairs thread the dark soil, and the mature mold forms pale nodules along the bed's tone lines."
  cue "A shipment includes live loam, dried nodules, and a scored ceramic bar carrying the bed's cultivation tone."
  affordance "Apothecaries steep the nodules into a paste that encourages sensation to return from a damaged nerve outward."
  pressure "A stressed culture sends rapid pulses through nearby tissue and can keep a patient awake for several days."
  variation "Seren's stock has divided into two stable forms with the same appearance and recorded ancestry."
  variation "Loam offered away from Seren moved before the exchange lot closed, and its ceramic bar may have been cracked or swapped in transit."

  descriptive_identity(
    appearance:
      "Dark soil threaded with cobalt fungal hairs, the mature mold " \
      "forming pale nodules along its tone lines. A shipment is three " \
      "things together: live loam, dried nodules, and a scored ceramic " \
      "bar carrying the bed's cultivation tone.",
    working:
      "Growers keep it in shallow warm beds fed with powdered root, " \
      "saline water, and a slow structural tone; apothecaries steep the " \
      "nodules into a paste laid around damaged nerves, and a steady " \
      "culture coaxes sensation back from the injury outward.",
    risks:
      "A stressed culture drives rapid pulses through the surrounding " \
      "tissue and can keep a patient awake for days. Seren's stock has " \
      "split into two stable forms identical to the eye and the record, " \
      "so with the exchange lot closed, the scored ceramic bar is the " \
      "only shipment record distinguishing the two forms.",
  )

  prose <<~PROSE
    Cobalt fungal hairs thread the dark soil sold as blue loam. Growers at #{ref :seren, "Seren"} keep it in shallow warm beds and feed it powdered root, saline water, and a slow structural tone. The mature mold forms pale nodules along the tone lines.

    Apothecaries steep those nodules into a paste applied around damaged nerves. A steady culture encourages sensation to return from the injury outward. A stressed culture sends rapid pulses through nearby tissue and can keep a patient awake for several days.

    A shipment includes live loam, dried nodules, and a scored ceramic bar carrying the bed's cultivation tone.

    Seren's stock has divided into two stable forms while retaining the same appearance and recorded ancestry. The exchange lot remains closed while matched cultures establish which form a shipment carries.
  PROSE

end
