# The schema every world in this repository builds on: entity kinds, effect
# verbs, and the relation taxonomy. Loaded before a world's own schema.rb, which
# adds the setting-specific parts — tags, section headings, and any relation the
# base taxonomy does not carry.
#
# A relation belongs here when the concept survives a change of setting
# (`located_in`, `governs`, `caused`). A relation that only means something
# inside one world belongs in that world's schema.rb.
#
# Kinds are grouped in craft/graph-topology.md: world atlas (named things),
# player reference (general knowledge), structural (engine mechanics).
schema do
  require_explicit_subkinds!

  encyclopedia_type :lifeform,
                    description: "A reusable kind of living or anomalously living organism." do
    field :origin, type: :text, expected: false
    field :biology, type: :text, expected: false
    field :lifespan, type: :text, expected: false
    identity_key :appearance
    identity_key :behavior
    identity_key :threat
    identity_key :senses
    identity_key :working
    identity_key :risks
  end
  encyclopedia_type :culture,
                    description: "Distributed learned traditions, norms, and material life." do
    field :integration, type: :text, expected: false
    field :formal_register, type: :text, label: "Formal Register", expected: false
    field :aesthetic, type: :text, expected: false
    identity_key :appearance
    identity_key :attire
    identity_key :manner
    identity_key :hospitality
  end
  encyclopedia_type :role,
                    description: "An ordinary unnamed person defined by work or social function." do
    identity_key :attire
    identity_key :tools
    identity_key :manner
  end
  encyclopedia_type :practice,
                    description: "A discrete learned technique or action a person can perform." do
    field :function, type: :text, expected: false
    identity_key :attire
    identity_key :tools
    identity_key :manner
    identity_key :signs
    identity_key :effect
    identity_key :limits
  end
  encyclopedia_type :doctrine,
                    description: "A reusable belief, rule, measure, prohibition, or interpretive framework." do
    field :function, type: :text, expected: false
    identity_key :tenets
    identity_key :obligations
    identity_key :prohibitions
    identity_key :interpretation
  end
  encyclopedia_type :ability,
                    description: "A discrete extraordinary effect expressed at one or more ordered power tiers." do
    field :function, type: :text, expected: false
    identity_key :signs
    identity_key :effect
    identity_key :limits
  end
  encyclopedia_type :institution,
                    description: "A reusable form of organized membership, authority, or mutual obligation."
  encyclopedia_type :technology,
                    description: "A reusable designed device, tool, vehicle, instrument, or technical system." do
    field :function, type: :text, expected: false
    field :classes, type: :text, expected: false
    field :operating_environments, type: :text, label: "Operating Environments", expected: false
    field :operating_limit, type: :text, label: "Operating Limit", expected: false
    field :capacity, type: :text, expected: false
    identity_key :appearance
    identity_key :working
    identity_key :risks
    identity_key :aboard
    identity_key :behavior
    identity_key :handling
  end
  encyclopedia_type :resource,
                    description: "A reusable material, commodity, food, medicine, fuel, or useful body of data." do
    field :function, type: :text, expected: false
    field :grades, type: :text, expected: false
    field :availability, type: :text, expected: false
    identity_key :appearance
    identity_key :working
    identity_key :risks
  end
  encyclopedia_type :phenomenon,
                    description: "A recurring physical, ecological, weather, social, or anomalous condition." do
    field :medium, type: :text, expected: false
    field :content, type: :text, expected: false
    field :hazard, type: :text, expected: false
    identity_key :signs
    identity_key :effects
    identity_key :hazards
  end
  encyclopedia_type :place_feature,
                    description: "A recurring component or arrangement of a place that can enter a scene."

  entity_type :ability, :artifact, :concept, :conflict, :creature, :culture, :era, :faction,
              :geographic_location, :incident, :installation, :npc, :phenomenon, :resource,
              :rumor, :species, :transport, :edict
  entity_type :loop, :theme, :thread, wiki: false

  location_kind :geographic_location, :installation
  playable_role :species, "Player ancestry or bodily inheritance"
  playable_role :culture, "Player upbringing and learned customs"
  playable_role :homeland, "Player place of origin"
  playable_role :allegiance, "Player institutional or communal tie"
  playable_role :chronicle_location, "Starting place for a chronicle"

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
  relation :fought_over, category: :causal, temporal: false, domain: :conflict, range: :resource
  relation :originated_in, category: :causal, temporal: false
  relation :participated_in, category: :causal, temporal: false

  # Spatial — where things sit relative to one another.
  relation :adjacent_to, category: :spatial, temporal: false, symmetric: true,
                         domain: %i[geographic_location installation],
                         range: %i[geographic_location installation],
                         description: "Two places share a local boundary or lie directly beside one another" do
    property :frame, type: :frame
    property :bearing_deg, type: :number, minimum: 0, maximum_exclusive: 360,
                           requires: :frame
    property :distance_km, type: :number, minimum_exclusive: 0
  end
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
  relation :succeeded, category: :organizational, temporal: false
  relation :trains, category: :organizational, temporal: true

  # Social — people and what they do with each other.
  relation :carries, category: :social, temporal: true
  relation :commemorates, category: :social, temporal: false
  relation :cooperates_with, category: :social, temporal: true
  relation :inhabits, category: :social, temporal: true
  relation :maintains, category: :social, temporal: true
  relation :bears, category: :social, temporal: true,
                   description: "A current or former bearer holds a named mantle or designation"
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

  # Kind facts are the small, repeated answers readers expect at the top of an
  # entry. They are authored once per kind, extended by a world when needed,
  # and resolved from entry values, dates or selected typed relationships.
  extend_kind :npc do
    field :born, type: :year, label: "Born", expected: false
    calculated :age, from: :born, calculate: :elapsed_years, label: "Age"
    field :occupation, type: :text, label: "Occupation"
    relation_field :based_in, relation: :located_in, cardinality: :many, label: "Based In"
    relation_field :affiliations, relation: :member_of, cardinality: :many,
                                  label: "Affiliations", expected: false
    relation_field :employer, relation: :employed_by, cardinality: :one,
                              label: "Employer", expected: false
  end

  extend_kind :faction do
    field :founded, type: :year, label: "Founded"
    relation_field :leaders, relation: :leads, direction: :incoming,
                             cardinality: :many, label: "Leaders"
    relation_field :headquarters, relation: :headquartered_in, cardinality: :many,
                                   label: "Headquarters"
    relation_field :predecessors, relation: :succeeded, cardinality: :many,
                                  label: "Predecessors"
    relation_field :governed_places, relation: :governs, cardinality: :many,
                                     label: "Governs", expected: false
  end

  extend_kind :geographic_location do
    relation_field :within, relation: :part_of, cardinality: :many, label: "Within"
    relation_field :governed_by, relation: :governs, direction: :incoming,
                                 cardinality: :many, label: "Governed By", expected: false
    relation_field :based_here, relation: :headquartered_in, direction: :incoming,
                                cardinality: :many, label: "Based Here", expected: false
    relation_field :present_here, relation: :manifests_at, direction: :incoming,
                                  cardinality: :many, label: "Present Here", expected: false
    relation_field :formed_by, relation: :caused, direction: :incoming,
                               cardinality: :many, label: "Formed By", expected: false
  end

  extend_kind :installation do
    relation_field :locations, relation: :located_in, cardinality: :many, label: "Locations"
    relation_field :maintained_by, relation: :maintains, direction: :incoming,
                                   cardinality: :many, label: "Maintained By"
    relation_field :built_by, relation: :built, direction: :incoming,
                              cardinality: :many, label: "Built By", expected: false
  end

  extend_kind :culture do
    relation_field :homelands, relation: :inhabits, cardinality: :many, label: "Homelands"
  end

  extend_kind :artifact do
    relation_field :held_by, relation: :possesses, direction: :incoming,
                             cardinality: :many, label: "Held By"
    relation_field :location, relation: :located_in, cardinality: :one,
                              label: "Location", expected: false
  end

  extend_kind :incident do
    field :date, type: :year, label: "Date"
    relation_field :participants, relation: :participated_in, direction: :incoming,
                                  cardinality: :many, label: "Participants"
  end

  extend_kind :conflict do
    calculated :began, calculate: :first_moment_year, type: :year, label: "Began", expected: true
    relation_field :participants, relation: :participated_in, direction: :incoming,
                                  cardinality: :many, label: "Participants"
  end

  # Subkinds refine what a thing is without changing its primary place in the
  # atlas. Their fields follow the kind fields and may replace a broad
  # expectation when it does not fit that narrower class.
  extend_kind :ability do
    field :qualification, type: :text, label: "Qualification", expected: false
    field :succession, type: :text, label: "Succession", expected: true
    field :cost, type: :text, label: "Cost", expected: true
    relation_field :bearers, relation: :bears, direction: :incoming,
                             cardinality: :many, label: "Bearers", expected: false
  end

  extend_kind :artifact do
    subkind :instrument do
      field :function, type: :text, expected: true
    end
    subkind :record do
      field :recorded, type: :year, expected: false
    end
    subkind :relic do
      field :origin_date, type: :year, label: "Origin Date", expected: false
    end
    subkind :machine do
      field :function, type: :text, expected: true
    end
  end

  extend_kind :concept do
    subkind :doctrine do
      relation_field :embodied_by, relation: :embodies, direction: :incoming,
                                   cardinality: :many, label: "Embodied By", expected: false
    end
    subkind :practice do
      relation_field :practitioners, relation: :practiced_by, cardinality: :many,
                                     expected: false
    end
    subkind :technology do
      field :function, type: :text, expected: false
      relation_field :designed_by, relation: :designed, direction: :incoming,
                                  cardinality: :many, label: "Designed By", expected: false
      relation_field :derived_from, relation: :derived_from, cardinality: :many,
                                    label: "Derived From", expected: false
      relation_field :requires, relation: :depends_on, cardinality: :many,
                                label: "Requires", expected: false
      relation_field :maintained_by, relation: :maintains, direction: :incoming,
                                     cardinality: :many, label: "Maintained By", expected: false
      relation_field :introduced_during, relation: :emerged_during, cardinality: :one,
                                         label: "Introduced During", expected: false
    end
    subkind :physical_system do
      field :function, type: :text, expected: false
      relation_field :requires, relation: :depends_on, cardinality: :many,
                                label: "Requires", expected: false
      relation_field :required_by, relation: :depends_on, direction: :incoming,
                                   cardinality: :many, label: "Required By", expected: false
      relation_field :derived_from, relation: :derived_from, cardinality: :many,
                                    label: "Derived From", expected: false
      relation_field :part_of, relation: :part_of, cardinality: :many,
                              label: "Part Of", expected: false
      relation_field :carried_by, relation: :carries, direction: :incoming,
                                  cardinality: :many, label: "Carried By", expected: false
      relation_field :examples, relation: :embodies, direction: :incoming,
                                cardinality: :many, label: "Examples", expected: false
    end
    subkind :social_system
    subkind :reference_concept
  end

  extend_kind :conflict do
    subkind :war do
      relation_field :period, relation: :active_during, cardinality: :one,
                              label: "Period", expected: false
      calculated :began, from: :period, calculate: :anchor_year, type: :year,
                         label: "Began", expected: false
      field :methods, type: :text, label: "Methods", expected: true
      relation_field :cause, relation: :caused, direction: :incoming,
                             cardinality: :many, label: "Caused By", expected: false
      relation_field :fronts, relation: :manifests_at, cardinality: :many,
                              label: "Fronts", expected: false
      relation_field :campaigns, relation: :part_of, direction: :incoming,
                                  cardinality: :many, label: "Campaigns", expected: false
      relation_field :fought_over, relation: :fought_over, cardinality: :many,
                                    label: "Fought Over", expected: false
    end
    subkind :campaign
    subkind :dispute
  end

  extend_kind :creature do
    subkind :animal
    subkind :anomaly
  end

  extend_kind :culture do
    subkind :overview do
      relation_field :homelands, relation: :inhabits, cardinality: :many,
                                  label: "Homelands", expected: false
    end
    subkind :regional_culture
    subkind :way_of_life do
      field :integration, type: :text, label: "Integration", expected: true
      relation_field :depends_on, relation: :depends_on, cardinality: :many,
                                  label: "Depends On", expected: false
    end
    subkind :naming_practice do
      relation_field :homelands, relation: :inhabits, cardinality: :many,
                                  label: "Used In", expected: false
    end
  end

  extend_kind :era do
    subkind :historical_period do
      calculated :period, calculate: :timeline_period, type: :text,
                          label: "Period", expected: true
      calculated :duration, calculate: :timeline_duration, type: :integer,
                            label: "Length (years)", expected: true
      calculated :preceded_by, calculate: :previous_era, type: :entity,
                               label: "Preceded By", expected: false
      calculated :followed_by, calculate: :next_era, type: :entity,
                               label: "Followed By", expected: false
    end
  end

  extend_kind :faction do
    subkind :government
    subkind :governing_intelligence do
      field :founded, type: :year, label: "Founded", expected: false
      field :origin, type: :text, label: "Origin", expected: true
      field :governing_method, type: :text, label: "Governing Method", expected: true
      relation_field :leaders, relation: :leads, direction: :incoming,
                               cardinality: :many, label: "Leaders", expected: false
      relation_field :headquarters, relation: :headquartered_in, cardinality: :many,
                                     label: "Home", expected: false
      relation_field :predecessors, relation: :succeeded, cardinality: :many,
                                    label: "Predecessors", expected: false
      relation_field :governed_places, relation: :governs, cardinality: :many,
                                       label: "Governs", expected: true
    end
    subkind :company
    subkind :civic_body
    subkind :resistance_network do
      relation_field :leaders, relation: :leads, direction: :incoming,
                               cardinality: :many, label: "Leaders", expected: false
      relation_field :headquarters, relation: :headquartered_in, cardinality: :many,
                                     label: "Home", expected: false
      relation_field :predecessors, relation: :succeeded, cardinality: :many,
                                    label: "Predecessors", expected: false
    end
    subkind :community do
      relation_field :leaders, relation: :leads, direction: :incoming,
                               cardinality: :many, label: "Leaders", expected: false
      relation_field :predecessors, relation: :succeeded, cardinality: :many,
                                    label: "Predecessors", expected: false
    end
    subkind :trade_network
    subkind :religious_order
    subkind :research_body
    subkind :mutual_aid do
      relation_field :leaders, relation: :leads, direction: :incoming,
                               cardinality: :many, label: "Leaders", expected: false
      relation_field :headquarters, relation: :headquartered_in, cardinality: :many,
                                     label: "Meeting Place", expected: false
      relation_field :predecessors, relation: :succeeded, cardinality: :many,
                                    label: "Predecessors", expected: false
    end
  end

  extend_kind :geographic_location do
    subkind :star_system do
      relation_field :within, relation: :part_of, cardinality: :many,
                              label: "Within", expected: false
      relation_field :contains, relation: :part_of, direction: :incoming,
                                cardinality: :many, label: "Contains", expected: false
    end
    subkind :celestial_body do
      relation_field :within, relation: :part_of, cardinality: :many,
                              label: "Within", expected: false
    end
    subkind :orbit
    subkind :world_region do
      relation_field :within, relation: :part_of, cardinality: :many,
                              label: "Within", expected: false
      field :population, type: :entity, label: "Population", expected: false
      relation_field :contains, relation: :part_of, direction: :incoming,
                                cardinality: :many, label: "Contains", expected: true
    end
    subkind :region do
      relation_field :active_here, relation: :operates_in, direction: :incoming,
                                   cardinality: :many, label: "Active Here", expected: false
      relation_field :contains, relation: :part_of, direction: :incoming,
                                cardinality: :many, label: "Contains", expected: false
    end
    subkind :settlement do
      field :population, type: :integer, expected: false
    end
    subkind :frontier do
      relation_field :active_here, relation: :operates_in, direction: :incoming,
                                   cardinality: :many, label: "Active Here", expected: false
    end
    subkind :hazardous_zone do
      relation_field :formed_by, relation: :caused, direction: :incoming,
                                 cardinality: :many, label: "Formed By", expected: false
      relation_field :contained_by, relation: :maintains, direction: :incoming,
                                     cardinality: :many, label: "Contained By", expected: false
      relation_field :active_here, relation: :operates_in, direction: :incoming,
                                   cardinality: :many, label: "Active Here", expected: false
    end
  end

  extend_kind :incident do
    subkind :disaster do
      field :duration, type: :text, expected: false
      field :cause_status, type: :text, label: "Cause", expected: false
      relation_field :consequences, relation: :caused, cardinality: :many,
                                    label: "Led To", expected: false
    end
    subkind :campaign do
      field :date, type: :year, label: "Date", expected: false
      relation_field :period, relation: :active_during, cardinality: :one,
                              label: "Period", expected: true
    end
    subkind :policy_action
    subkind :operational_failure
    subkind :dispute
    subkind :discovery
    subkind :founding
    subkind :migration do
      field :scale, type: :text, expected: false
      relation_field :caused_by, relation: :caused_by, cardinality: :many,
                                  label: "Caused By", expected: false
      relation_field :led_to, relation: :caused, cardinality: :many,
                               label: "Led To", expected: false
    end
  end

  extend_kind :installation do
    subkind :settlement do
      field :population, type: :integer, expected: false
    end
    subkind :station
    subkind :workshop do
      field :function, type: :text, expected: true
    end
    subkind :infrastructure do
      field :function, type: :text, expected: true
    end
    subkind :archive do
      field :holdings, type: :text, expected: true
    end
    subkind :clinic do
      field :capacity, type: :integer, expected: false
    end
    subkind :warehouse
    subkind :landmark
    subkind :border_post
  end

  extend_kind :npc do
    subkind :official do
      field :jurisdiction, type: :text, expected: false
    end
    subkind :specialist do
      field :specialty, type: :text, expected: true
    end
    subkind :worker do
      relation_field :workplaces, relation: :operates_in, cardinality: :many,
                                  expected: false
    end
    subkind :leader do
      relation_field :leads, relation: :leads, cardinality: :many, expected: true
    end
    subkind :courier do
      field :route, type: :text, expected: true
    end
    subkind :dissident
  end

  extend_kind :phenomenon do
    field :trigger, type: :text, label: "Trigger", expected: true
    field :effect, type: :text, label: "Effect", expected: true
    field :recurrence, type: :text, label: "Recurrence", expected: true
    field :ending, type: :text, label: "Ending", expected: false
    field :mitigation, type: :text, label: "Mitigation", expected: false
    field :anchor_behavior, type: :text, label: "Anchor Behavior", expected: false
    subkind :physical_phenomenon do
      relation_field :caused_by, relation: :caused, direction: :incoming,
                                  cardinality: :many, label: "Caused By", expected: false
      relation_field :locations, relation: :located_in, cardinality: :many,
                                 label: "Locations", expected: false
      relation_field :carries, relation: :carries, cardinality: :many,
                               label: "Carries", expected: false
    end
    subkind :ecological_phenomenon do
      relation_field :caused_by, relation: :caused, direction: :incoming,
                                  cardinality: :many, label: "Caused By", expected: false
      relation_field :led_to, relation: :caused, cardinality: :many,
                               label: "Led To", expected: false
      relation_field :manifestations, relation: :manifests_at, cardinality: :many,
                                      label: "Known Fronts", expected: false
    end
    subkind :social_condition
    subkind :catastrophe do
      calculated :period, calculate: :timeline_period, type: :text,
                          label: "Period", expected: false
      relation_field :caused_by, relation: :caused, direction: :incoming,
                                  cardinality: :many, label: "Caused By", expected: false
      relation_field :led_to, relation: :caused, cardinality: :many,
                               label: "Led To", expected: false
      relation_field :manifestations, relation: :manifests_at, cardinality: :many,
                                      label: "Recorded At", expected: false
    end
  end

  extend_kind :resource do
    subkind :material do
      field :function, type: :text, expected: false
      relation_field :sources, relation: :sourced_from, cardinality: :many,
                               label: "Sources", expected: false
      relation_field :required_by, relation: :depends_on, direction: :incoming,
                                   cardinality: :many, label: "Required By", expected: false
      relation_field :supplied_by, relation: :supplies, direction: :incoming,
                                   cardinality: :many, label: "Supplied By", expected: false
      relation_field :regulated_by, relation: :regulates, direction: :incoming,
                                    cardinality: :many, label: "Regulated By", expected: false
    end
    subkind :biological_material do
      field :function, type: :text, expected: false
      relation_field :carries, relation: :carries, cardinality: :many,
                                label: "Carries", expected: false
      relation_field :introduced_during, relation: :emerged_during, cardinality: :one,
                                         label: "Introduced During", expected: false
    end
    subkind :device do
      field :function, type: :text, expected: true
      relation_field :requires, relation: :depends_on, cardinality: :many,
                                label: "Requires", expected: false
      relation_field :required_by, relation: :depends_on, direction: :incoming,
                                   cardinality: :many, label: "Required By", expected: false
      relation_field :derived_from, relation: :derived_from, cardinality: :many,
                                    label: "Derived From", expected: false
      relation_field :introduced_during, relation: :emerged_during, cardinality: :one,
                                         label: "Introduced During", expected: false
    end
    subkind :medicine do
      field :use, type: :text, expected: true
    end
    subkind :food
    subkind :data
    subkind :infrastructure do
      field :function, type: :text, expected: true
      relation_field :requires, relation: :depends_on, cardinality: :many,
                                label: "Requires", expected: false
      relation_field :supports, relation: :depends_on, direction: :incoming,
                                cardinality: :many, label: "Supports", expected: false
      relation_field :introduced_during, relation: :emerged_during, cardinality: :one,
                                         label: "Introduced During", expected: false
    end
  end

  extend_kind :species do
    subkind :sapient_species do
      field :origin, type: :text, expected: false
      field :biology, type: :text, expected: false
      field :lifespan, type: :text, expected: false
      relation_field :homelands, relation: :inhabits, cardinality: :many,
                                  label: "Homelands", expected: false
      relation_field :depends_on, relation: :depends_on, cardinality: :many,
                                  label: "Depends On", expected: false
      relation_field :created_by, relation: :created, direction: :incoming,
                                  cardinality: :many, label: "Created By", expected: false
    end
    subkind :overview do
      field :documented_species, type: :integer, label: "Documented Species", expected: false
      field :common_form, type: :text, label: "Common Form", expected: false
      field :origin_theories, type: :text, label: "Origin Theories", expected: false
    end
  end

  extend_kind :transport do
    subkind :route
    subkind :vessel do
      field :capacity, type: :text, expected: false
    end
  end

  extend_kind :loop do
    subkind :narrative_loop
  end

  extend_kind :theme do
    subkind :narrative_theme
  end

  extend_kind :thread do
    subkind :story_thread
  end

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
