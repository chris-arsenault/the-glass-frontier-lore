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
  require_fact_cards! from: :renowned, minimum: 4
  require_gm_notes! from: :forgotten, minimum: 1
  require_encyclopedia_type_kind! atlas_kind: :ability, encyclopedia_kind: :ability
  require_encyclopedia_type_kind! atlas_kind: :phenomenon, encyclopedia_kind: :phenomenon
  require_playable_coverage! :chronicle_location,
                             kinds: location_kinds,
                             except: %i[
                               kaleidos kaleidos_echo_rivers kaleidos_system room_before_the_ice
                               spreading_front the_glass_frontier the_sun
                             ],
                             exclusive: true
  require_context_tags! for_playable: :chronicle_location
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
                           artifact conflict creature edict era faction incident npc rumor transport
                         ],
                         veiled_require_all_subkinds: true,
                         veiled_kind_minimum: 8,
                         veiled_kind_maximum: 64

  extend_encyclopedia_kind :lifeform do
    field :function, type: :text, expected: false
    field :resonance_relation, type: :text, label: "Resonance", expected: false
    field :principal_accommodation, type: :text, label: "Principal Accommodation", expected: false
  end

  extend_encyclopedia_kind :culture do
    classifications :cultural_identity, :social_order, :governance, :belief,
                    :expressive_tradition, :material_life, :work_tradition,
                    :collective_standing
  end

  extend_encyclopedia_kind :role do
    classifications :profession, :office, :community_duty, :social_station,
                    :earned_designation
  end

  extend_encyclopedia_kind :phenomenon do
    field :function, type: :text, expected: false
    field :nature, type: :text, expected: false
    field :known_forms, type: :text, label: "Known Forms", expected: false
    field :operating_limit, type: :text, label: "Known Limit", expected: false
  end

  extend_encyclopedia_kind :ability do
    # The extraordinary classifications express power tiers; the trained ones
    # do not. Both are things a person can deliberately do.
    classifications :resonant_effect, :innate_sensitivity,
                    :technique, :sensory_training, :operational_method, :verification_method
    tier :broad, rank: 1,
                 description: "Broad-band effect with the lowest reach, precision, and cost."
    tier :focused, rank: 2,
                   description: "Reduced-band effect with greater reach, precision, and cost."
    tier :narrow, rank: 3,
                  description: "Narrow-band effect with high reach, precision, and cost."
    tier :apex, rank: 4,
                description: "Single-wavelength effect at the highest power and lasting cost."
  end

  # Placement vocabulary: properties of a place, then functions a place
  # serves. Encyclopedia availability selects over these; every tag below is
  # justified by entries that need it, none by speculation.

  # Physical properties.
  context_tag :surface,
              "Open ground and built places on a planetary surface.",
              scopes: :place
  context_tag :orbital,
              "Places reached and sustained in orbit or free space.",
              scopes: :place
  context_tag :outer_system,
              "Worlds, stations, and routes beyond the central ring region.",
              scopes: :place
  context_tag :sealed_hab,
              "Enclosed living space with managed air and structure: ring habitats, sealed stations, shuttered decks.",
              scopes: :place
  context_tag :hot,
              "Dangerous heat, charged dust, or open thermal industry.",
              scopes: :place
  context_tag :cold,
              "Deep cold: ice routes, unheated hulls, freezing storage.",
              scopes: :place
  context_tag :waterway,
              "Rivers, channels, deltas, and the working spaces on and beside them.",
              scopes: :place
  context_tag :debris_field,
              "Ring debris and the salvage regions and routes threading it.",
              scopes: :place
  context_tag :bloom_adjacent,
              "Within reach of a Bloom Zone boundary and its cordon discipline.",
              scopes: :place
  context_tag :ringglass_rich,
              "Ground, water, or structure carrying concentrated ringglass.",
              scopes: :place
  context_tag :displacement_zone,
              "Places where rooms and passages shift, open wrongly, or shed contents.",
              scopes: :place
  context_tag :garden,
              "Cultivated growing space: garden habitats, graft networks, farm settlements.",
              scopes: :place
  context_tag :unstable_route,
              "Roads and passages that move, decay, or lose their markers.",
              scopes: :place
  context_tag :damaged_signal,
              "Broken relays, dead beacons, and corrupted transmission lines.",
              scopes: :place
  context_tag :urban,
              "Dense settled fabric: packed streets, shared walls, drains, crowds.",
              scopes: :place

  # Place functions.
  context_tag :dock,
              "Berths, moorings, and transfer floors where vessels load and unload.",
              scopes: :place
  context_tag :yard,
              "Industrial working ground: rigging yards, workshops, refineries, cutting floors.",
              scopes: :place
  context_tag :archive,
              "Rooms and institutions that keep records under custody.",
              scopes: :place
  context_tag :market,
              "Exchanges, trade floors, and the public rooms where goods change hands.",
              scopes: :place
  context_tag :road,
              "Freight and passenger routes and the stops that serve them.",
              scopes: :place
  context_tag :cordon,
              "Watched hazard boundaries and the posts that hold them.",
              scopes: :place

  # Resonance is a physical force here, so attunement and sympathy are real
  # edges rather than metaphors.
  relation :attuned_to, category: :technical, temporal: false
  relation :resonates_with, category: :narrative, temporal: false
  extend_relation :terminus_of,
                  domain: location_kinds,
                  range: :installation,
                  description: "The source place is an endpoint of the target route"
  extend_relation :bears,
                  domain: :npc,
                  range: :ability,
                  description: "A person who currently or formerly bears a named mantle"

  # DM-only. Where the False Form reaches through, and who is avoiding whom.
  relation :hiding_from, category: :dm, temporal: false
  relation :seeping_through, category: :dm, temporal: false

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

  # Descriptive identity is local to each Atlas entity. Classification does
  # not copy values from Encyclopedia entries.
  extend_kind :npc do
    identity_key :appearance
    identity_key :attire
    identity_key :tools
    identity_key :manner
    identity_key :disposition
  end

  # Scene-anchoring dictionaries for the rest of the atlas. Every key holds
  # compact description a scene can narrate from; all optional, distilled from
  # each entry's own canon. Variety is the premise — no source templates.
  extend_kind :installation do
    identity_key :setting
    identity_key :activity
    identity_key :access
    identity_key :hazards
  end

  extend_kind :geographic_location do
    identity_key :setting
    identity_key :activity
    identity_key :hazards
  end

  extend_kind :faction do
    identity_key :ideology
    identity_key :methods
    identity_key :presence
    identity_key :attitude
  end

  extend_kind :transport do
    identity_key :appearance
    identity_key :aboard
    identity_key :behavior
  end

  extend_kind :artifact do
    identity_key :appearance
    identity_key :handling
    identity_key :risks
  end

  extend_kind :creature do
    identity_key :appearance
    identity_key :behavior
    identity_key :threat
  end

  extend_kind :resource do
    identity_key :appearance
    identity_key :working
    identity_key :risks
  end

  extend_kind :ability do
    subkind :the_three, label: "Faith — The Three"
    subkind :the_adversary, label: "Shadow — The Adversary"
    identity_key :signs
    identity_key :effect
    identity_key :limits
  end

  extend_kind :phenomenon do
    identity_key :signs
    identity_key :effects
    identity_key :hazards
  end

  extend_kind :incident do
    identity_key :marks
    identity_key :stakes
  end

  extend_kind :conflict do
    identity_key :cause
    identity_key :intensity
    identity_key :conduct
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

  # Glass Frontier has completed the Atlas/Encyclopedia split. Other worlds
  # may continue using the shared species, culture, and concept definitions
  # until their own migrations are complete.
  restrict_entity_kinds! to: %i[
    ability artifact conflict creature edict era faction geographic_location incident installation
    npc phenomenon resource rumor transport loop theme thread
  ]
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
