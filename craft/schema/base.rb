# The schema every world in this repository builds on: entity kinds, effect
# verbs, and the relation taxonomy. Loaded before a world's own schema.rb, which
# adds the setting-specific parts — tags, section headings, and any relation the
# base taxonomy does not carry.
#
# A relation belongs here when the concept survives a change of setting
# (LOCATED_IN, GOVERNS, CAUSED). A relation that only means something inside one
# world (ATTUNED_TO, SEEPING_THROUGH) belongs in that world's schema.rb.
#
# Kinds are grouped in craft/graph-topology.md: world atlas (named things),
# player reference (general knowledge), structural (engine mechanics).
schema do
  entity_type :ability, :artifact, :concept, :conflict, :creature, :culture, :era, :faction,
              :geographic_location, :incident, :installation, :npc, :phenomenon, :resource,
              :species, :transport
  entity_type :loop, :theme, :thread, wiki: false

  effect :set ; effect :clear ; effect :create ; effect :destroy ; effect :transfer

  # Causal — what brought what about.
  relation :active_during, category: :causal, temporal: false
  relation :caused, category: :causal, temporal: false
  relation :caused_by, category: :causal, temporal: false
  relation :causes, category: :causal, temporal: false
  relation :created, category: :causal, temporal: false
  relation :created_during, category: :causal, temporal: false
  relation :destroyed, category: :causal, temporal: false
  relation :disappeared_during, category: :causal, temporal: false
  relation :emerged_during, category: :causal, temporal: false
  relation :originated_in, category: :causal, temporal: false
  relation :participated_in, category: :causal, temporal: false

  # Spatial — where things sit relative to one another.
  relation :born_in, category: :social, temporal: false
  relation :founded_in, category: :spatial, temporal: false
  relation :headquartered_in, category: :spatial, temporal: true
  relation :hosts, category: :spatial, temporal: true
  relation :inner_of, category: :spatial, temporal: false
  relation :in_orbit_of, category: :spatial, temporal: false
  relation :located_in, category: :spatial, temporal: true
  relation :manifests_at, category: :spatial, temporal: false
  relation :on_surface_of, category: :spatial, temporal: false
  relation :operates_in, category: :spatial, temporal: true
  relation :orbits, category: :spatial, temporal: false
  relation :part_of, category: :spatial, temporal: false
  relation :terminus_of, category: :spatial, temporal: false

  # Organizational — authority, membership, ownership.
  relation :chairs, category: :organizational, temporal: true
  relation :employed_by, category: :organizational, temporal: true
  relation :governed_by, category: :organizational, temporal: true
  relation :governs, category: :organizational, temporal: true
  relation :leads, category: :organizational, temporal: true
  relation :member_of, category: :organizational, temporal: true
  relation :owned_by, category: :organizational, temporal: true
  relation :regulates, category: :organizational, temporal: true
  relation :supplies, category: :organizational, temporal: true
  relation :trains, category: :organizational, temporal: true

  # Social — people and what they do with each other.
  relation :carries, category: :social, temporal: true
  relation :commemorates, category: :social, temporal: false
  relation :cooperates_with, category: :social, temporal: true
  relation :inhabits, category: :social, temporal: true
  relation :maintains, category: :social, temporal: true
  relation :possesses, category: :social, temporal: true
  relation :practiced_by, category: :social, temporal: true
  relation :studies, category: :social, temporal: true
  relation :taught, category: :social, temporal: false

  # Technical — how made things depend on each other.
  relation :built, category: :technical, temporal: false
  relation :conducted_by, category: :technical, temporal: false
  relation :depends_on, category: :technical, temporal: false
  relation :derived_from, category: :technical, temporal: false
  relation :designed, category: :technical, temporal: false
  relation :powers, category: :technical, temporal: false
  relation :sourced_from, category: :technical, temporal: false

  # Composition — derived, never authored. An `#{embed :id}` marker in prose
  # produces one of these, so the graph knows which entries are built from which.
  relation :embeds, category: :narrative, temporal: false

  # Narrative and classification — the structural kinds' scaffolding.
  relation :at_stage, category: :narrative, temporal: false
  relation :embodies, category: :narrative, temporal: false
  relation :fills_beat, category: :narrative, temporal: false
  relation :has_beat, category: :narrative, temporal: false
  relation :has_stage, category: :narrative, temporal: false
  relation :has_archetype, category: :classification, temporal: false

  # Meta — links that are about the record rather than the world.
  relation :extends, category: :meta, temporal: false
  relation :mentions, category: :meta, temporal: false

  # Declared so the validator can reject it by name rather than by silence: a
  # generic "related to" edge carries no meaning the graph can traverse.
  relation :related_to, category: :banned, temporal: false

  # Encyclopedia section headings that any setting would use. A world adds its
  # own for the sections only it has.
  section_heading :access
  section_heading :aesthetics
  section_heading :aftermath
  section_heading :applications
  section_heading :atmosphere
  section_heading :biology
  section_heading :cause
  section_heading :course
  section_heading :culture
  section_heading :dangers
  section_heading :description
  section_heading :economy
  section_heading :function
  section_heading :geography
  section_heading :governance
  section_heading :history
  section_heading :how_it_works
  section_heading :implications
  section_heading :language
  section_heading :legacy
  section_heading :limits
  section_heading :mechanics
  section_heading :naming
  section_heading :operations
  section_heading :origin
  section_heading :people
  section_heading :perception
  section_heading :present_day
  section_heading :public_profile
  section_heading :reference
  section_heading :relationships
  section_heading :resources
  section_heading :significance
  section_heading :sources
  section_heading :structure
  section_heading :tensions
  section_heading :trade
  section_heading :traits
  section_heading :truth
  section_heading :usage_notes
  section_heading :values
end
