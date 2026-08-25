geographic_location :ashvane do
  name "Ashvane"
  summary "Ashvane is a hot inhabited moon of Ashenmaw and the far terminus of the Keel, settled along cooler crater walls and highland ridges."
  playable_as :chronicle_location
  subkind :celestial_body
  status :complete
  tags :"outer-system", :resonance, :trade, :danger, :ecology
  prominence :recognized
  position frame: :kaleidos_system_chart, relative_to: :ashenmaw,
           radial_offset: 0.08, angle_offset_deg: 5

  descriptive_identity(
    setting:
      "A hot moon warmed from below by tidal flexing, its dark " \
      "volcanic plains, salt basins, and folded highlands lying under " \
      "a sky that Ashenmaw fills. Towns take the cooler ground — " \
      "crater walls, high plateaus, the shadowed faces of long " \
      "ridges — and at night radiator frames stand over them as dark " \
      "combs against the giant's bands.",
    activity:
      "Daily life runs on shade rather than one clock: schools and " \
      "workshops publish hours by direct light, giant-shade, and the " \
      "cooler span after sunset, while the port districts keep Keel " \
      "system time as well. Terrace farms, basalt quarries, salt " \
      "camps, and heat-chained resonance arrays keep the settlements " \
      "fed and cooled, with Shadewell handling most Keel traffic.",
    hazards:
      "Some lava flows stay warm enough to soften boot soles, steam " \
      "vents shift after strong tidal periods, and vent storms send " \
      "the lowland camps out as rescue crews. A fracture shift can " \
      "pull every surface on one large resonance loop toward the same " \
      "frequency, and during a heat emergency the law hands private " \
      "cooling to the municipal return first and argues payment after."
  )

  prose <<~PROSE
    Ashvane is a hot inhabited moon of #{ref :ashenmaw, "Ashenmaw"} and the far terminus of #{ref :keel, "the Keel"}. Tidal flexing warms its crust from below while the gas giant fills the sky above. Dark volcanic plains, folded highlands, salt basins, and chains of old craters cover the surface. Towns occupy cooler crater walls, high plateaus, and the shadowed sides of ridges.

    Heat management is part of clothing, architecture, farming, and public law. Outdoor workers wear reflective layers with circulating collars and gloves. Homes reject heat through buried loops and tall radiator frames. Streets provide shaded rest bays with public water. The equipment is common, repaired locally, and worn with the same variation people bring to any everyday garment.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Hot Ground"
    Ashvane's low plains are basalt broken by lava channels and salt pans. Some flows remain warm enough to soften boot soles through poor insulation. Others cooled centuries ago and support roads, grazing, and dry farming where water can be brought to them. Steam vents mark active fractures and shift after strong tidal periods.

    The highlands are cooler and more densely settled. Long ridges cast dependable shadows across their inner faces. Terraces cut into those faces hold homes, gardens, workshops, and reservoirs. Craters trap night chill and, in a few regions, subsurface ice. #{ref :shadewell, "Shadewell"} grew around the largest accessible ice lens and now handles most Keel traffic.

    Ashenmaw dominates the sky. Its bands provide light at night, and its passage across the sun brings a regular deep shade. Residents schedule exposed work around that interval. A late cargo unload waits. A roof crew moves onto the sunward face. Markets spill from covered streets into open courts until direct light returns.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "Moving Heat"
    Ashvane's settlement arrays use kinetic-band resonance to direct heat through buildings and into sinks. Wall panels carry warmth toward roof radiators after sunset. Cold-storage rooms send their waste heat into bath houses, dryers, and greenhouse soil. A large installation is designed as a chain of uses before the remaining load reaches open air.

    The moon's ambient field strengthens along active fractures. Arrays near them can move more heat and drift more quickly. A town survey marks the field alongside temperature and gas. Buildings use many modest loops rather than one central cut because a fracture shift can pull every connected surface toward the same frequency.

    Thermal resonance leaves visible habits. Public doors have a warm-side and cool-side grip. Houses paint active wall paths so nobody fixes a shelf through one. Kitchens cluster near return lines. At night, radiator frames stand above towns as dark combs against Ashenmaw's bands, each separated far enough from the next to prevent their fields from coupling.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Settled Ridges"
    Ashvane's towns began as mining, survey, and fuel stations during the ring era. The Signal Famine cut their supply schedules and forced each to combine food, water, heat rejection, and machine repair within a smaller territory. Reconnection restored trade without undoing that local capacity.

    Highland settlements grow food in shaded terraces and roofed courtyards. Farms use salt-tolerant grains, trailing vegetables, fungi beds, and herd animals kept in cut-stone shelters during the hottest hours. Volcanic soil is fertile after salts are washed from it; water and cooling limit cultivation more than land.

    Lowland camps quarry basalt, collect salts, maintain heat wells, and move when fractures change. Some become permanent towns around a stable resource. Others remain rows of modular houses and radiator masts that can be lifted onto crawlers within days. Their workers know the surface beyond the maintained roads and provide most rescue crews during vent storms.
  PROSE
  prose <<~PROSE, section: :people, heading: "Ashvane Life"
    Ashvane schedules follow shade, not a single clock. Schools, courts, and workshops publish hours by direct light, giant-shade, and the cooler span after sunset. Keel traffic uses system time, so port districts maintain both schedules and employ callers who translate between them.

    Cooling is a public utility with household duties. Residents clean radiator fins, inspect buried loops, and report an unexplained warm patch before it becomes a failed line. During a heat emergency, private workshop sinks join the municipal return by law. Payment comes later through utility credit and is argued after the temperature falls.

    Clothing favors pale outer layers over bright inner cloth revealed in shade. Ceramic and glazed stone are common household materials. Communal ovens use heat already collected from workshops, and evening food markets gather along the return channels. A visitor who praises the free fuel is quickly told what the pumps and radiator crews cost.
  PROSE
  prose <<~PROSE, section: :trade, heading: "The Far End of the Keel"
    The Keel brings ringglass, precision parts, medicine, and passengers. Ashvane sends out ceramic, salts, basalt products, heat-rated machinery, and food preserved in its dry air. The route concentrates wealth and bureaucracy around Shadewell, but smaller towns trade across the moon through #{ref :heat_road_hauler, "heat-road haulers"} and short-range kites.

    Keel closure is treated as a supply problem rather than immediate disaster. Town reserves and local production cover essentials. Specialized components become scarce first, then instruments and medical stock. Freight houses maintain published substitution lists so workshops can rebuild a pump with Ashvane parts before waiting for the named off-world assembly.

    This practice also makes Ashvane a market for repair knowledge. Engineers arrive to test equipment under sustained heat and leave with local modifications in their plans. Ashvane makers object when those modifications return under an off-world mark and charge more than the original repair.
  PROSE

  gm_note :appears, "Ashvane towns publish hours by direct light, giant-shade, and the cooler span after sunset, while port districts also keep Keel system time. " \
                    "An appointment fixed with a #{ref :shadewell, "Shadewell"} clerk and one fixed with a highland workshop land hours apart unless a caller translates."
  gm_note :complicates, "During a heat emergency, private workshop sinks join the municipal return by law. " \
                        "A workshop, cold store, or docked hull loses its cooling to the town first, and the utility credit is argued once the temperature falls."
  gm_note :triggered_by, "Cutting one large resonance loop instead of several modest ones works until a fracture shifts the ambient field. " \
                         "Every surface tied into that cut then drifts toward the same frequency, and the building loses heat rejection in every room at once."
end

relate :rel_ashvane_orbits_ashenmaw, :orbits, :ashvane, :ashenmaw do
  prose "#{ref :ashvane, "Ashvane"} orbits #{ref :ashenmaw, "Ashenmaw"}; tidal flexing from that orbit heats its crust."
end
