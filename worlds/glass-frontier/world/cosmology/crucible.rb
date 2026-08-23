geographic_location :crucible do
  name "Crucible"
  playable_as :chronicle_location
  subkind :celestial_body
  status :complete
  tags :cosmology, :materials, :trade, :danger
  prominence :recognized
  position frame: :kaleidos_system_chart, radius: 1, angle_deg: 18

  prose <<~PROSE
    Crucible is the innermost planet of the Kaleidos system, a hot rocky world mined from shielded settlements along its high latitudes. Surface crews work during short local windows, then withdraw beneath reflective roofs before heat and charged dust exceed suit limits.

    The uplands expose iron, nickel, ceramic salts, and dense clear crystals fused through repeated heating. Those crystals resemble ringglass in a cut sample but do not retain a stable tuning. Ringglass remains material recovered from the broken ring; Crucible supplies metals and heat-resistant stone used to work it.
  PROSE

  prose <<~PROSE, section: :operations, heading: "Surface Windows"
    Mines open from buried galleries. A shift begins when sunward rock falls below the posted temperature and ends before the next thermal rise, regardless of whether a cut is complete. Crawler trains carry ore to shaded lift heads whose cables and motors remain below ground.

    Every exterior crew has a paired shelter within walking range. A shelter holds water, pressure, medical cooling, and an independent clock. Rescue rules forbid sending a second crew after workers who crossed a closure line; the first crew is expected to reach the nearest shelter and wait through the hot interval.
  PROSE

  prose <<~PROSE, section: :trade, heading: "Heat-Born Material"
    Crucible exports refractory ceramics, conductive metals, and crystal abrasive. Its foundries can maintain temperatures that are expensive to produce elsewhere and refine alloys for Ashvane cooling systems, orbital hulls, and ringglass tools.

    Imported food, medicines, and delicate instruments arrive through orbital yards rather than surface ports. A missed lift window delays delivery until the next safe descent and can leave cargo circling above the settlement that ordered it.
  PROSE
end

relate :rel_crucible_orbits_the_sun, :orbits, :crucible, :the_sun do
  prose "Crucible follows the system's innermost planetary orbit."
end
relate :rel_crucible_inner_of_kaleidos, :inner_of, :crucible, :kaleidos do
  prose "Crucible orbits inside Kaleidos."
end
relate :rel_crucible_part_of_system, :part_of, :crucible, :kaleidos_system do
  prose "Crucible is the first planet of the Kaleidos system."
end
relate :rel_crucible_supplies_ashvane, :supplies, :crucible, :ashvane do
  prose "Crucible foundries supply heat-resistant alloys used in Ashvane's cooling loops and radiator frames."
end
