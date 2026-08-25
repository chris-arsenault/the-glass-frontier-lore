# Schema — the Glass Frontier's additions to craft/schema/base.rb, which
# already declares the entity kinds, effect verbs and the shared relation
# taxonomy. What lives here is what only means something in the Kaleidos
# system: resonance relations, the Adversary's DM edges, the tag vocabulary,
# and the section headings the base does not carry.
schema do
  # This world was drafted in assisted sessions, so a block that does not say
  # who wrote it was written by a machine. `make provenance` reports against
  # this; a block a person writes declares `drafted_by: :human`.
  drafted_by_default :ai
  require_entity_summaries!
  require_descriptive_identities!
  require_fact_cards! from: :renowned, minimum: 4
  require_gm_notes! from: :forgotten, minimum: 1
  require_playable_coverage! :chronicle_location,
                             kinds: location_kinds,
                             except: %i[kaleidos kaleidos_system the_glass_frontier the_sun],
                             exclusive: true
  require_playable_count! :species, minimum: 5, maximum: 8
  require_playable_count! :culture, minimum: 4, maximum: 8
  require_playable_count! :homeland, minimum: 8, maximum: 12
  require_playable_count! :allegiance, minimum: 6, maximum: 10
  require_focus_choices! role: :chronicle_location,
                         minimum: 10,
                         veiled_minimum_locations: 1,
                         veiled_maximum_locations: 4,
                         veiled_majority_location_count: 2,
                         veiled_cross_location_minimum: 1,
                         veiled_required_kinds: %i[
                           ability artifact concept conflict creature culture edict era faction incident
                           npc phenomenon resource rumor species transport
                         ],
                         veiled_require_all_subkinds: true,
                         veiled_kind_minimum: 8,
                         veiled_kind_maximum: 24

  # Resonance is a physical force here, so attunement and sympathy are real
  # edges rather than metaphors. An attunement may describe how the bond
  # shows in practice — its expression — as relationship identity.
  relation :attuned_to, category: :technical, temporal: false do
    identity_key :expression, required: false
  end
  relation :resonates_with, category: :narrative, temporal: false
  extend_relation :terminus_of,
                  domain: location_kinds,
                  range: :installation,
                  description: "The source place is an endpoint of the target route"

  # DM-only. Where the False Form reaches through, and who is avoiding whom.
  relation :hiding_from, category: :dm, temporal: false
  relation :seeping_through, category: :dm, temporal: false

  extend_subkind :concept, :physical_system do
    field :nature, type: :text, expected: false
    field :known_forms, type: :text, label: "Known Forms", expected: false
    field :operating_limit, type: :text, label: "Known Limit", expected: false
  end

  extend_subkind :concept, :reference_concept do
    field :measures, type: :text, expected: false
    field :scale, type: :text, expected: false
    field :excludes, type: :text, expected: false
  end

  extend_subkind :concept, :social_system do
    field :scope, type: :text, expected: false
    field :daily_infrastructure, type: :text, label: "Daily Infrastructure", expected: false
    field :routine_travel, type: :text, label: "Routine Travel", expected: false
    relation_field :depends_on, relation: :depends_on, cardinality: :many,
                                label: "Depends On", expected: false
  end

  extend_subkind :culture, :overview do
    field :organizing_basis, type: :text, label: "Organizing Basis", expected: false
    field :primary_signals, type: :text, label: "Primary Signals", expected: false
    field :major_cultures, type: :entities, label: "Major Cultures", expected: false
  end

  extend_subkind :culture, :naming_practice do
    field :organizing_basis, type: :text, label: "Organizing Basis", expected: false
    field :documented_traditions, type: :integer, label: "Documented Traditions", expected: false
    field :used_by, type: :entities, label: "Used By", expected: false
  end

  extend_subkind :culture, :regional_culture do
    field :homeland, type: :entity, expected: false
    field :formal_register, type: :text, label: "Formal Register", expected: false
    field :aesthetic, type: :text, expected: false
    relation_field :present_at, relation: :manifests_at, cardinality: :many,
                                label: "Present At", expected: false
  end

  extend_subkind :culture, :way_of_life do
    relation_field :origin, relation: :originated_in, cardinality: :one,
                            label: "Origin", expected: false
    relation_field :present_at, relation: :manifests_at, cardinality: :many,
                                label: "Present At", expected: false
  end

  extend_subkind :faction, :government do
    field :mandate, type: :text, expected: false
    field :authority, type: :text, expected: false
  end

  extend_subkind :faction, :civic_body do
    field :mandate, type: :text, expected: false
    field :dissolved, type: :year, expected: false
    field :successors, type: :entities, expected: false
  end

  extend_subkind :geographic_location, :star_system do
    field :planet_count, type: :integer, label: "Planets", expected: false
    field :inner_to_outer_transit, type: :text, label: "Inner-to-Outer Transit", expected: false
  end

  extend_subkind :geographic_location, :world_region do
    field :form, type: :text, expected: false
    field :population_pattern, type: :text, label: "Population", expected: false
    field :principal_hazards, type: :text, label: "Principal Hazards", expected: false
  end

  extend_subkind :geographic_location, :hazardous_zone do
    field :nature, type: :text, expected: false
    field :first_recorded, type: :year, label: "First Recorded", expected: false
    field :containment_status, type: :text, label: "Containment", expected: false
  end

  extend_subkind :geographic_location, :frontier do
    field :setting, type: :text, expected: false
    field :extent, type: :text, expected: false
    field :main_industry, type: :text, label: "Main Industry", expected: false
    field :principal_hazards, type: :text, label: "Principal Hazards", expected: false
  end

  extend_subkind :installation, :settlement do
    field :population_band, type: :text, label: "Population", expected: false
    field :role, type: :text, expected: false
    field :setting, type: :text, expected: false
    field :access, type: :text, expected: false
  end

  extend_subkind :phenomenon, :physical_phenomenon do
    field :medium, type: :text, expected: false
    field :content, type: :text, expected: false
    field :hazard, type: :text, expected: false
  end

  extend_subkind :resource, :material do
    field :grades, type: :text, expected: false
    field :availability, type: :text, expected: false
  end

  extend_subkind :resource, :device do
    field :classes, type: :text, expected: false
    field :operating_environments, type: :text, label: "Operating Environments", expected: false
    field :operating_limit, type: :text, label: "Operating Limit", expected: false
  end

  extend_subkind :species, :sapient_species do
    field :resonance_relation, type: :text, label: "Resonance", expected: false
    identity_key :appearance
    identity_key :senses, required: false
  end

  # Descriptive identity. Bodies say where you grew up; belonging is the trade
  # and its tools; culture supplies the layer under both. Norms live in
  # complete source articles and entities inherit them without copying.
  # Prose rules: guidance/identity.md.
  extend_kind :npc do
    identity_key :appearance
    identity_key :attire, required: false
    identity_key :tools, required: false
    identity_key :manner, required: false
    identity_key :disposition, required: false
    identity_source :species, kinds: :species, subkinds: :sapient_species,
                              keys: :appearance, cardinality: :one, precedence: 1
    identity_source :culture, kinds: :culture, subkinds: %i[regional_culture way_of_life],
                              keys: %i[appearance attire manner], cardinality: :many,
                              required: false, precedence: 2
    identity_source :trade, kinds: :concept, subkinds: :practice,
                            keys: %i[attire tools manner], cardinality: :many,
                            required: false, precedence: 3
  end

  # Scene-anchoring dictionaries for the rest of the atlas. Every key holds
  # compact description a scene can narrate from; all optional, distilled from
  # each entry's own canon. Variety is the premise — no source templates.
  extend_kind :installation do
    identity_key :setting, required: false
    identity_key :activity, required: false
    identity_key :access, required: false
    identity_key :hazards, required: false
  end

  extend_kind :geographic_location do
    identity_key :setting, required: false
    identity_key :activity, required: false
    identity_key :hazards, required: false
  end

  extend_kind :faction do
    identity_key :ideology, required: false
    identity_key :methods, required: false
    identity_key :presence, required: false
    identity_key :attitude, required: false
  end

  extend_kind :transport do
    identity_key :appearance, required: false
    identity_key :aboard, required: false
    identity_key :behavior, required: false
  end

  extend_kind :artifact do
    identity_key :appearance, required: false
    identity_key :handling, required: false
    identity_key :risks, required: false
  end

  extend_kind :creature do
    identity_key :appearance, required: false
    identity_key :behavior, required: false
    identity_key :threat, required: false
  end

  extend_kind :resource do
    identity_key :appearance, required: false
    identity_key :working, required: false
    identity_key :risks, required: false
  end

  extend_kind :ability do
    identity_key :signs, required: false
    identity_key :effect, required: false
    identity_key :limits, required: false
  end

  extend_kind :phenomenon do
    identity_key :signs, required: false
    identity_key :effects, required: false
    identity_key :hazards, required: false
  end

  extend_kind :incident do
    identity_key :marks, required: false
    identity_key :stakes, required: false
  end

  extend_kind :conflict do
    identity_key :cause, required: false
    identity_key :intensity, required: false
    identity_key :conduct, required: false
  end

  # Relationship identity: the texture of an edge, for the verbs that carry
  # scene tension. Authored on instances where an entry's tension lives.
  extend_relation :participated_in do
    identity_key :aims, required: false
    identity_key :conduct, required: false
    identity_key :cost, required: false
  end

  extend_relation :cooperates_with do
    identity_key :basis, required: false
    identity_key :limits, required: false
  end

  extend_relation :supplies do
    identity_key :terms, required: false
    identity_key :dependence, required: false
  end

  extend_relation :member_of do
    identity_key :standing, required: false
  end

  extend_relation :employed_by do
    identity_key :standing, required: false
  end

  extend_relation :governs do
    identity_key :basis, required: false
    identity_key :reach, required: false
    identity_key :legitimacy, required: false
    identity_key :resistance, required: false
  end

  extend_relation :regulates do
    identity_key :reach, required: false
    identity_key :enforcement, required: false
  end

  extend_relation :depends_on do
    identity_key :exposure, required: false
  end

  extend_subkind :culture, :regional_culture do
    identity_key :appearance, required: false
    identity_key :attire, required: false
    identity_key :manner, required: false
    identity_key :hospitality, required: false
  end

  extend_subkind :culture, :way_of_life do
    identity_key :appearance, required: false
    identity_key :attire, required: false
    identity_key :manner, required: false
    identity_key :hospitality, required: false
  end

  extend_subkind :concept, :practice do
    identity_key :attire, required: false
    identity_key :tools, required: false
    identity_key :manner, required: false
  end

  %i[ability artifact concept conflict creature culture edict era faction
     geographic_location incident installation loop phenomenon resource rumor
     species theme thread transport].each do |sourceless_kind|
    extend_kind(sourceless_kind) { no_identity_sources }
  end

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

# Fixed chart coordinates. The system frame uses orbital rank rather than a
# physical distance; its angles separate bodies on a readable present-day map
# and do not imply orbital mechanics. Surface frames use ordinary degrees.
spatial_frame :kaleidos_system_chart,
              origin: :the_sun,
              coordinates: :polar,
              radial_unit: :orbit_rank

spatial_frame :kaleidos_surface,
              origin: :kaleidos,
              parent: :kaleidos_system_chart,
              coordinates: :surface,
              prime_meridian: :sithari

spatial_frame :ashvane_surface,
              origin: :ashvane,
              parent: :kaleidos_system_chart,
              coordinates: :surface,
              prime_meridian: :shadewell
