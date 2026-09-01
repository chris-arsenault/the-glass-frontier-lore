encyclopedia :shuttered_habs do
  title "The Shuttered"
  kind :phenomenon
  subkind :social_condition
  status :complete
  log "2026-08-31 — Renamed Shuttered Habs to The Shuttered; the established collective form names the communities by their continuing relationship to contact rather than by a generic habitat label."
  summary "The Shuttered are sealed ring habitats that refused reconnection during the Rekindling and remain isolated from the wider system."
  reviewed "2026-03-19"
  topics :"ring-hab", :governance, :"social-structure"
  prevalence :rare
  appears_when all: { place: [:sealed_hab] }

  cue "A hab on the route holds power and atmosphere behind sealed access and leaves every hail unanswered."
  cue "External instruments confirm pressure, heat, and working systems; contact status depends on a reply from inside."
  affordance "A verified route into one of the Shuttered draws backers seeking contact, records, resources, or territory, each under the Accord's prohibition on forced entry."
  pressure "A breach is actionable against whoever sponsored it, regardless of what waits inside."
  variation "Some of the Shuttered have functioning societies that prefer isolation or depend on it."
  variation "Some garden habs rewilded and their inhabitants adapted by abandoning technology entirely."

  descriptive_identity(
    signs:
      "From outside, one of the Shuttered is a hull holding power, pressure, " \
      "and heat behind sealed access. Survey instruments establish which " \
      "systems remain active; only a reply from inside establishes contact.",
    effects:
      "Each sealed door closes over a different answer to generations " \
      "of isolation: societies that preserve their own governance, " \
      "garden interiors whose people reorganized around rewilded systems, " \
      "and one documented case deep in the Shear whose inhabitants " \
      "changed beyond ordinary dealings. All of them sit " \
      "outside the Ring Collective, and the Tempered Accord protects " \
      "their refusal even when they do not recognize the institution.",
    hazards:
      "A breach is actionable against whoever sponsored it. Several " \
      "documented communities answered forced entry with lethal resistance, " \
      "and the Coriolis ruling applies even when the closed hab rejects " \
      "the Accord's authority."
  )

  prose <<~PROSE
    The Shuttered are ring habitats that remained sealed through the Rekindling and still refuse or fail to establish contact. External surveys can confirm pressure, heat, and working systems without identifying the society or ecology inside. Each hab therefore carries its own contact record: hails sent, replies received, doors opened by consent, and approaches that ended at the hull.
  PROSE
  prose <<~PROSE, section: :how_it_works, heading: "Why They Closed"
    Some communities developed institutions during the Signal Famine that depend on controlled isolation. Others received Rekindling envoys, assessed the reconnecting system, and closed their doors deliberately. In still others, generations of ecological or cognitive change removed the shared practices needed for ordinary contact.

    One documented hab deep in #{ref :the_shear, "the Shear"} underwent sustained resonance-driven biological and cognitive change. Its surviving survey reports make extraordinary claims without measurements later teams could repeat. The entry route remains closed, and the registry classifies the hab by its contact status rather than treating those claims as established fact.

    In some garden habs, environmental controls drifted and the interior rewilded. Their inhabitants built self-sufficient communities around the changed ecology and stopped maintaining the ring systems around them. Recorded entry attempts at several such habs met immediate armed resistance; the people inside treated the breach itself as an attack.

    Most known examples are functioning societies that restrict outside traffic to preserve their governance, economy, or settlement balance. Their laws range from permanent closure to rare exchanges conducted through one sealed threshold. The category describes the closed relationship with the wider system, rather than a common culture inside.
  PROSE
  prose <<~PROSE, section: :governance, heading: "Sovereignty"
    Under the #{ref :tempered_accord, "Tempered Accord"}, habs can legally refuse contact. The hab-sovereignty provisions adopted after the #{ref :coriolis_breach, "Coriolis Breach"}, a forced-entry incident during the Contested Reach, make sponsors answerable for any unauthorized entry.

    Enforcement remains contested. Many habs operate as independent polities with their own rules, including local resonance conditions that make outside standards difficult to apply. Connected habs can send delegates to the #{ref :ring_collective, "Ring Collective"}, which represents shared ring-hab interests without governing its members. The Shuttered remain outside it. The Accord forbids forced entry even when a closed community does not recognize the institution issuing that protection.
  PROSE
  prose <<~PROSE, section: :perception, heading: "The System's Relationship"
    Open-system interest concentrates on four things: the closed hab's sovereignty, the safety of nearby routes, access to resources and territory behind the hull, and the knowledge carried by a society isolated since the Famine. These interests produce survey expeditions, contact offers, salvage claims, and periodic demands for reclamation.

    The Coriolis Breach established the cost of forced entry and the law that followed it. Most settlements now treat a sealed door as the boundary of a protected polity. Advocates for reclaiming shuttered territory remain active wherever scarce space or a valuable route lies behind one.
  PROSE

end
