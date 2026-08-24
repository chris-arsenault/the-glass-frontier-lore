geographic_location :lithren do
  name "Lithren"
  summary "Lithren is the frozen outermost planet of the Kaleidos system, where sealed research stations study open-air ruins older than surviving records."
  playable_as :chronicle_location
  subkind :celestial_body
  status :complete
  tags :cosmology, :"outer-system", :archives, :mystery, :danger
  prominence :recognized
  position frame: :kaleidos_system_chart, radius: 8, angle_deg: 158

  prose <<~PROSE
    Lithren is the eighth and outermost planet of the Kaleidos system. Nitrogen frost, dark stone, and shallow frozen basins cover its surface. Research stations occupy sealed cuts beside ruins built in the open before the oldest surviving system records.

    The structures are not elven. Their joints, proportions, and tool marks differ from ring construction, and no resonance lattice runs through the walls. Doorways open onto plazas without pressure seals. Worn channels cross the paving as if liquid once moved there under conditions the present surface cannot support.
  PROSE

  prose <<~PROSE, section: :history, heading: "Open-Air Ruins"
    The largest sites follow an equatorial basin and stand partly buried by frost-driven soil. Low walls enclose courts, ramps descend into storage chambers, and stone posts carry repeated cut bands whose ordering has not been translated. No intact body or written archive has been recovered.

    Excavators work under movable pressure roofs. Exposed stone changes temperature too quickly under work lights, so crews clear one surface, record it, and cover it again before opening the next. An object moved into a warm station loses residue that may contain the only surviving evidence of its use.
  PROSE

  prose <<~PROSE, section: :people, heading: "Research Stations"
    Stations cluster in orbit and beside three major sites. Surface crews rotate through short residencies while orbital laboratories hold long-term collections and life support. Freight arrives from Vastine and Kaleidos on schedules that can stretch when outer-system weather closes a transfer.

    Every station maintains reserve heat, food, and pressure parts beyond its nominal isolation window. Research priorities yield immediately to power work. A conservator may spend a season preparing one room and then seal it untouched because the same crew must rebuild a radiator.
  PROSE

  prose <<~PROSE, section: :present_day, heading: "The Basin Survey"
    A current survey is mapping channels between the three known site groups. Several continue beneath frozen basin sediment toward a fourth concentration of stone returns. The route crosses ground too weak for a heated crawler and too broad to roof continuously.

    Teams are testing cold anchors and remote instruments before committing a crew. The first clean returns show parallel walls rather than a single conduit, extending the inhabited plan beyond the excavated courts.
  PROSE

  gm_note :complicates, "Lithren stations put power work ahead of research without discussion. " \
                        "A request for crew, heat, transport, or laboratory time loses to a radiator rebuild, and a chamber prepared across a whole season gets sealed untouched."
  gm_note :triggered_by, "Carrying a find from the ruins into a heated station strips residue that may be the only evidence of what the object was for. " \
                         "Excavators clear one surface, record it, and cover it before opening the next, and they expect visitors to work the same way."
  gm_note :appears, "The basin survey has to cross ground too weak for a heated crawler and too broad to roof continuously. " \
                    "Anyone arriving with a light footprint or their own sounding gear is asked to walk a section toward the fourth site group."
end

relate :rel_lithren_orbits_the_sun, :orbits, :lithren, :the_sun do
  prose "Lithren follows the outermost planetary orbit around the sun."
end
relate :rel_lithren_part_of_system, :part_of, :lithren, :kaleidos_system do
  prose "Lithren is the eighth planet of the Kaleidos system."
end
