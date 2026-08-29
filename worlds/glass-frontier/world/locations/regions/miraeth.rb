geographic_location :miraeth do
  name "Miraeth"
  summary "Miraeth is a chain of wooded basins along the wet foothills of the Kyther Range, where ringglass veins connect old forests through their roots."
  playable_as :chronicle_location
  context_tags :"realm:surface"
  subkind :region
  type_of :region
  status :complete
  tags :surface, :ecology, :resonance, :ringglass, :trade
  prominence :recognized
  position frame: :kaleidos_surface, latitude_deg: 6, longitude_deg: -61,
           size_class: :region

  descriptive_identity(
    setting:
      "A chain of wooded basins along the Kyther Range's wet " \
      "foothills, separated by high saddles and bare ridge, each " \
      "holding deep soil, steady water, and old forest laced with " \
      "clear ringglass veins grown into trunk and root. After dark " \
      "the crystal keeps its light awhile, canopy first and then the " \
      "exposed roots, a healthy basin fading gradually from the " \
      "edges inward.",
    activity:
      "Families raise orchards, terrace grain, mushrooms, fish, and " \
      "honey on unusual soil, harvest living graftwood in small " \
      "volumes, and walk the groves after dusk when the connections " \
      "show. Ward assemblies post irrigation turns and quiet periods " \
      "at the gate houses, and each watershed keeps its own rules, " \
      "so passage agreed in one basin means nothing over the saddle.",
    hazards:
      "Whatever a machine puts into a basin travels: workshop heat " \
      "rides the root plate uphill into someone's bed, and a pump " \
      "drawn too sharply strips the local response seedlings need to " \
      "bind new grain. A grove deprived by extraction shows empty " \
      "young veins and a hard bright ring around the machine that " \
      "took its field, and the grower traces the change within days."
  )

  prose <<~PROSE
    Miraeth is a chain of wooded basins along the wet foothills of the #{ref :kyther_range, "Kyther Range"}. Pre-Glassfall water records use the name for the whole chain. Basin speech kept it through the Famine while the watersheds developed separate rules and dialects. Each basin holds deep soil, steady water, and centuries of fine ringglass deposited by #{encyclopedia_ref :glassfall_showers, "Glassfall showers"}. Plants incorporated the grains as they grew. Clear veins now run through old trunks and roots, linking whole stands through broad structural fields.

    The name covers several separate watersheds rather than one continuous forest. High saddles and bare ridges lie between them. Every basin has its own villages, water rules, cultivated beds, and areas left to unmanaged growth. #{ref :lumenshard, "Lumenshard"} is the largest settlement and the principal market for the living crystal wood produced throughout the region.
  PROSE
  prose <<~PROSE, section: :how_it_works, heading: "Living Crystal"
    Ringglass enters a grove through dust and water. New grains collect on leaves, wash into the litter, and settle against root surfaces. Fungi and fine roots bind them into the soil. Over years, some plants draw the crystal into their tissues. A mature clear-veined tree carries stress across its root plate and into neighboring plants rather than taking every wind load through its own trunk.

    The field is visible at dusk. Light remains in the crystal veins after the sky darkens, first in the canopy and then along exposed roots. A healthy basin fades gradually from the edges inward. Broken patches stay bright, blink out in hard boundaries, or answer in separate pulses. Growers walk after dusk because the grove then shows connections hidden in daylight.

    Crystal-bearing plants share more than structural load. Heat from a workshop line can travel through roots and warm a bed uphill. A pump drawing too sharply can leave nearby seedlings without enough local response to bind new grain. Water passing through an old root mat may carry weak signal traces: weather sounds, tool blows, or voices repeated without words. Basin work treats soil, machinery, water, and vegetation as parts of one system.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Basin Settlements"
    Villages occupy the raised margins, above the wet central beds and below the exposed ridge stone. Houses use ordinary masonry at ground level and living graftwood for upper frames, awnings, bridges, and long roofs. The grafts bend across small foundation changes, then harden as their cut crystal veins stop growing. A careful building can be repaired by replacing one tired limb. A neglected one transfers the load into the walls it was meant to protect.

    Water belongs to each basin. Ward assemblies set irrigation turns, workshop draw, and quiet periods after heavy shower fall. The rules are posted at gate houses where channels enter the settled terraces. A dark street during a quiet period has not lost power; its line has been disconnected so new crystal can settle through the roots without being pulled toward lamps and heaters.

    Food production supports the region. Orchards, root beds, terrace grain, mushrooms, fish ponds, and honey move outward by road and kite. Living graftwood brings higher prices but is harvested in much smaller volumes. Most families make their living from ordinary crops shaped by unusual soil rather than from crystal craft.
  PROSE
  prose <<~PROSE, section: :people, heading: "Growers and Field Readers"
    Basin knowledge passes through farm families, channel crews, carpenters, and night readers. A reader tracks the order in which a grove brightens and fades. A grower knows which bed can accept fresh shower grain. A carpenter keeps a graft wet while fitting it and sounds the cut end before committing it to a frame. These are trades with apprenticeships and records, even when no guild outside the region recognizes the title.

    The #{ref :lumenshard_conservatory, "Lumenshard Conservatory"} joins those local practices across basins. It maintains common measurements, studies failed growth, and sends workers to Bloom cordons. It does not own the groves or govern their water. Conservatory staff must negotiate access with the same assemblies that deal with every mill, orchard, and instrument shop.

    Residents distinguish a grove rested by season from one deprived by extraction. The first has even night light, active insects, and new clear growth. The second shows empty young veins and a hard bright response around whichever machine took the field. That distinction drives the region's long dispute with pilots who collect shower glass before it reaches the canopy.
  PROSE
  prose <<~PROSE, section: :atmosphere, heading: "Fall Seasons"
    Mountain rain carries ordinary mineral silt. Glassfall showers bring crystal. The two falls seldom arrive together, and growers plan for both. Catch cloth protects drinking water and tender leaves from coarse debris while open strips guide fine dust toward prepared beds. When rain follows soon after, channels spread the new grain across the root mat. In a dry season, workers wash it from roofs by hand.

    The #{ref :prismwell_kite_guild, "Prismwell Kite Guild"} forecasts the denser shower fronts and collects clean material in flight. Above registered groves, guild craft narrow their catch and leave lower strands to fall. Ground readings from the Conservatory help pilots identify those strands. Sparse years strain the arrangement because the same clear grain can become a seed in Lumenshard or an instrument in Glasswake.
  PROSE

  gm_note :appears, "After a heavy shower fall the ward assembly posts a quiet period at the gate houses and disconnects the settled terraces, so a party arrives to dark streets and cold rooms in a village that has lost nothing. " \
                    "The line stays down until the new grain has settled into the roots."
  gm_note :triggered_by, "Any equipment a party runs in a basin lands somewhere it did not intend. " \
                         "A workshop line's heat travels through the root plate and warms a bed uphill, and a pump drawn too sharply leaves nearby seedlings without enough local response to bind new grain; the grower whose bed changed traces it within days."
  gm_note :complicates, "Miraeth is several separate watersheds with their own villages, water rules, and dialects rather than one continuous forest, so access agreed in one basin carries no weight over the saddle into the next. " \
                        "A party crossing the chain renegotiates at each gate house where the channels enter the terraces."
end

relate :rel_miraeth_on_kaleidos, :on_surface_of, :miraeth, :kaleidos do
  prose "Miraeth occupies a chain of rain-fed basins on #{ref :kaleidos, "Kaleidos"}'s Kyther foothills."
end
relate :rel_lumenshard_conservatory_hq_miraeth, :headquartered_in, :lumenshard_conservatory, :miraeth, since: 2286 do
  prose "The #{ref :lumenshard_conservatory, "Lumenshard Conservatory"} coordinates its field work from Miraeth while the individual basins retain control of their land and water."
end
relate :rel_prismwell_operates_miraeth, :operates_in, :prismwell_kite_guild, :miraeth, since: 2388 do
  prose "Prismwell forecast crews fly the shower paths above the groves and limit their collection over registered basins."
end
