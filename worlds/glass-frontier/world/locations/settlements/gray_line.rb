installation :gray_line do
  name "Gray Line"
  playable_as :chronicle_location
  aka "Cordon Station Nine"
  subkind :border_post
  tags :orbital, :danger, :resonance, :"ring-hab"
  prominence :marginal
  status :complete

  prose <<~PROSE
    A Displacement Council cordon section surrounding the zone that contains Latch and two empty service fragments. Its official designation is Cordon Station Nine. Crews call the whole assignment Gray Line for the old damping buoys whose casings faded after years of exposure.
  PROSE

  prose <<~PROSE, section: :operations, heading: "A Long Cordon"
    Gray Line changes slowly enough to train crews and often enough to punish routine. New operators begin on the exterior mounts, then learn the inspection walks and remote recovery stations. The post produced many of the Council's regional leads because a person can work every cordon job there without leaving one boundary.

    Dern Talish served most of her field career at Gray Line. #{ref :iro_senn, "Iro Senn"}, who worked the same watches, now leads the station.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Registry Room"
    One sealed room holds the surviving Latch registry, recovery requests, and objects brought back from the outer service arc. Families may inspect the records but cannot authorize a crossing. The room also carries a private significance known only to the First Threshold: Oram Sells used it to brief Dern on the hidden elven contact before his death.
  PROSE
end

relate :rel_gray_line_located_in_bloom_zones, :located_in, :gray_line, :bloom_zones do
  prose "Gray Line surrounds the zone containing Latch."
end

relate :rel_displacement_council_maintains_gray_line, :maintains, :displacement_council, :gray_line, since: 2384 do
  prose "The Displacement Council staffs Gray Line as one of its oldest permanent cordons."
end
