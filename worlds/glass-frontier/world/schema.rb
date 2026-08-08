# Schema — the Glass Frontier's additions to craft/schema/base.rb, which
# already declares the entity kinds, effect verbs and the shared relation
# taxonomy. What lives here is what only means something in the Kaleidos
# system: resonance relations, the Adversary's DM edges, the tag vocabulary,
# and the section headings the base does not carry.
schema do
  # Resonance is a physical force here, so attunement and sympathy are real
  # edges rather than metaphors.
  relation :attuned_to, category: :technical, temporal: false
  relation :resonates_with, category: :narrative, temporal: false

  # DM-only. Where the False Form reaches through, and who is avoiding whom.
  relation :hiding_from, category: :dm, temporal: false
  relation :seeping_through, category: :dm, temporal: false

  tag :AI, "Artificial intelligence, custodian systems"
  tag :activism, "Political resistance, reform movements"
  tag :archives, "Record-keeping, history preservation, memory"
  tag :catastrophe, "Destructive events"
  tag :cosmology, "The fundamental order of reality; metaphysics of resonance, the Three Forms, the wider cosmic order"
  tag :danger, "High-risk environment or situation"
  tag :diplomacy, "Inter-faction or inter-settlement negotiation"
  tag :divergence, "Cultural drift between isolated communities"
  tag :ecology, "Environmental stewardship, conservation"
  tag :"fluid-reality", "Physics/reality is loosened or mutable at this location"
  tag :founding, "Origin events, establishment"
  tag :governance, "Political systems, authority structures, law"
  tag :household, "Everyday items, domestic technology"
  tag :isolation, "Signal Famine era disconnection"
  tag :"kinetic-freq", "Mid-band resonance; motion, heat, force"
  tag :legend, "Passed into myth; historicity debated by general population"
  tag :materials, "Physical resources, raw or processed"
  tag :military, "Armed forces, warships, defense"
  tag :music, "Music as cultural or structural force"
  tag :mystery, "Unexplained gaps, unsolved questions, active investigation"
  tag :navigation, "Wayfinding, piloting, route knowledge"
  tag :orbital, "In orbit, the ring, or the Shear"
  tag :origin, "Origin story or inciting incident for current state"
  tag :"outer-system", "Beyond Kaleidos orbit"
  tag :rebuilding, "Reclamation-era reconnection and reconstruction"
  tag :religion, "Belief systems, spiritual practice"
  tag :resonance, "Involves the resonance energy system"
  tag :"ring-era", "Predates the Glassfall; original builder technology"
  tag :"ring-hab", "A habitat on the Glass Frontier ring fragments"
  tag :ringglass, "Involves ringglass as a material or commodity"
  tag :salvage, "Shear salvage operations, scavenging"
  tag :"signal-freq", "High-band resonance; communication, data, memory"
  tag :"social-structure", "Class, caste, citizenship, social hierarchy"
  tag :species, "Intelligent species, biology, racial characteristics"
  tag :"structural-freq", "Low-band resonance; reinforcement, building"
  tag :surface, "Located on Kaleidos's planetary surface"
  tag :trade, "Commerce, supply chains, economics"
  tag :training, "Education, apprenticeship, attunement learning"
  tag :transport, "Ships, trade routes, logistics infrastructure"

  section_heading :resonance
  section_heading :the_third_panel
end
