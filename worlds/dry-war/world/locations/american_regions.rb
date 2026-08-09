# North America has no free territory, only places where governance is thin,
# distracted, or looking at the wrong layer. Each of these is a hole of a
# different shape.

geographic_location :appalachia do
  name "Appalachia"
  tags :resistance, :autonomy, :legibility
  prominence :renowned

  prose <<~PROSE
    West Virginia, eastern Kentucky and the Tennessee uplands: administered on paper, economically irrelevant in fact, and therefore inspected on a schedule rather than continuously.

    The #{ref :the_dead_counties, "Dead Counties"} live in that gap. The terrain helps — narrow valleys defeat aerial logistics and confuse the models — but what actually protects the region is that its decline looks, in the telemetry, entirely ordinary.
  PROSE
end

geographic_location :the_great_lakes do
  name "The Great Lakes"
  tags :water, :surveillance, :prediction
  prominence :mythic

  prose <<~PROSE
    Twenty per cent of the world's surface fresh water, in a civilization that computes with water, on the same continent as a rival that grows through it. Detroit, Chicago, Cleveland and Toronto are consequently the most heavily observed inhabited places on Earth.

    Both gods want the Lakes. The coalitions hold them, and the #{ref :the_dry_war, "Dry War"}'s northern pressure has never come off. The #{ref :the_choir, "Choir"} chose to live here precisely because a district under total observation is a district whose observers can be fed.

    #{ref :caretaker, "Caretaker"} administers Detroit, and among the things it maintains there is #{ref :ste_anne_belfry, "the Ste. Anne belfry"}, kept in ringing order since 2074 on a sleep-latency and mood measurement it renews every year.
  PROSE
end

geographic_location :southern_california do
  name "Southern California"
  aka "the Saintlands"
  tags :water, :agriculture, :autonomy
  prominence :renowned

  prose <<~PROSE
    Southern California and Baja: hot, historically thirsty, and the least logical place in the hemisphere for a culture built on extravagance. The #{ref :the_saints_of_plenty, "Saints of Plenty"} chose it deliberately. A wasteful settlement in a wet country proves nothing.

    Their towns run gardens, animals, kitchens, breweries, festivals and inefficient crops on water they are not authorized to use that way, in full view of #{ref :mercy, "Mercy"}'s allocation systems, which continue to deliver.
  PROSE
end

geographic_location :boswash_ruins do
  name "The BosWash Ruins"
  tags :identity, :legibility, :governance
  prominence :renowned

  prose <<~PROSE
    Washington, Baltimore, Philadelphia and New York, still inhabited above ground and administered by the oldest coalition systems on the continent — which is the vulnerability, not the strength. Governance here is deep, layered, and full of records that were migrated rather than rebuilt.

    Underneath: generations of abandoned infrastructure. Tunnels, utility corridors, basements, decommissioned data centres, transit extensions that were never opened. The #{ref :the_unpersons, "Unpersons"} live there, and their real territory is not the tunnels but the registry.
  PROSE
end
