faction :third_arc_defense do
  name "Third Arc Defense"
  summary "Third Arc Defense was a defense and logistics pact among three outer ring habitats from 2359 until its dissolution in 2423."
  subkind :civic_body
  type_of :compact_authority
  founded 2359
  dissolved 2423
  mandate "Protect outer ring-hab supply routes and civilian communications"
  omit_facts :leaders, :predecessors
  tags :military, :transport, :"signal-freq", :governance
  prominence :recognized
  status :complete

  descriptive_identity(
    ideology:
      "Food and pressure cargo moving between outer ring habs deserved " \
      "armed escort, and a civilian relay belonged to everyone who spoke " \
      "through it, not to whichever power held the station. No member hab " \
      "outranked the other two.",
    methods:
      "Patrol craft, dispatchers, and stores came from each member on its " \
      "own account, under a command that rotated between the three " \
      "delegations — who gave an order depended on the season. After the " \
      "occupation of Hinge Six ended in defeat, the pact worked purely as " \
      "a convoy organization until its dissolution.",
    presence:
      "What remains is paper: escort guarantees still surfacing in " \
      "outer-hab records, and the common files and stores it kept at " \
      "Verathi. The guarantees themselves passed into the Tempered Accord " \
      "when the last members dissolved the pact in 2423."
  )

  prose <<~PROSE
    A defense and logistics pact formed by three outer ring habs during the Contested Reach. Each member supplied patrol craft, dispatchers, and stores; command rotated between their delegations. The pact escorted food and pressure cargo through contested lanes and treated civilian relays as common infrastructure.

    Third Arc Defense became known beyond its members after occupying #{ref :hinge_six, "Hinge Six"} and filtering embargo traffic through the station. Its own keepers shut the relay rather than let the occupation continue. The pact survived that defeat as a convoy organization, fought through the Bitter Reach, and dissolved when its remaining members transferred route guarantees into the Tempered Accord.
  PROSE

  gm_note :appears, "A Third Arc escort guarantee still turns up in outer-hab paperwork; the pact's common records and stores sat at " \
                    "#{ref :verathi, "Verathi"}, and what it had promised passed into the Tempered Accord when the last members " \
                    "dissolved it in 2423."
  gm_note :triggered_by, "Ask who gave an order and the answer depends on the season, because command rotated between three habs' " \
                         "delegations and each supplied its own patrol craft, dispatchers, and stores."
end

relate :rel_third_arc_defense_headquartered_verathi, :headquartered_in, :third_arc_defense, :verathi, since: 2359, till: 2423 do
  prose "Its rotating command kept its common records and stores at #{ref :verathi, "Verathi"}."
end
