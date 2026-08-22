geographic_location :ashenmaw do
  name "Ashenmaw"
  playable_as :chronicle_location
  subkind :celestial_body
  status :complete
  tags :cosmology, :"outer-system", :navigation, :danger
  prominence :recognized

  prose <<~PROSE
    Ashenmaw is the fifth planet, a banded gas giant with an inhabited system of moons. Its gravity flexes those moons and heats their interiors. On #{ref :ashvane, "Ashvane"}, that motion keeps volcanic fractures active and supplies much of the heat its towns must move away.

    The planet's dark belts and pale storms dominate every moonward sky. Crews use named storm faces as rough position marks, then confirm against beacons because the visible bands shear and reform. A mark that survived one circuit can point into open atmosphere on the next.
  PROSE

  prose <<~PROSE, section: :access, heading: "The Far Turn"
    #{ref :keel, "The Keel"} reaches its outer terminus at Ashvane. Ships approaching the moon use Ashenmaw's magnetic field for braking and pass through zones where charged particles disturb signal glass. The maintained route shifts with the field rather than holding one permanent curve.

    Freight bound farther out leaves the Keel here. Convoys regroup above Ashvane, exchange inner-system pilots for outer-route charts, and wait for a clear passage toward the Fracture.
  PROSE

  prose <<~PROSE, section: :geography, heading: "The Moon System"
    Several inner moons carry microbial life around warm vents beneath ice or salt crust. Their protection rules prohibit untreated ballast discharge and require sample tools to remain on the moon where they were used.

    Ashvane holds the largest permanent population. Smaller stations monitor tidal strain, harvest trace gases, and maintain warning beacons around the inner radiation bands.
  PROSE
end

relate :rel_ashenmaw_orbits_the_sun, :orbits, :ashenmaw, :the_sun do
  prose "Ashenmaw is the fifth planet from the sun."
end
relate :rel_ashenmaw_inner_of_the_fracture, :inner_of, :ashenmaw, :the_fracture do
  prose "Ashenmaw orbits inside the Fracture."
end
relate :rel_ashenmaw_part_of_system, :part_of, :ashenmaw, :kaleidos_system do
  prose "Ashenmaw belongs to the Kaleidos system."
end
