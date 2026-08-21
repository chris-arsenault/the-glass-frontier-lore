faction :lumenshard_conservatory do
  name "Lumenshard Conservatory"
  subkind :research_body
  founded 2286
  tags :ecology, :resonance, :ringglass, :surface
  prominence :recognized

  prose <<~PROSE
    A coalition of growers, field ecologists, and resonance workers who care for #{ref :miraeth, "Miraeth"}. These surface basins took centuries of fine ringglass from #{ref :glassfall_showers, "Glassfall showers"}. Their plants grew around the grains, drew crystal into bark and root, and joined living tissue to broad local fields. At dusk the oldest groves shine along their veins, giving the Conservatory its name.

    The Conservatory treats each grove as a working ecology. Food plants, water filters, structural roots, insects, fungi, and ringglass all affect the field. Removing a clear growth for instruments can change which roots carry resonance into the soil. Running a concentrator nearby can warm one terrace and leave another too quiet for its crystal-bearing seedlings.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Growing with Ringglass"
    Conservatory workers read a grove from its edges inward. Young leaves show sharp changes first: translucent spots, doubled veins, or margins that vibrate against still air. Roots carry slower structural responses that can be felt through shallow stakes driven beside them. Water moving out of the basin carries signal traces from every crystal surface it crossed.

    Work alternates between growth and use. A grove can support household heat, pumps, and careful harvesting through most of a season. After a dense shower or a long industrial draw, sections are left electrically and resonantly quiet while new grains settle into the root mat. The rest is visible. Night glow evens out, insects return to the central beds, and the sharp beat between old and new crystal fades.

    Living crystal grafts are the Conservatory's most valuable product. A cut root or branch continues adjusting its broad structural response for a time after removal. Builders use grafts where a rigid ringglass brace would transfer stress into fragile material. The grafts eventually stop growing and become ordinary crystal-bearing wood; their useful life depends on moisture, local resonance, and how violently they are asked to compensate.
  PROSE
  prose <<~PROSE, section: :history, heading: "The Bloom Error"
    When the #{ref :the_silent_bloom, "Silent Bloom"} began, the Conservatory argued against immediate large-scale containment. Its records contained many examples of damaged resonance ecologies finding another balance after overdraw, fire, flood, or an unusually dense shower. Early reports from Pyre sounded like the same process at a size no grove had experienced.

    The evidence changed when the first affected roots appeared in more than one position at once. Leaves reflected plants that were not present. Water entered a bed and returned to the same channel without crossing the soil between. These were not signs of an ecology redistributing load. The physical relationships on which recovery depended were failing.

    The Conservatory joined the #{ref :bloom_coalition, "Bloom Coalition"} late in 2378. It brought living substrate maps, growers who could recognize changes before fixed instruments, and a long record of how resonance moved through mixed crystal and organic material. The delay remains part of every political account of the Coalition.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Fall and Harvest"
    The #{ref :prismwell_kite_guild, "Prismwell Kite Guild"} collects clean shower grains from the same fronts that feed the groves. A broad catch above a basin can remove a season's new crystal. Leaving every front untouched can damage leaves, contaminate water, and waste material the root mat cannot absorb.

    Ground workers now signal which parts of a front the grove can receive, and pilots narrow their catch over those paths. The arrangement produces better forecasts and fewer failed plantings. It does not settle ownership of material still falling from the sky. Sparse years make that disagreement physical: a workshop lacks clean grain while young grove beds show empty veins.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Conservatory teams work at several Bloom cordons with the #{ref :displacement_council, "Displacement Council"}. They plant quick-rooting beds outside the damping lines and record where the roots stop behaving as connected matter. The plants do not contain a zone. They provide a cheap, living map of small boundary changes between instrument surveys.

    Miraeth remains the institution's center and its strongest evidence that resonance damage can heal when matter retains stable relationships. Bloom work keeps showing the boundary of that lesson.
  PROSE
end

relate :rel_lumenshard_studies_showers, :studies, :lumenshard_conservatory, :glassfall_showers, since: 2286 do
  prose "The Conservatory studies how shower dust enters soil, water, and living tissue in Miraeth."
end
relate :rel_lumenshard_cooperated_bloom_coalition, :cooperates_with, :lumenshard_conservatory, :bloom_coalition, since: 2378, till: 2396 do
  prose "After its late entry, the Conservatory supplied the Bloom Coalition with living substrate maps and field ecologists."
end
relate :rel_lumenshard_cooperates_displacement_council, :cooperates_with, :lumenshard_conservatory, :displacement_council, since: 2384 do
  prose "Conservatory teams grow boundary beds at Council cordons to reveal small changes between instrument surveys."
end
relate :rel_lumenshard_studies_bloom_zones, :studies, :lumenshard_conservatory, :bloom_zones, since: 2378 do
  prose "The Conservatory compares Bloom boundary failures with the recoverable resonance ecologies of its groves."
end
