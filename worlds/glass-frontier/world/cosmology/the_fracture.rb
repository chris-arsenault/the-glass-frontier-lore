geographic_location :the_fracture do
  name "The Fracture"
  subkind :celestial_body
  status :complete
  tags :cosmology, :"outer-system", :danger, :salvage, :mystery, :"fluid-reality"
  prominence :renowned
  custom_fact :form, "A broad belt formed from the remains of a shattered planet",
              label: "Form"
  custom_fact :breakup_evidence, "Large angular fragments and differentiated planetary layers",
              label: "Breakup Evidence"
  custom_fact :principal_hazards, "Unstable debris, Bloom Zones, space fauna, raiders, and competing salvage claims",
              label: "Principal Hazards"

  prose <<~PROSE
    The Fracture is the remains of the sixth planet. Large angular fragments follow related orbits through a broad belt, exposing crust, mantle, and cooled core material. Their shared composition and fitted survey profiles leave no dispute that they belonged to one differentiated world.

    The breakup predates the Glassfall. No surviving system record describes an intact planet, and weathering on exposed inner layers exceeds that on ring debris. The cause remains unknown.
  PROSE

  prose <<~PROSE, section: :geography, heading: "A Broken World"
    The inner belt contains the densest fragments and the most valuable metal layers. Its routes change as smaller debris migrates between the large bodies. Survey stations issue approach maps for one working season and withdraw them after any collision large enough to alter the local field.

    Farther out, separated fragments carry ice, sealed cavities, and deposits that once lay near the planet's surface. Salvage camps fasten to slow bodies and move their anchors rather than trying to keep one station fixed in open space.
  PROSE

  prose <<~PROSE, section: :dangers, heading: "Bloom and Living Hazards"
    #{ref :bloom_zones, "Bloom Zones"} occur in several reaches of the belt. Their effects match the spatial breaks around Kaleidos, though no known chain connects the two locations. The Displacement Council tracks their boundaries remotely and has no crews close enough to maintain cordons.

    Space fauna shelter in warm cracks and feed around mineral plumes released by collisions. Raiders hide among the same fragments, sometimes copying the movement of a herd to conceal a ship from long survey. A charted animal shelter can therefore become a hostile anchorage between visits.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Claims Without a Port"
    Coremark cells, independent crews, and outer-system buyers work separate parts of the belt. No port can inspect every departure or hold a claim across the moving debris. Ownership rests on occupied anchors, current surveys, and buyers willing to recognize the mark placed on a cargo.

    Rescue agreements remain narrower than salvage claims. Crews that contest the same fragment still publish pressure failures and major drift warnings on a shared band. A false warning can clear a working zone long enough for theft and can also remove the only nearby ship when a real hull opens.
  PROSE
end

relate :rel_the_fracture_orbits_the_sun, :orbits, :the_fracture, :the_sun do
  prose "The Fracture follows the sixth planetary orbit around the sun."
end
relate :rel_the_fracture_inner_of_vastine, :inner_of, :the_fracture, :vastine do
  prose "The Fracture lies inside Vastine's orbit."
end
relate :rel_the_fracture_part_of_system, :part_of, :the_fracture, :kaleidos_system do
  prose "The Fracture is the broken sixth world of the Kaleidos system."
end
