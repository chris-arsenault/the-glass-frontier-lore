faction :prismwell_kite_guild do
  name "Prismwell Kite Guild"
  summary "The Prismwell Kite Guild is a Glasswake pilots' guild, repair network, and carrier specializing in routes affected by Glassfall showers."
  playable_as :allegiance
  origin_blurb "Pilots, repair wells, and carriers share forecasts and rescue duties along Glassfall shower routes."
  subkind :company
  founded 2312
  tags :transport, :trade, :ringglass, :resonance
  prominence :recognized

  prose <<~PROSE
    A pilots' guild, repair network, and regional carrier based at #{ref :glasswake, "Glasswake"}. The Prismwell Kite Guild specializes in routes affected by #{ref :glassfall_showers, "Glassfall showers"}: predicting the streams, carrying traffic around dense fronts, and recovering clean ringglass grains from the fall. Its craft are recognized by pale catch panels folded against the hull between showers.

    The name comes from Glasswake's first collection yards. Miners dug stepped wells into the sheltered side of the fallen ring fragment and lined them with dark cloth. After a shower, sorted crystal at the bottom threw fractured light up the walls. The wells became workshops, the workshops pooled their pilots, and the pilots formed the guild in 2312 as traffic through the newly reopened routes increased.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Shower Routes"
    Guild scouts fly ahead of a predicted stream with reinforced leading edges and several independent field instruments. They track larger fragments, record how the ambient gradient moves, and release simple marker lights where the safest crossing is likely to hold. Later craft receive the measurements directly and still carry their own observers. Fine debris can divide around a mass the scout never saw or close a route between one vessel and the next.

    Collection flights enter the thin trailing edge. Their kites unfold sacrificial cloth between short spars, gathering dust without presenting a rigid surface to larger impacts. The cloth returns grey and stiff with fused grains. Glasswake crews wash it over tiered basins, then sound each fraction with broad reference tones. Instrument-grade crystal is uncommon. Mixed fines go into structural aggregate, filters, and low-output household glass.

    The guild maintains ordinary passenger and freight service between these flights. Its shower knowledge makes it useful across the surface-access spurs of #{ref :keel, "the Keel"}, where a delayed front can strand descending vessels between safe fields.
  PROSE
  prose <<~PROSE, section: :structure, heading: "Pilots and Wells"
    Prismwell is owned by its working wells. Each yard holds collection cloth, sorting floors, repair benches, and a roster of craft. A yard may specialize in surface falls, high-atmosphere capture, or orbital crossings. Pilots take work through the yard and contribute part of each payment to shared repairs and forecasts.

    Route observations circulate across the guild before the cleaned dust reaches market. This arrangement costs a successful crew some advantage and keeps another crew from entering a front blind. Withholding a hazard reading can end access to every Prismwell well. Arguments over the grade or ownership of recovered crystal remain local to the yards and are frequent.

    Independent pilots use the published forecasts without joining. They pay more for repair and receive no share of collected material. The guild accepts this because more eyes on a shower improve the record and because a stranded independent still becomes a Prismwell rescue job.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "The Groves Below"
    Some surface shower paths cross the #{ref :miraeth, "Miraeth"} basins protected by the #{ref :lumenshard_conservatory, "Lumenshard Conservatory"}. Prismwell crews once spread broad catch cloth above those basins and removed most of a season's fresh ringglass before it reached the vegetation. The groves' local fields weakened over the following years, and living crystal growth failed along the collection line.

    Guild flights now narrow their catches above known groves and leave the dense lower fall alone. The Conservatory provides ground readings that improve the shower forecasts in return. Neither side agrees on how much crystal a grove requires or how much a moving stream would have deposited without collection. A thin season brings the argument back immediately.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Glassfall traffic has shifted toward the mid-drift as several familiar streams spread into new fronts. Prismwell is extending orbital repair capacity and hiring pilots accustomed to the Shear. The work pays well because the same fine debris that fills a catch cloth can strip an exposed control surface in minutes.

    The guild's Glasswake wells remain its center. Tourists visit the oldest stepped basin for the light. Working crews use the deeper wells beyond it and object when visitors mistake the clean display cloth for equipment that has crossed a shower.
  PROSE

  gm_note :appears, "Prismwell is hiring for the mid-drift, where familiar streams have spread into new fronts, and any capable crew standing in a yard gets offered the work. " \
                    "It pays well because the same fine debris that fills a catch cloth strips an exposed control surface in minutes."
  gm_note :triggered_by, "A hazard reading a crew takes on a guild route is expected in the shared record before its collected dust reaches market, and the receiving yard asks for it. " \
                         "Holding one back ends that crew's repair and berth at every Prismwell well."
  gm_note :complicates, "Every guild forecast carries a window, and Prismwell refuses liability for a carrier that departs on an expired reading. " \
                        "Independent pilots use the forecasts without joining, pay more for repair, and still become a Prismwell rescue job when a front closes behind them."
end

relate :rel_prismwell_headquartered_in_glasswake, :headquartered_in, :prismwell_kite_guild, :glasswake, since: 2312 do
  prose "The Prismwell Kite Guild grew from Glasswake's collection wells and still runs its largest yards there."
end
relate :rel_prismwell_studies_showers, :studies, :prismwell_kite_guild, :glassfall_showers, since: 2312 do
  prose "Prismwell scouts map #{ref :glassfall_showers, "Glassfall showers"} from the field changes and debris their kites encounter."
end
relate :rel_prismwell_depends_on_kites, :depends_on, :prismwell_kite_guild, :kite_sail do
  prose "The guild's forecasts, collections, and rescues depend on kites able to move between surface, atmosphere, and orbit."
end
relate :rel_prismwell_operates_keelward, :operates_in, :prismwell_kite_guild, :keelward, since: 2330 do
  prose "Prismwell keeps shower-rated repair bays at #{ref :keelward, "Keelward"}, where its kites transfer passengers and freight between orbital traffic and the city."
end
relate :rel_prismwell_cooperates_lumenshard, :cooperates_with, :prismwell_kite_guild, :lumenshard_conservatory, since: 2388 do
  prose "Prismwell leaves shower fall above Miraeth and receives the Conservatory's ground readings in return."
end
