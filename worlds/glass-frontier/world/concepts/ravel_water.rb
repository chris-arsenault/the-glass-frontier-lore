resource :ravel_water do
  name "Ravel Water"
  subkind :material
  function "Warm resonant condensate collected from the center of Ravel's outer nets"
  availability "Held in six sealed trays from three plume passages"
  status :complete
  tags :materials, :resonance, :orbital, :mystery
  prominence :marginal

  prose <<~PROSE
    Six sealed trays hold the clear liquid called Ravel Water, recovered from two outer collector panels at #{ref :ravel, "Ravel"}. It remains fluid at temperatures that freeze ordinary water in the same room. Two samples brought together spread into one moving sheet and produce a cluster of high-band tones.

    The liquid carries dissolved mineral salts matching the plume and a chain of complex carbon compounds absent from earlier catches. A thin film climbs ceramic toward another sealed sample when the trays stand within a meter of each other. Metal and ringglass containers hold it in place.

    Separate pressure cells keep the samples more than a meter apart. One travels aboard *Nera Doss* during the next plume crossing, with temperature, pressure, distance, and signal tone recorded through the passage.
  PROSE
end
relate :rel_ravel_water_sourced_from_ravel, :sourced_from, :ravel_water, :ravel do
  prose "Ravel Water condenses on Ravel's outer nets during the recurring plume passage."
end


relate :rel_nera_doss_carries_ravel_water, :carries, :nera_doss, :ravel_water, since: 2435 do
  prose "Nera Doss carries one sealed tray through Ravel's next plume passage."
end

relate :rel_ravel_water_attuned_to_resonance, :attuned_to, :ravel_water, :resonance do
  prose "Separated samples answer one another with high-band tones and directed movement."
end
