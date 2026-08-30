installation :gray_line do
  name "Gray Line"
  summary "Gray Line is a Displacement Council cordon station around the Bloom Zone containing Latch and two empty service fragments."
  playable_as :chronicle_location
  context_tags :orbital, :cordon, :bloom_adjacent
  aka "Cordon Station Nine"
  subkind :border_post
  type_of :cordon_station
  tags :orbital, :danger, :resonance, :"ring-hab"
  prominence :marginal
  status :complete

  descriptive_identity(
    setting:
      "A Displacement Council cordon station ringing the Bloom Zone that " \
      "holds Latch and two empty service fragments, its line marked by " \
      "old damping buoys faded gray from years of exposure. The post " \
      "itself runs from exterior mounts through inspection walks to " \
      "remote recovery stations, with one sealed registry room at its " \
      "center.",
    activity:
      "Crews cycle through every cordon job without leaving the " \
      "boundary — mounts one month, the inspection route the next, a " \
      "recovery station the season after — while families arrive to read " \
      "the surviving Latch registry and leave recovery requests.",
    access:
      "The registry room is open to families who come to read; the " \
      "crossing itself is refused to everyone, and Iro Senn signs each " \
      "refusal himself and delivers it in person. A request to cross " \
      "joins the ledger required of every cordon."
  )

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

  gm_note :appears, "Families come to Gray Line to read the surviving Latch registry and leave recovery requests, " \
                    "and the station shows them the records while authorizing nobody across the cordon. " \
                    "#{ref :iro_senn, "Iro Senn"} signs that refusal himself and delivers it in person."
  gm_note :triggered_by, "Asking to cross puts the question to the sealed registry room, where the recovery " \
                         "requests and the objects brought back from the outer service arc are kept. The records " \
                         "are open to read; the crossing is refused, and the request joins the ledger " \
                         "#{ref :oram_sells, "Oram Sells"} required of every cordon."
  gm_note :complicates, "Every cordon job here can be worked without leaving the boundary, so the crew met on the " \
                        "exterior mounts this month is walking the inspection route the next and running a " \
                        "recovery station the season after."
end

relate :rel_gray_line_located_in_bloom_zones, :located_in, :gray_line, :bloom_zones do
  prose "Gray Line surrounds the zone containing Latch."
end

relate :rel_displacement_council_maintains_gray_line, :maintains, :displacement_council, :gray_line, since: 2384 do
  prose "The Displacement Council staffs Gray Line as one of its oldest permanent cordons."
end
