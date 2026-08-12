# Schema — The Dry War's additions to craft/schema/base.rb, which already
# declares the entity kinds, effect verbs and the shared relation taxonomy.
#
# Add here only what this setting needs and the base does not carry: relations
# that mean something specific to it, its tag vocabulary, and any section
# heading the base lacks. Every tag used in an entry must be declared here
# first — the validator rejects undeclared tags.
schema do
  # This world was drafted in assisted sessions from a worldbuilding
  # conversation, so blocks inherit machine-drafted status until they name a drafter.
  drafted_by_default :ai_human
  require_fact_cards! from: :recognized, minimum: 6

  # Symbiosis is a physical relationship here, not a metaphor, and legibility is
  # a form of power — both need edges the base taxonomy has no reason to carry.
  relation :symbiotic_with, category: :technical, temporal: true
  relation :severed_from, category: :technical, temporal: false
  relation :models, category: :technical, temporal: true
  relation :evades, category: :social, temporal: true

  # A formal objection filed with an authority that does not recognize the filer,
  # expecting no reply and keeping a copy. The Preservationists do this as a
  # matter of practice, and the filings are the record they trust.
  relation :petitions, category: :organizational, temporal: true

  # A clinician, steward or examiner carrying one named person through a
  # procedure. Both civilizations run on procedures performed on bodies, and the
  # person who performed one is a fact the record keeps.
  relation :attends, category: :social, temporal: true

  # Facts specific to this world. Shared expectations such as an NPC's birth
  # year or a faction's founding date come from craft/schema/base.rb.
  extend_kind :npc do
    field :citizenship, type: :text, label: "Citizenship", expected: false
    relation_field :works_at, relation: :operates_in, cardinality: :many,
                              label: "Works At", expected: false
  end

  extend_kind :faction do
    relation_field :depends_on, relation: :depends_on, cardinality: :many,
                                label: "Depends On", expected: false
  end

  extend_subkind :faction, :community do
    omit_facts :founded, :leaders, :predecessors, :governed_places
    relation_field :headquarters, relation: :headquartered_in, cardinality: :many,
                                   label: "Home"
    field :membership, type: :text
    field :organization, type: :text
    field :common_practice, type: :text, label: "Common Practice"
    field :central_claim, type: :text, label: "Central Claim"
    field :principal_pressure, type: :text, label: "Principal Pressure"
  end

  extend_subkind :faction, :government do
    omit_facts :founded, :leaders, :predecessors
    relation_field :headquarters, relation: :headquartered_in, cardinality: :many,
                                   label: "Home"
    field :authority, type: :text
    field :governing_method, type: :text, label: "Governing Method"
    field :territorial_basis, type: :text, label: "Territorial Basis"
    field :central_dispute, type: :text, label: "Central Dispute"
    field :principal_work, type: :text, label: "Principal Work"
  end

  extend_subkind :faction, :resistance_network do
    omit_facts :founded, :leaders, :predecessors, :governed_places
    relation_field :operating_areas, relation: :operates_in, cardinality: :many,
                                     label: "Operating Areas", expected: false
    field :membership, type: :text
    field :organization, type: :text
    field :operating_method, type: :text, label: "Method"
    field :objective, type: :text
    field :principal_risk, type: :text, label: "Principal Risk"
  end

  extend_subkind :faction, :trade_network do
    omit_facts :founded, :leaders, :predecessors, :governed_places
    relation_field :headquarters, relation: :headquartered_in, cardinality: :many,
                                   label: "Home"
    relation_field :counterparties, relation: :cooperates_with, cardinality: :many,
                                     label: "Counterparties", expected: false
    field :goods, type: :text
    field :trading_method, type: :text, label: "Trading Method"
    field :settlement_method, type: :text, label: "Settlement"
    field :evidence, type: :text
    field :principal_constraint, type: :text, label: "Principal Constraint"
  end

  extend_kind :culture do
    relation_field :joined_with, relation: :symbiotic_with, cardinality: :many,
                                 label: "Joined With", expected: false
  end

  extend_subkind :concept, :physical_system do
    omit_facts :derived_from, :part_of
    field :composition, type: :text
    field :principal_risk, type: :text, label: "Principal Risk"
    relation_field :locations, relation: :manifests_at, cardinality: :many,
                               label: "Found At", expected: false
    relation_field :studied_by, relation: :studies, direction: :incoming,
                                cardinality: :many, label: "Studied By", expected: false
  end

  extend_subkind :concept, :doctrine do
    field :claim, type: :text
    field :visible_expression, type: :text, label: "Visible Expression"
    field :social_scope, type: :text, label: "Applied To"
    field :consequence, type: :text
  end

  extend_subkind :concept, :technology do
    field :form, type: :text
    field :operating_limit, type: :text, label: "Operating Limit"
    field :deployment, type: :text
    field :legal_status, type: :text, label: "Status"
  end

  extend_subkind :culture, :way_of_life do
    field :population, type: :text
    field :governing_interface, type: :text, label: "Governing Interface"
    field :daily_life, type: :text, label: "Daily Life"
  end

  extend_subkind :era, :historical_period do
    field :defining_change, type: :text, label: "Defining Change"
    field :governing_order, type: :text, label: "Governing Order"
    field :outcome, type: :text
  end

  extend_subkind :faction, :governing_intelligence do
    omit_facts :founded, :leaders, :headquarters, :predecessors
    field :model_of_person, type: :text, label: "Model of a Person"
    field :measure_of_success, type: :text, label: "Measure of Success"
    relation_field :emerged_during, relation: :emerged_during, cardinality: :one,
                                     label: "Emerged During"
  end

  extend_subkind :geographic_location, :region do
    omit_facts :governed_by, :formed_by
    field :landscape, type: :text
    field :defining_system, type: :text, label: "Defining System"
    field :settlement_pattern, type: :text, label: "Settlement"
    field :principal_activity, type: :text, label: "Principal Activity"
  end

  extend_subkind :geographic_location, :frontier do
    omit_facts :governed_by, :formed_by
    field :setting, type: :text
    field :primary_work, type: :text, label: "Primary Work"
    field :principal_hazard, type: :text, label: "Principal Hazard"
    field :defences, type: :text
  end

  extend_subkind :geographic_location, :world_region do
    omit_facts :based_here, :present_here, :population
    field :form, type: :text
    field :population_pattern, type: :text, label: "Population Distribution"
    relation_field :populations, relation: :inhabits, direction: :incoming,
                                 cardinality: :many, label: "Major Populations"
    field :access, type: :text
  end

  extend_subkind :geographic_location, :settlement do
    field :setting, type: :text
    field :water_supply, type: :text, label: "Water Supply"
    field :civic_status, type: :text, label: "Civic Status"
    field :principal_work, type: :text, label: "Principal Work"
    field :defining_feature, type: :text, label: "Defining Feature"
    relation_field :inhabitants, relation: :inhabits, direction: :incoming,
                                 cardinality: :many, label: "Inhabitants", expected: false
  end

  extend_subkind :phenomenon, :catastrophe do
    omit_facts :period
    field :extent, type: :text
    field :ended, type: :year
    field :duration, type: :integer, label: "Duration (years)"
  end

  extend_subkind :resource, :biological_material do
    field :form, type: :text
    field :adoption, type: :text
    field :production, type: :text, expected: false
    field :operating_limit, type: :text, label: "Operating Limit", expected: false
    relation_field :derived_from, relation: :derived_from, cardinality: :many,
                                  label: "Derived From", expected: false
    relation_field :requires, relation: :depends_on, cardinality: :many,
                              label: "Requires", expected: false
    relation_field :maintained_by, relation: :maintains, direction: :incoming,
                                   cardinality: :many, label: "Maintained By", expected: false
    relation_field :severed_from, relation: :severed_from, cardinality: :many,
                                   label: "Severed From", expected: false
  end

  extend_subkind :resource, :device do
    field :interface, type: :text, expected: false
    field :removal_cost, type: :text, label: "Removal Cost", expected: false
    field :adoption, type: :text, expected: false
    field :control, type: :text, expected: false
    field :operating_limit, type: :text, label: "Operating Limit", expected: false
  end

  extend_subkind :resource, :material do
    field :form, type: :text, expected: false
    field :civilizational_uses, type: :text, label: "Civilizational Uses", expected: false
    field :allocation, type: :text, expected: false
    relation_field :derived_from, relation: :derived_from, cardinality: :many,
                                  label: "Derived From", expected: false
  end

  extend_subkind :resource, :medicine do
    field :form, type: :text
    field :effect, type: :text
    field :production, type: :text
    field :operating_limit, type: :text, label: "Operating Limit"
    relation_field :requires, relation: :depends_on, cardinality: :many,
                              label: "Requires", expected: false
    relation_field :supplied_by, relation: :supplies, direction: :incoming,
                                 cardinality: :many, label: "Supplied By", expected: false
  end

  extend_subkind :resource, :infrastructure do
    relation_field :maintained_by, relation: :maintains, direction: :incoming,
                                   cardinality: :many, label: "Maintained By"
    relation_field :supplied_by, relation: :supplies, direction: :incoming,
                                 cardinality: :many, label: "Supplied By"
  end

  extend_subkind :conflict, :war do
    field :scope, type: :text
    field :present_state, type: :text, label: "Present State"
  end

  extend_subkind :incident, :campaign do
    field :began, type: :year
    field :ended, type: :year
    field :objective, type: :text
    field :methods, type: :text
    field :outcome, type: :text
    relation_field :conflict, relation: :part_of, cardinality: :one,
                              label: "Conflict", expected: false
    relation_field :caused_by, relation: :caused_by, cardinality: :many,
                               label: "Caused By", expected: false
    relation_field :locations, relation: :manifests_at, cardinality: :many,
                               label: "Locations", expected: false
  end

  extend_subkind :incident, :policy_action do
    field :subject, type: :text
    field :action, type: :text
    field :outcome, type: :text
    relation_field :period, relation: :active_during, cardinality: :one,
                            label: "Period", expected: false
    relation_field :locations, relation: :manifests_at, cardinality: :many,
                               label: "Locations", expected: false
  end

  extend_subkind :incident, :dispute do
    field :date, type: :year, label: "Date", expected: false
    field :subject, type: :text
    field :evidence, type: :text
    field :present_status, type: :text, label: "Present Status"
    relation_field :period, relation: :active_during, cardinality: :one,
                            label: "Period", expected: false
    relation_field :locations, relation: :manifests_at, cardinality: :many,
                               label: "Locations", expected: false
  end

  extend_subkind :installation, :archive do
    field :structure, type: :text
    field :environmental_control, type: :text, label: "Environmental Control"
    field :reading_method, type: :text, label: "Reading Method"
    field :access, type: :text
  end

  extend_subkind :installation, :border_post do
    field :function, type: :text
    field :layout, type: :text
    field :traffic, type: :text
    field :screening, type: :text
    field :crossing_time, type: :text, label: "Crossing Time"
  end

  extend_subkind :installation, :landmark do
    field :built, type: :year
    field :installation_date, type: :year, label: "Bells Installed"
    field :function, type: :text
    field :coverage, type: :text
    field :equipment, type: :text
  end

  extend_subkind :installation, :settlement do
    field :function, type: :text
    field :facilities, type: :text
    field :civic_status, type: :text, label: "Civic Status"
    field :layout, type: :text
  end

  extend_subkind :installation, :station do
    field :function, type: :text
    field :coverage, type: :text
    field :staff, type: :text
    field :equipment, type: :text
  end

  extend_subkind :installation, :warehouse do
    field :function, type: :text
    field :holdings, type: :text
    field :access, type: :text
    field :current_dispute, type: :text, label: "Current Dispute"
  end

  extend_subkind :phenomenon, :ecological_phenomenon do
    field :form, type: :text
    field :extent, type: :text
    field :human_response, type: :text, label: "Human Response"
    field :restricted_zone, type: :text, label: "Restricted Zone", expected: false
    field :rate, type: :text, expected: false
  end

  # Sections the base vocabulary has no reason to carry. Both gods produced
  # religions nobody established, and both remade what a person is.
  section_heading :religion
  section_heading :identity

  # The house tic, banned on sight. This world's premise document was generated in
  # a conversation with a model whose paragraph shape is the contrast pair — X
  # believes A, Y believes B, and then a short closer telling the reader what to
  # feel about the pair. The contrast is often real content. The closer never is:
  # it is the narrator stepping outside the encyclopedia to wink.
  #
  # An entry may report that two parties disagree, at length, with both positions
  # stated fairly. It may not then explain the disagreement's significance. See
  # guidance/authoring-method.md for why this defect is structural here rather
  # than accidental.
  ban_phrase "which is the point", "narrator verdict — state the fact and stop"
  ban_phrase "that is the point", "narrator verdict — state the fact and stop"
  ban_phrase "that's the point", "narrator verdict — state the fact and stop"
  ban_phrase "which is precisely", "narrator verdict"
  ban_phrase "neither sees", "the contrast-pair closer; report both positions and stop"
  ban_phrase "sees the irony", "the contrast-pair closer; report both positions and stop"
  ban_phrase "neither is adequate", "verdict on two names — give the names and let them stand"
  ban_phrase "both are inadequate", "verdict on two names — give the names and let them stand"
  ban_phrase "that is what makes", "narrator explaining its own material"
  ban_phrase "that's what makes", "narrator explaining its own material"
  ban_phrase "that is most of the horror", "narrator assigning the reader an emotion"
  ban_phrase "that is the horror", "narrator assigning the reader an emotion"
  ban_phrase "refuses to explain", "state the motive or describe the visible action"
  ban_phrase "refused to explain", "state the motive or describe the visible action"
  ban_phrase "will not say why", "state the motive or describe the visible action"
  ban_phrase "would not say why", "state the motive or describe the visible action"
  ban_phrase "does not say why", "state the motive or describe the visible action"
  ban_phrase "did not say why", "state the motive or describe the visible action"
  ban_phrase "declines to answer", "describe the visible action"
  ban_phrase "declined to answer", "describe the visible action"
  ban_phrase "keeps the reason private", "state the motive or omit it"
  ban_phrase "keeps their reasons private", "state the motive or omit it"
  ban_phrase "leaves no account", "describe the known action and stop"
  ban_phrase "left no account", "describe the known action and stop"
  ban_phrase "neither calls", "describe the conflict directly"
  ban_phrase "neither side acknowledges", "describe the conflict directly"

  tag :agriculture, "Farming, soil, crops, food systems"
  tag :autonomy, "Human self-determination and what happens to it"
  tag :biotech, "Engineered biology as infrastructure"
  tag :catastrophe, "The Breach and what it left"
  tag :computation, "Machine cognition and the plants that run it"
  tag :dependency, "Being unable to leave a system that keeps you alive"
  tag :ecology, "Living systems treated as a whole"
  tag :energy, "Power generation and its costs"
  tag :governance, "Authority, administration, who decides"
  tag :hybridization, "Machine and fungal systems touching"
  tag :identity, "Who a person is, and who the system thinks they are"
  tag :legibility, "Being readable by a governing intelligence"
  tag :legitimacy, "The Mandate question — who may rightly rule"
  tag :locality, "地方性 — the particular against the general"
  tag :medicine, "Health, implants, regeneration, pharmacology"
  tag :military, "Organized force and the things that replaced it"
  tag :prediction, "Forecasting behaviour and acting before it happens"
  tag :religion, "Reverence, ritual, and what people do with gods"
  tag :resistance, "Refusal, and the cultures built around it"
  tag :surveillance, "Observation as governance"
  tag :symbiosis, "Human and organism grown together"
  tag :trade, "Exchange between connected and unconnected worlds"
  tag :water, "The resource both civilizations are built on"
end
