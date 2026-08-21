installation :accord_shore do
  name "Accord Shore"
  subkind :settlement
  population 32_000
  population_band "About thirty-two thousand residents, with several thousand visiting delegates and staff"
  role "Diplomatic quarter and standing seat of the Tempered Accord"
  setting "Western central Sithari, around a ring-era cooling basin remade as an artificial lake"
  access "City rail, public causeways and controlled entrances to the inner hearing rooms"
  tags :surface, :governance, :diplomacy, :resonance
  prominence :recognized

  prose <<~PROSE
    Accord Shore surrounds an artificial lake west of #{ref :old_campus, "the Old Campus"}. #{ref :sithari, "Sithari"} rebuilt the former basin wards in 2423 to house the new #{ref :tempered_accord, "Tempered Accord"}, using a ring-era cooling reservoir that had supplied workshops in the original campus. Delegation houses and hearing halls occupy the inner shore. Apartments, inns, translation offices, copy rooms, and restaurants fill the streets beyond them.

    The name covers the diplomatic compound and the surrounding neighborhood. Most residents work in services that grew around the Accord or in the municipal systems that keep the lake and its paths open. The district remains busy after the hearing rooms close: visiting crews eat beside civil clerks, children use the public steps at the eastern shallows, and petitioners prepare signs under the same covered walks that delegates take to work.
  PROSE
  prose <<~PROSE, section: :geography, heading: "Around the Water"
    A pedestrian path circles the lake. Three bridges cross its narrow middle, giving the district short routes that do not pass through the controlled compound. The north bank holds delegation houses and long-stay apartments. The south bank carries public offices, legal services, and the market streets. Municipal workshops occupy the old pump rooms below the western embankment.

    The lake is shallow except at the ring-era intake wells. Its level changes by less than a hand across the year because the old basin walls leak into buried campus channels when the water rises further. Maintenance crews inspect those channels from the upper #{ref :underlayers, "Underlayers"}; several serve as storm drains and two open into inhabited streets.

    Ducks nest along the planted eastern bank and feed around the warm return pipes. Their numbers increased after the district opened because delegates fed them. The city now pays two shore keepers to manage nests beside air intakes and keep the bridge approaches clear during hatching season.
  PROSE
  prose <<~PROSE, section: :governance, heading: "The Accord Compound"
    The Accord's meeting halls stand around the northwestern curve of the lake, physically separate from the executive buildings of #{ref :the_continuity, "the Continuity"}. Member delegations have equal frontage on the inner path. Shared hearing rooms occupy low buildings between them, and a public records hall faces the main causeway from the city.

    The diplomatic compound belongs to the Accord, while its streets, water, transit, and emergency services remain under Sithari law. Accord marshals control admission to a hearing room. City responders control the fire doors and evacuation routes. Accord and city authorities keep staff at each junction so responders can enter before any jurisdictional dispute is settled.

    The main causeway remains public. Demonstrations gather there within sight of the hearing halls, separated from the inner path by a water channel and a line of removable barriers. Delegations can use private entrances from the north bank, but many continue to cross the causeway because the Accord's proceedings and the petitions outside them concern the same disputes.
  PROSE
  prose <<~PROSE, section: :resonance, heading: "Quiet Rooms"
    The district's privacy system runs through ringglass baffles beneath the inner shore. Low correction tones pass between submerged pylons and keep the signal-band fields of adjacent hearing rooms from coupling through their records, instruments, and walls. The water supplies an even thermal load around the pylons and makes a failing return pipe visible at the surface before heat reaches the rooms.

    Clerks test each room before a closed hearing. They place a marked crystal sheet on the central table, sound the room through its full correction cycle, and compare the marks with a control sheet in the next chamber. Any matching line closes both rooms until a Tuner finds the shared path. Most failures come from furniture or recording equipment brought in by a delegation, not from the buried baffles.

    Shore keepers watch the ducks as well as the gauges. A flock abandoning one warm return often gives the first visible sign that a submerged line has cooled. The observation locates a failed circuit quickly; instruments still determine whether the fault affects a hearing room.
  PROSE
  prose <<~PROSE, section: :economy, heading: "A Working Diplomatic Quarter"
    Accord business supports translators, legal copyists, mediators, security staff, cooks, couriers, and landlords. The work follows hearings rather than ordinary office hours. A late settlement can fill the south-bank kitchens after midnight, while an adjournment empties reserved rooms and leaves suppliers holding food ordered for a week of negotiations.

    Delegations bring their own customs into a district built to host them. Hab-world kitchens rent space beside Sitharian restaurants. Freight agents keep samples and contract copies near the records hall. Tailors specialize in formal clothing that remains comfortable across the temperature and pressure changes of orbital travel. Many businesses survive on repeat staff rather than the officials whose names appear in the proceedings.
  PROSE
  prose <<~PROSE, section: :tensions, heading: "Inside Sithari"
    Other settlements accepted Sithari because no neutral site could match its transit, records, and staff. The location still shapes the institution. Hearings use Sitharian legal forms, most permanent employees live under Continuity government, and a delegation that needs an urgent repair hires from the city around it.

    Accord Shore makes that influence visible without putting the compound inside #{ref :the_continuity, "the Continuity"}'s grounds. Delegations can walk to the #{ref :old_campus, "Old Campus"} in minutes, while the lake and public causeway maintain a clear boundary. Disputes over security, demonstrations, and access to city records repeatedly test where that boundary lies.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    One pair of quiet rooms has remained closed after clerks found matching edits on their control sheets during separate hearings. The submerged circuit tests within tolerance. Accord staff are now inventorying every object brought into the rooms while city crews inspect the old return channel beneath the north bank.
  PROSE
end

relate :rel_accord_shore_located_in_sithari, :located_in, :accord_shore, :sithari, since: 2423 do
  prose "Accord Shore occupies the western side of central #{ref :sithari, "Sithari"}, within a short walk of the #{ref :old_campus, "Old Campus"}."
end
relate :rel_accord_shore_hosts_tempered_accord, :hosts, :accord_shore, :tempered_accord, since: 2423 do
  prose "The inner shore contains the standing hearing rooms, delegation houses and records hall of the #{ref :tempered_accord, "Tempered Accord"}."
end
relate :rel_accord_shore_depends_on_resonance, :depends_on, :accord_shore, :resonance do
  prose "Submerged ringglass baffles use #{ref :resonance, "resonance"} to keep the inner hearing rooms from sharing signal-band traces."
end
