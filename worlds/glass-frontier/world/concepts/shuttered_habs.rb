phenomenon :shuttered_habs do
  name "Shuttered Habs"
  summary "Shuttered habs are sealed ring habitats that refused reconnection during the Rekindling and remain isolated from the wider system."
  subkind :social_condition
  path "player/concepts/shuttered-habs.md"
  status :complete
  reviewed "2026-03-19"
  tags :"ring-hab", :governance, :"social-structure"
  prominence :recognized

  descriptive_identity(
    signs:
      "From outside, a shuttered hab is a hull holding power and " \
      "atmosphere that does not answer hail. Nothing visible separates " \
      "a working council keeping its own company from a community with " \
      "no remaining word for contact.",
    effects:
      "Each sealed door closes over a different answer to generations " \
      "of isolation: societies that prefer their own governance, " \
      "interiors that rewilded into pre-technological life, and at " \
      "least one documented case deep in the Shear whose inhabitants " \
      "changed past the point of ordinary dealings. All of them sit " \
      "outside the Ring Collective, and the Tempered Accord protects " \
      "their refusal whether or not they recognize it.",
    hazards:
      "A breach is actionable against whoever sponsored it, regardless " \
      "of what waits inside — and what waits may be people who kill " \
      "outsiders on sight. Coriolis put a price on forcing a door that " \
      "few will pay twice, yet the political pressure to reclaim " \
      "sealed territory has never fully gone away."
  )

  prose <<~PROSE
    Ring habs that refused reconnection during the Rekindling and remain closed in the present day. The number isn't important — what matters is that they exist, that their reasons vary wildly, and that the system has mostly learned to leave them alone.
  PROSE
  prose <<~PROSE, section: :how_it_works, heading: "Why They Closed"
    Every shuttered hab has its own reason. Some are ideological — communities that developed governance systems during the Signal Famine that depend on isolation, and reconnection would destabilize what they've built. Some are pragmatic — habs that assessed the reconnecting system and decided they were better off without it. Some aren't making a choice at all — they've changed so much that "refusing contact" isn't a decision, it's just what they are now.

    The range is extraordinary:

    At one extreme, there is at least one documented case of accelerated evolution — a hab deep in #{ref :the_shear, "the Shear"} where resonance-influenced biological and cognitive change, sustained over generations in a sealed, saturated environment, has produced inhabitants who appear to have reached a near-godlike state. They do their own thing. People leave them alone because why would you provoke the functionally omnipotent beings next door. That hab isn't shuttered in any meaningful sense — it's operating on a plane that the rest of the system can't meaningfully interact with. Whether any other shuttered hab has undergone similar transformation is unknown. The Shear makes surveying difficult, and most expeditions that get close enough to find out don't come back with clear answers.

    At the other extreme, there are habs that reverted. Garden habs where the environmental controls drifted, the interior rewilded, and the inhabitants adapted by abandoning technology entirely. Tribal communities that are self-sufficient, no longer understand the machinery around them, and consider outsiders demons to be killed on sight. These habs are shuttered because the people inside no longer have the framework to understand what "contact" means.

    Between these extremes: habs with functioning societies that simply prefer isolation. Habs with internal politics that would collapse if exposed to outside influence. Habs with secrets. Habs with nothing to trade and nothing to gain. Each one a different answer to the question of what #{elapsed :the_glassfall, :the_rekindling} of isolation produces.
  PROSE
  prose <<~PROSE, section: :governance, heading: "Sovereignty"
    Under the #{ref :tempered_accord, "Tempered Accord"}, habs can legally refuse contact. This was hard-won. The #{ref :coriolis_breach, "Coriolis Breach"} — a forced-entry incident during the Contested Reach — was the defining argument for hab sovereignty, and the Accord's framers wrote the lesson into the governance structure.

    Sovereignty is not perfectly settled. Many habs operate as micro-nations with their own rules, including local resonance conditions that make outside standards difficult to apply. Connected habs can send delegates to the #{ref :ring_collective, "Ring Collective"}, which represents shared ring-hab interests without governing its members. Shuttered habs remain outside it. The Accord forbids forced entry whether or not a closed community recognizes the institution issuing that protection.
  PROSE
  prose <<~PROSE, section: :perception, heading: "The System's Relationship"
    Mixed. Per community, per individual. Some people pity the shuttered habs. Some fear them. Some respect the choice. Some are angry — resources and territory locked behind doors that won't open while the rest of the system negotiates over scarce space. Some are curious. Some don't think about them at all.

    The ascended habs provoke awe and unease in roughly equal measure. The reverted habs provoke horror and fascination. The quietly isolationist habs provoke mostly indifference — they're not dramatic enough to have opinions about.

    Most communities have learned not to force them open. Coriolis made the cost of that approach vivid enough that few are willing to repeat it — though "few" is not "none," and the political pressure to reclaim shuttered territory has never fully gone away.
  PROSE

  gm_note :appears, "A hab on the party's route holds power and atmosphere and does not answer hail. Behind the door is a working " \
                    "council, a community that no longer has a word for contact, or people who kill outsiders on sight, and nothing outside distinguishes the three."
  gm_note :triggered_by, "When players cut, pry, or talk their way through a sealed hab door, the #{ref :tempered_accord, "Accord"}'s protection applies whether or not the hab recognizes the Accord. The breach is actionable against whoever sponsored the party, regardless of what they find inside."
  gm_note :complicates, "Someone always wants a locked hab opened, so a party with a route in acquires backers before it has a plan. The pressure to reclaim sealed territory outlives every argument against it."
end
