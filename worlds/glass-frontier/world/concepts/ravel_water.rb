resource :ravel_water do
  name "Ravel Water"
  summary "Ravel Water is a warm resonant condensate collected from Ravel's outer nets and held in six separated trays because nearby samples pull themselves together."
  type_of :flower
  subkind :material
  function "Warm resonant condensate collected from the center of Ravel's outer nets"
  availability "Held in six sealed trays from three plume passages"
  status :complete
  tags :materials, :resonance, :orbital, :mystery
  prominence :marginal

  descriptive_identity(
    appearance:
      "A clear liquid in six sealed trays, warm to the room and still " \
      "fluid at temperatures that freeze ordinary water beside it. It " \
      "carries the plume's mineral salts and a chain of complex carbon " \
      "compounds no earlier catch contained.",
    working:
      "Handling is separation: pressure cells keep every sample more " \
      "than a meter from the next, in metal or ringglass, the only " \
      "containers that hold it still. Study runs through recorded " \
      "passages — temperature, pressure, distance, and signal tone " \
      "logged while a tray rides the plume crossing.",
    risks:
      "Within a meter of each other, thin films climb the ceramic " \
      "toward the other sample; brought together, two samples spread " \
      "into one moving sheet and sound a cluster of high-band tones " \
      "loud enough on a signal sounder to bring the watch.",
  )

  prose <<~PROSE
    Six sealed trays hold the clear liquid called Ravel Water, recovered from two outer collector panels at #{ref :ravel, "Ravel"}. It remains fluid at temperatures that freeze ordinary water in the same room. Two samples brought together spread into one moving sheet and produce a cluster of high-band tones.

    The liquid carries dissolved mineral salts matching the plume and a chain of complex carbon compounds absent from earlier catches. A thin film climbs ceramic toward another sealed sample when the trays stand within a meter of each other. Metal and ringglass containers hold it in place.

    Separate pressure cells keep the samples more than a meter apart. One travels aboard *Nera Doss* during the next plume crossing, with temperature, pressure, distance, and signal tone recorded through the passage.
  PROSE

  gm_note :triggered_by, "The moment players stow two trays in the same locker or carry them down a corridor together, the films climb the ceramic toward one another and the high-band tones start, loud enough on any signal sounder to bring whoever is on watch."
  gm_note :complicates, "Only metal and ringglass hold the liquid in place, so in an ordinary galley or processing room it is already crossing the ceramic while the party improvises containment out of whatever the room happens to have."
end
relate :rel_ravel_water_sourced_from_ravel, :sourced_from, :ravel_water, :ravel do
  prose "Ravel Water condenses on Ravel's outer nets during the recurring plume passage."
end


relate :rel_nera_doss_carries_ravel_water, :carries, :nera_doss, :ravel_water, since: 2435 do
  prose "Nera Doss carries one sealed tray through Ravel's next plume passage."
end
