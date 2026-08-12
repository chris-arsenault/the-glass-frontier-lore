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
  require_fact_cards! from: :renowned, minimum: 4

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

  extend_kind :culture do
    relation_field :joined_with, relation: :symbiotic_with, cardinality: :many,
                                 label: "Joined With", expected: false
  end

  extend_subkind :concept, :physical_system do
    field :composition, type: :text, expected: false
    field :principal_risk, type: :text, label: "Principal Risk", expected: false
  end

  extend_subkind :concept, :doctrine do
    field :claim, type: :text, expected: false
    field :visible_expression, type: :text, label: "Visible Expression", expected: false
  end

  extend_subkind :concept, :technology do
    field :form, type: :text, expected: false
    field :operating_limit, type: :text, label: "Operating Limit", expected: false
  end

  extend_subkind :culture, :way_of_life do
    field :population, type: :text, expected: false
    field :governing_interface, type: :text, label: "Governing Interface", expected: false
  end

  extend_subkind :era, :historical_period do
    field :defining_change, type: :text, label: "Defining Change", expected: false
    field :governing_order, type: :text, label: "Governing Order", expected: false
  end

  extend_subkind :faction, :governing_intelligence do
    field :model_of_person, type: :text, label: "Model of a Person", expected: false
    field :measure_of_success, type: :text, label: "Measure of Success", expected: false
  end

  extend_subkind :geographic_location, :region do
    field :landscape, type: :text, expected: false
    field :defining_system, type: :text, label: "Defining System", expected: false
  end

  extend_subkind :geographic_location, :frontier do
    field :setting, type: :text, expected: false
    field :primary_work, type: :text, label: "Primary Work", expected: false
    field :principal_hazard, type: :text, label: "Principal Hazard", expected: false
  end

  extend_subkind :geographic_location, :world_region do
    field :form, type: :text, expected: false
    field :population_pattern, type: :text, label: "Population", expected: false
  end

  extend_subkind :phenomenon, :catastrophe do
    field :extent, type: :text, expected: false
    field :ended, type: :year, expected: false
  end

  extend_subkind :phenomenon, :ecological_phenomenon do
    field :extent, type: :text, expected: false
    field :human_effect, type: :text, label: "Human Effect", expected: false
  end

  extend_subkind :resource, :biological_material do
    field :form, type: :text, expected: false
    field :adoption, type: :text, expected: false
  end

  extend_subkind :resource, :device do
    field :interface, type: :text, expected: false
    field :removal_cost, type: :text, label: "Removal Cost", expected: false
  end

  extend_subkind :resource, :material do
    field :civilizational_uses, type: :text, label: "Civilizational Uses", expected: false
    field :allocation, type: :text, expected: false
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
