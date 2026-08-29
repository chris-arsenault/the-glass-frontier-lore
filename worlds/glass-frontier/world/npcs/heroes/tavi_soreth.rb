npc :tavi_soreth do
  name "Tavi Soreth"
  summary "Tavi Soreth is an Underlayers route surveyor and rescue coordinator for the Lower Routes Cooperative."
  subkind :specialist
  born 2387
  occupation "Route surveyor and rescue coordinator"
  specialty "Changing spatial connections in Sithari's Underlayers"
  type_of :orcs
  belongs_to :culture, :sitharian_culture
  descriptive_identity disposition:
    "Soreth's first question is what must reach the far end — a person, a " \
    "cart, a litter, a hose that cannot turn a tight corner — and the " \
    "answer decides which approach they will open. They ask for the " \
    "residents' plans before unpacking an instrument."
  tags :surface, :resonance, :navigation, :danger
  prominence :recognized

  prose <<~PROSE
    A Sitharian #{encyclopedia_ref :orcs, "orc"} who surveys changing routes in the #{ref :underlayers, "Underlayers"}. Tavi Soreth coordinates the long descents for the #{ref :lower_routes_cooperative, "Lower Routes Cooperative"} and takes command at fixed shafts when a field shift separates residents from their usual exits.

    Soreth grew up above a freight hall in the lower city. Their first paid work was carrying repair orders between workshops whose routes changed faster than the municipal directory. They learned the painted bands, the fixed shafts, and the difference between a resident's shortcut and an approach safe enough for a stretcher. The Cooperative hired them as a survey witness before they were old enough to lead a pair.
  PROSE
  prose <<~PROSE, section: :operations, heading: "Reading a Route"
    Soreth begins by asking what must reach the destination: one person, a cart, an air bottle, a rescue litter, or a fire hose that cannot turn a tight corner. They then choose an approach and its test points.

    At each old frame, Soreth sights along both edges for a doubled reflection and strikes the nearest rail with a padded hammer. A clean corridor returns one decay. Two spaces answering through the same opening produce a second tail, sometimes too low to hear without touching the rail. Soreth records both before consulting the Tuner's instruments. The order matters because a strong reading can make a surveyor interpret every ordinary flaw as evidence of a shift.

    Their field book is organized by fixed shaft and destination, with discarded approaches left visible beneath the current one. Soreth can trace a recurring connection through decades of survey hands because each crew marks why it rejected a path. They do not erase routes that have vanished. The Underlayers has returned too many of them.
  PROSE
  prose <<~PROSE, section: :history, heading: "Nine Houses Cut Off"
    In 2418 a utility retuning changed the approaches to nine houses below the marked limit. The municipal map continued directing responders through a corridor that now opened into an empty cistern. Soreth, then a survey-pair lead, recognized a painted water band visible through a sealed storeroom on the opposite side of the block. The wall had covered an earlier public stair.

    The Cooperative opened the storeroom, reached the houses, and kept the old stair as a second exit. Every resident remained in the block. The incident led the city to add fixed-shaft information to emergency dispatch and put Soreth on the Cooperative's rescue roster.

    It also left Soreth suspicious of clean replacements for layered records. The municipal model had removed the buried stair because it was no longer part of the legal building. Residents had kept it in hand-drawn plans because their grandparents used it. Both records were accurate for their purpose; only one still offered a route.
  PROSE
  prose <<~PROSE, section: :relationships, heading: "Tuners and Stewards"
    Soreth is not a #{encyclopedia_ref :tuners, "Tuner"}. They can recognize repeated physical signs and use a #{encyclopedia_ref :tuning_compass, "tuning compass"} against a known reading, but they cannot distinguish every change in the field. On a deep survey the Clarisant Tuner decides whether an opening is stable enough to enter. Soreth decides whether the route can serve the people waiting on the other side.

    Building stewards trust Soreth because they ask for local plans before unpacking instruments. City engineers find the same habit slow. Soreth has stopped more surveys over an unrecorded bedroom, water line, or refuge room than over a resonance reading. In the occupied Underlayers, the contents of a wall matter as much as the geometry behind it.
  PROSE
  prose <<~PROSE, section: :present_day, heading: "Present Day"
    Soreth is leading repeated surveys of a route beside the #{ref :folded_annex, "Folded Annex"}. Its reflections, echo decay, and compass pull have held through several changes in city load, but the approach passes beneath a housing block that has no deep-foundation survey. Soreth will not move equipment through until the residents' plans and the city's structural record agree on what lies between.
  PROSE

  gm_note :appears, "Soreth's first question is what has to reach the far end — one person, a cart, an air bottle, a rescue litter, a hose that cannot turn a tight corner — and the answer decides which approach they will open. Walking crews get routes a stretcher party would be refused."
  gm_note :triggered_by, "Offering an instrument reading first gets it recorded second. Soreth sights both edges of the frame and strikes the rail before consulting a Tuner, because a strong reading makes a surveyor read every ordinary flaw as evidence of a shift."
  gm_note :complicates, "Soreth stops more surveys over an unrecorded bedroom, water line, or refuge room than over any resonance measurement, and will hold equipment at the shaft until the residents' hand-drawn plans and the city's structural record agree."
end

relate :rel_tavi_located_in_underlayers, :located_in, :tavi_soreth, :underlayers do
  prose "Tavi Soreth lives and works in the #{ref :underlayers, "Underlayers"}, usually from whichever fixed shaft anchors the current long survey."
end
relate :rel_tavi_member_lower_routes, :member_of, :tavi_soreth, :lower_routes_cooperative, since: 2404 do
  prose "Soreth joined the #{ref :lower_routes_cooperative, "Lower Routes Cooperative"} as a survey witness and now coordinates its long descents."
end
relate :rel_tavi_operates_folded_annex, :operates_in, :tavi_soreth, :folded_annex, since: 2415 do
  prose "Soreth owns the return path on licensed surveys of the #{ref :folded_annex, "Folded Annex"}."
end
