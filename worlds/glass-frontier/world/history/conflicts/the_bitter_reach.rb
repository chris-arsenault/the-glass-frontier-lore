conflict :the_bitter_reach do
  name "The Bitter Reach"
  subkind :war
  status :complete
  tags :military, :trade, :governance, :diplomacy, :transport
  prominence :renowned
  fact :methods, "Embargoes, convoy seizures, route occupations, credit restrictions, and limited ship combat"
  custom_fact :outcome, "Linked settlements ended organized fighting through the Tempered Accord",
              label: "Outcome"

  prose <<~PROSE
    The Bitter Reach was the system-wide conflict from 2407 to 2423. It grew from disputes that the #{ref :bloom_coalition, "Bloom Coalition"} had held inside a common forum and that its dissolution left to separate factions. Former partners entered the new fighting with shared routes, recent grievances, and direct knowledge of one another's supply limits.

    No declaration opened the war. Convoys began refusing rival ports, patrols held junctions beyond their home authority, and lenders in Sithari restricted credit to settlements supporting the opposing side. By the time armed ships exchanged fire at three route stations in 2407, the same factions had already been fighting through contracts and cargo holds for years.
  PROSE

  prose <<~PROSE, section: :course, heading: "Routes and Embargoes"
    Most fighting followed #{ref :keel, "the Keel"} and the approaches joining surface ports to ring habitats. Third Arc Defense escorted pressure cargo and civilian signals through embargo zones. Vantara protected its stations and contracted convoys, then charged for access to routes its opponents considered common infrastructure. Continuity ministries supplied favored factions while Sithari remained formally open under city law.

    Occupations were usually brief because a route station could be held more easily than supplied. Hinge Six became the best-known case: Third Arc Defense seized the relay to filter embargo traffic, and the station's own keepers shut it down. Similar refusals by dispatchers, repair crews, and receiving ports kept local victories from becoming durable control.
  PROSE

  prose <<~PROSE, section: :limits, heading: "The Neutral Cordons"
    The #{ref :displacement_council, "Displacement Council"} kept Bloom cordons outside the war. It denied staging access to every faction, including forces carrying medicine or claiming pursuit. Gray Line closed its gates on Continuity, Vantara, and Third Arc convoys in turn.

    The rule preserved a shared containment service while other institutions divided. It also made the Council one of the few bodies whose records and personnel remained acceptable to all sides when mediation resumed.
  PROSE

  prose <<~PROSE, section: :aftermath, heading: "The Settlement of 2423"
    By 2423 no faction could secure the routes it needed without agreements with former opponents. Member governments transferred convoy guarantees, docking recognition, and dispute records into the new #{ref :tempered_accord, "Tempered Accord"}. Third Arc Defense dissolved; Vantara accepted common mediation for route claims; Sithari placed the Accord offices outside the Continuity's executive grounds.

    The fighting stopped through linked settlements rather than one surrender. Some embargo claims and losses remain unresolved. Accord panels still encounter contracts whose parties date their obligations from different closures during the war.
  PROSE
end

moment :bitter_reach_begins, year: 2407, of: :the_bitter_reach do
  prose "Three armed route seizures in 2407 joined years of embargoes and supply disputes into the conflict named the Bitter Reach."
  effects { set :the_bitter_reach, standing: :active }
end
moment :bitter_reach_ends, year: 2423, of: :the_bitter_reach do
  prose "The linked settlements of 2423 ended organized fighting and transferred shared route disputes into the Tempered Accord."
  effects { set :the_bitter_reach, standing: :ended }
end

relate :rel_third_arc_participated_bitter_reach, :participated_in, :third_arc_defense, :the_bitter_reach do
  prose "Third Arc Defense escorted outer-hab cargo and occupied contested signal junctions."
end
relate :rel_vantara_participated_bitter_reach, :participated_in, :vantara, :the_bitter_reach do
  prose "Vantara defended its trade stations, convoys, and claim to charge for the routes they supported."
end
relate :rel_continuity_participated_bitter_reach, :participated_in, :the_continuity, :the_bitter_reach do
  prose "Continuity governments used credit, logistics, and institutional access to support favored combatants while Sithari remained formally neutral."
end
relate :rel_bitter_reach_manifested_keel, :manifests_at, :the_bitter_reach, :keel do
  prose "Embargoes and route occupations concentrated along the Keel and its surface approaches."
end
relate :rel_bitter_reach_caused_tempered_accord, :caused, :the_bitter_reach, :tempered_accord do
  prose "Exhaustion and mutual dependence at the end of the war produced the Tempered Accord's mediation framework."
end
