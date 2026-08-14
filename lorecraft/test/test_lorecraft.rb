# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
require "minitest/autorun"
require "fileutils"
require "open3"
require "tmpdir"
require "lorecraft"

# A small, well-formed world reused across tests.
def sample_world
  Lorecraft.define do
    schema do
      entity_type :faction, :location, :concept
      entity_type :secret, wiki: false
      relation :controls, category: :spatial, temporal: true,
                          domain: :faction, range: :location, cardinality: :one
      relation :rival_of, category: :social, temporal: true, symmetric: true,
                          exclusive_with: :ally_of
      relation :ally_of, category: :social, temporal: true, symmetric: true
      effect :set; effect :clear; effect :create; effect :destroy
      tag :salvage
      section_heading :history
    end
    timeline do
      era :early, starts: 0, length: 100
      era :late,  length: 100
      now era: :late, year: 50
    end
    location :reach do name "The Reach" end
    location :quarter do name "The Quarter" end
    faction :concord do
      name "The Concord"
      tags :salvage
      prose "Rose from #{ref :reach} crews."
    end
    faction :guild do name "The Guild" end
    genesis :seed, at: { era: :early, year: 10 } do
      effects { set :concord, controls: :reach }
    end
    moment :seizure, at: { era: :late, year: 5 } do
      effects { transfer :controls, from: :reach, to: :quarter, subject: :concord }
    end
  end
end

def fact_world
  Lorecraft.define do
    schema do
      entity_type :person, :place
      relation :lives_in, temporal: true

      extend_kind :person do
        field :born, type: :year
        calculated :age, from: :born, calculate: :elapsed_years
        field :occupation, type: :text
        relation_field :home, relation: :lives_in, cardinality: :one
        subkind :cartographer do
          field :chart_room, type: :text, label: "Chart Room"
        end
      end
    end
    timeline { era :t, starts: 1970, length: 100; now year: 2020 }
    place :harbour do name "Harbour" end
    person :ada do
      name "Ada"
      subkind :cartographer
      born 1980
      occupation "Cartographer"
      chart_room "North loft"
      custom_fact :working_language, "River Cant"
    end
    person :unwritten do name "Unwritten" end
    relate :ada_home, :lives_in, :ada, :harbour
  end
end

class TimelineTest < Minitest::Test
  def setup = @w = sample_world

  def test_year_conversion
    assert_equal 10, @w.timeline.year_for(era: :early, year: 10)
    assert_equal 105, @w.timeline.year_for(era: :late, year: 5)
    assert_equal 150, @w.timeline.year_for(:now)
  end

  def test_era_at
    assert_equal :early, @w.timeline.era_at(50).name
    assert_equal :late, @w.timeline.era_at(150).name
  end

  def test_year_outside_era_raises
    assert_raises(Lorecraft::DefinitionError) { @w.timeline.year_for(era: :early, year: 200) }
  end

  def test_timeline_data_preserves_typed_effect_fields
    data = Lorecraft::Render::Timeline.new(@w).data(entity: :concord)
    seizure = data[:events].find { |event| event[:source] == :seizure && event[:verb] == :set }

    assert_equal 150, data[:generated_at_year]
    assert_equal :concord, data.dig(:entity, :id)
    assert_equal :controls, seizure[:relation]
    assert_equal :quarter, seizure[:target]
    assert_equal 105, seizure[:year]
  end
end

class FoldTest < Minitest::Test
  def setup = @w = sample_world

  def test_state_before_any_effect
    assert_empty @w.at(0).out(:concord, :controls)
  end

  def test_state_after_genesis
    assert_equal [:reach], @w.at(10).out(:concord, :controls)
  end

  def test_transfer_clears_and_sets
    # before seizure: still reach
    assert_equal [:reach], @w.at(era: :late, year: 4).out(:concord, :controls)
    # after seizure: quarter only (transfer = clear reach + set quarter)
    assert_equal [:quarter], @w.at(:now).out(:concord, :controls)
  end

  def test_historical_query_is_stable
    assert_equal [:reach], @w.at(era: :early, year: 50).out(:concord, :controls)
  end

  def test_inverse_traversal
    assert_equal [:concord], @w.at(:now).in(:quarter, :controls)
  end
end

class ExistenceTest < Minitest::Test
  def test_create_and_destroy_bound_existence
    w = Lorecraft.define do
      schema do
        entity_type :thing
        effect :create; effect :destroy
      end
      timeline { era :t, starts: 0, length: 100; now year: 50 }
      thing :widget do name "Widget" end
      genesis :born, at: { year: 10 } do effects { create :widget } end
      moment  :gone, at: { year: 40 } do effects { destroy :widget } end
    end
    refute w.at(5).exists?(:widget)
    assert w.at(20).exists?(:widget)
    refute w.at(45).exists?(:widget)
  end

  def test_use_before_create_is_causality_error
    w = Lorecraft.define do
      schema do
        entity_type :faction, :location
        relation :controls, temporal: true
        effect :set; effect :create
      end
      timeline { era :t, starts: 0, length: 100; now year: 50 }
      faction :f do name "F" end
      location :l do name "L" end
      # create f at 30, but use it at 10 → violation
      genesis :early_use, at: { year: 10 } do effects { set :f, controls: :l } end
      moment :birth, at: { year: 30 } do effects { create :f } end
    end
    problems = w.validate
    assert(problems.any? { |p| p.include?("causality") }, "expected a causality problem, got: #{problems}")
  end
end

class ValidatorTest < Minitest::Test
  def test_clean_world_passes
    assert sample_world.validate!
  end

  def test_unresolved_ref_is_caught
    w = Lorecraft.define do
      schema { entity_type :concept }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :a do name "A"; prose "links to #{ref :nonexistent}" end
    end
    assert(w.validate.any? { |p| p.include?("unknown id nonexistent") })
  end

  def test_unknown_tag_is_caught
    w = Lorecraft.define do
      schema { entity_type :concept; tag :ok }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :a do name "A"; tags :ok, :bogus end
    end
    assert(w.validate.any? { |p| p.include?("tag 'bogus'") })
  end

  def test_static_attr_set_by_effect_is_caught
    w = Lorecraft.define do
      schema do
        entity_type :concept
        effect :set
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :a do name "A" end
      genesis :g, at: { year: 0 } do effects { set :a, prominence: :mythic } end
    end
    assert(w.validate.any? { |p| p.include?("static attribute prominence") })
  end

  def test_cardinality_one_violation_is_caught
    w = Lorecraft.define do
      schema do
        entity_type :faction, :location
        relation :capital, temporal: true, cardinality: :one
        effect :set
      end
      timeline { era :t, starts: 0, length: 100; now year: 50 }
      faction :f do name "F" end
      location :a do name "A" end
      location :b do name "B" end
      genesis :g, at: { year: 0 } do
        effects do
          set :f, capital: :a
          set :f, capital: :b # two live :one edges → violation
        end
      end
    end
    assert(w.validate.any? { |p| p.include?("cardinality") })
  end

  def test_exclusive_relations_caught
    w = Lorecraft.define do
      schema do
        entity_type :faction
        relation :rival_of, temporal: true, symmetric: true, exclusive_with: :ally_of
        relation :ally_of, temporal: true, symmetric: true
        effect :set
      end
      timeline { era :t, starts: 0, length: 100; now year: 50 }
      faction :a do name "A" end
      faction :b do name "B" end
      genesis :g, at: { year: 0 } do
        effects do
          set :a, rival_of: :b
          set :a, ally_of: :b
        end
      end
    end
    assert(w.validate.any? { |p| p.include?("exclusivity") })
  end

  def test_domain_range_violation_caught
    w = Lorecraft.define do
      schema do
        entity_type :faction, :location
        relation :controls, temporal: true, domain: :faction, range: :location
        effect :set
      end
      timeline { era :t, starts: 0, length: 100; now year: 50 }
      faction :f do name "F" end
      location :l do name "L" end
      genesis :g, at: { year: 0 } do effects { set :l, controls: :f } end # reversed
    end
    problems = w.validate
    assert(problems.any? { |p| p.include?("domain") || p.include?("range") })
  end

  def test_declared_banned_relation_is_rejected
    w = Lorecraft.define do
      schema do
        entity_type :concept
        relation :related_to, category: :banned
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :a do name "A" end
      concept :b do name "B" end
      relate :generic_link, :related_to, :a, :b
    end

    assert(w.validate.any? { |p| p.include?("banned relation type related_to") })
  end

  def test_dm_leak_caught
    w = Lorecraft.define do
      schema do
        entity_type :concept
        entity_type :secret, wiki: false
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      secret :hidden do name "Hidden"; dm! end
      concept :public_page do name "Public"; prose "see #{ref :hidden}" end
    end
    assert(w.validate.any? { |p| p.include?("public prose references DM-only") })
  end

  def test_public_authored_page_cannot_reference_dm_entity
    w = Lorecraft.define do
      schema do
        entity_type :concept
        entity_type :secret, wiki: false
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      secret :hidden do name "Hidden"; dm! end
      page :home, title: "Home", audience: :player do
        prose "See #{ref :hidden}."
      end
    end

    assert(w.validate.any? { |p| p.include?("page home: public prose references DM-only") })
  end

  def test_narrative_role_is_limited_to_known_npc_roles
    w = Lorecraft.define do
      schema { entity_type :npc, :concept }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      npc :miscast do name "Miscast"; narrative_role :oracle end
      concept :misplaced do name "Misplaced"; narrative_role :titan end
    end

    problems = w.validate
    assert(problems.any? { |p| p.include?("unknown narrative role :oracle") })
    assert(problems.any? { |p| p.include?("only valid on an npc") })
  end

  def test_relation_to_dm_entity_must_be_dm
    w = Lorecraft.define do
      schema do
        entity_type :concept
        relation :knows, temporal: false
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :public_entry do name "Public" end
      concept :hidden do name "Hidden"; dm! end
      relate :leak, :knows, :public_entry, :hidden
    end

    assert(w.validate.any? { |p| p.include?("relation involving a DM-only entity must use dm: true") })
  end

  def test_authored_cards_require_reader_pages_and_descriptions
    w = Lorecraft.define do
      schema { entity_type :concept; section_heading :relationships }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :shell do name "Shell"; status :shell end
      concept :hidden do name "Hidden"; dm!; prose "Hidden fact." end
      concept :public_page do
        name "Public"
        prose "Visible fact."
        cards "Broken paths" do
          card :missing, "Unknown."
          card :shell, "See #{ref :also_missing}."
          card :hidden, "Secret."
          card :shell, ""
        end
        cards "Empty" do
        end
      end
    end

    problems = w.validate
    assert(problems.any? { |p| p.include?("unknown id missing") })
    assert(problems.any? { |p| p.include?("unknown id also_missing") })
    assert(problems.any? { |p| p.include?("target shell is a shell") })
    assert(problems.any? { |p| p.include?("public card references DM-only entity hidden") })
    assert(problems.any? { |p| p.include?("repeats target shell") })
    assert(problems.any? { |p| p.include?("card to shell has no description") })
    assert(problems.any? { |p| p.include?("card block 'Empty' has no cards") })
  end
end

class EntityFactsTest < Minitest::Test
  def world
    Lorecraft.define do
      schema do
        entity_type :person, :place, :group
        relation :lives_in, temporal: true
        relation :leads, temporal: true
        effect :set

        extend_kind :person do
          field :born, type: :year
          calculated :age, from: :born, calculate: :elapsed_years
          field :occupation, type: :text
          relation_field :home, relation: :lives_in, cardinality: :one
        end
        extend_kind :group do
          relation_field :leaders, relation: :leads, direction: :incoming, cardinality: :many
        end
      end
      timeline { era :t, starts: 1970, length: 100; now year: 2020 }
      place :harbour do name "Harbour" end
      group :guild do name "Guild" end
      person :ada do
        name "Ada"
        born 1980
        occupation "Cartographer"
      end
      genesis :facts, at: { year: 2000 } do
        effects do
          set :ada, lives_in: :harbour
          set :ada, leads: :guild
        end
      end
    end
  end

  def test_kind_extensions_keep_order_and_resolve_attributes_calculations_and_relations
    w = world
    rows = Lorecraft::Facts.new(w).present(w.entity(:ada))

    assert_equal %i[born age occupation home], rows.map { |row| row.definition.name }
    assert_equal [1980, 40, "Cartographer", :harbour], rows.map(&:value)
    leaders = Lorecraft::Facts.new(w).present(w.entity(:guild)).first
    assert_equal [:ada], leaders.value
  end

  def test_expected_missing_facts_are_reported_without_inventing_values
    w = world
    missing = Lorecraft::Facts.new(w).missing(w.entity(:harbour))
    assert_empty missing

    missing_world = Lorecraft.define do
      schema do
        entity_type :person
        extend_kind(:person) { field :born, type: :year; field :occupation, type: :text }
      end
      timeline { era :t, starts: 2000, length: 100; now year: 50 }
      person :unnamed do name "Unnamed" end
    end
    assert_equal %i[born occupation], Lorecraft::Facts.new(missing_world)
                                                       .missing(missing_world.entity(:unnamed))
                                                       .map { |row| row.definition.name }
  end

  def test_fact_values_are_typed_and_entity_targets_resolve
    w = Lorecraft.define do
      schema do
        entity_type :person
        extend_kind :person do
          field :born, type: :year
          field :friend, type: :entity
        end
      end
      timeline { era :t, starts: 2000, length: 100; now year: 50 }
      person :a do name "A"; born "last winter"; friend :missing end
    end

    problems = w.validate
    assert(problems.any? { |problem| problem.include?("unknown date anchor") })
    assert(problems.any? { |problem| problem.include?("fact 'friend' → unknown id missing") })
  end

  def test_player_fact_relations_exclude_dm_edges
    w = Lorecraft.define do
      schema do
        entity_type :person, :group
        relation :member_of, temporal: true
        extend_kind(:person) do
          relation_field :groups, relation: :member_of, cardinality: :many
        end
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      person :member do name "Member" end
      group :public_group do name "Public Group" end
      group :hidden_group do name "Hidden Group" end
      relate :public_membership, :member_of, :member, :public_group
      relate :hidden_membership, :member_of, :member, :hidden_group, dm: true
    end

    facts = Lorecraft::Facts.new(w)
    assert_equal [:public_group], facts.present(w.entity(:member), audience: :player).first.value
    assert_equal %i[hidden_group public_group], facts.present(w.entity(:member)).first.value.sort
  end

  def test_fact_audit_groups_missing_expected_values_by_entry
    report = Lorecraft::FactAudit.new(fact_world).report

    assert_includes report, "person/cartographer: 4/4 expected facts established"
    assert_includes report, "chart_room: 1/1"
    assert_includes report, "person/person: 0/3 expected facts established"
    assert_includes report, "born: 0/1"
    assert_includes report, "occupation: 0/1"
    assert_includes report, "home: 0/1"
    assert_includes report, "    unwritten: born, occupation, home"
    assert_includes report, "=== Prominent Entry Cards ==="
    assert_includes report, "renowned+: 0/0 cards present"
  end

  def test_fact_audit_can_show_one_entrys_resolved_values
    report = Lorecraft::FactAudit.new(fact_world, entity: :ada).report

    assert_includes report, "Entity Facts — Ada (ada)"
    assert_includes report, "born (Born): 1980 [expected]"
    assert_includes report, "age (Age): 40 [optional]"
    assert_includes report, "home (Home): harbour (Harbour) [expected]"
    assert_includes report, "missing expected: none"
    refute_includes report, "unwritten"
  end

  def test_scoped_fact_data_retains_types_and_raw_values
    data = Lorecraft::FactAudit.new(fact_world, entity: :ada).data
    home = data[:facts].find { |fact| fact[:name] == :home }

    assert_equal "entity", data[:scope]
    assert_equal :entity, home[:type]
    assert_equal :harbour, home[:value]
    assert_empty data[:missing_expected]
  end

  def test_subkind_facts_override_kind_facts_in_place_and_custom_facts_append
    w = Lorecraft.define do
      schema do
        entity_type :person do
          field :occupation, type: :text, label: "Occupation"
          subkind :official do
            field :occupation, type: :text, label: "Office", expected: false
            field :jurisdiction, type: :text
          end
        end
      end
      timeline { era :t, starts: 2000, length: 100; now year: 2050 }
      person :clerk do
        name "Clerk"
        subkind :official
        occupation "Registrar"
        jurisdiction "North Ward"
        custom_fact :seal, "Red wax"
      end
    end

    rows = Lorecraft::Facts.new(w).present(w.entity(:clerk))
    assert_equal %i[occupation jurisdiction seal], rows.map { |row| row.definition.name }
    assert_equal ["Office", "Jurisdiction", "Seal"], rows.map { |row| row.definition.label }
  end

  def test_subkind_can_omit_inapplicable_inherited_facts
    w = Lorecraft.define do
      schema do
        entity_type :person do
          field :born, type: :year
          calculated :age, from: :born, calculate: :elapsed_years
          field :occupation, type: :text
          subkind :collective do
            omit_facts :born, :age
            field :membership, type: :integer
          end
        end
      end
      timeline { era :t, starts: 2000, length: 100; now year: 2050 }
      person :council do
        name "Council"
        subkind :collective
        occupation "Government"
        membership 12
      end
    end

    rows = Lorecraft::Facts.new(w).present(w.entity(:council))
    collective = Lorecraft::SchemaInspection.new(w, topic: "kind", name: "person")
                                            .data[:kind][:subkinds]
                                            .find { |subkind| subkind[:name] == :collective }
    assert_equal %i[occupation membership], rows.map { |row| row.definition.name }
    assert_equal %i[text integer], rows.map { |row| row.definition.type }
    assert_equal %i[born age], collective[:omitted_facts]
  end

  def test_subkind_cannot_omit_an_unknown_fact
    error = assert_raises(Lorecraft::DefinitionError) do
      Lorecraft.define do
        schema do
          entity_type(:person) do
            subkind(:official) { omit_facts :rank }
          end
        end
      end
    end

    assert_includes error.message, "cannot omit unknown fact rank"
  end

  def test_world_can_extend_an_existing_subkind
    w = Lorecraft.define do
      schema do
        entity_type(:person) { subkind :official }
        extend_subkind(:person, :official) do
          field :jurisdiction, type: :text
        end
      end
      timeline { era :t, starts: 2000, length: 100; now year: 2050 }
      person :clerk do
        name "Clerk"
        subkind :official
        jurisdiction "North Ward"
      end
    end

    rows = Lorecraft::Facts.new(w).present(w.entity(:clerk))
    assert_equal [:jurisdiction], rows.map { |row| row.definition.name }
    assert_equal ["North Ward"], rows.map(&:value)
  end

  def test_unknown_subkind_cannot_be_extended
    error = assert_raises(Lorecraft::DefinitionError) do
      Lorecraft.define do
        schema do
          entity_type :person
          extend_subkind(:person, :official) { field :jurisdiction, type: :text }
        end
      end
    end

    assert_includes error.message, "unknown subkind official"
  end

  def test_explicit_subkind_requirement_and_unknown_subkind_are_validated
    w = Lorecraft.define do
      schema do
        entity_type(:person) { subkind :official }
        require_explicit_subkinds!
      end
      timeline { era :t, starts: 2000, length: 100; now year: 2050 }
      person :missing do name "Missing" end
      person :wrong do name "Wrong"; subkind :captain end
    end

    problems = w.validate
    assert(problems.any? { |problem| problem.include?("person missing: subkind is required") })
    assert(problems.any? { |problem| problem.include?("unknown subkind 'captain'") })
  end

  def test_moment_backed_incident_uses_its_timeline_year_as_its_date
    w = Lorecraft.define do
      schema do
        entity_type :incident
        extend_kind(:incident) { field :date, type: :year }
      end
      timeline { era :t, starts: 2000, length: 100; now year: 2050 }
      moment :arrival, at: { year: 2012 } do name "Arrival" end
    end

    row = Lorecraft::Facts.new(w).present(w.moments.fetch(:arrival)).first
    assert_equal :date, row.definition.name
    assert_equal 2012, row.value
  end

  def test_era_calculations_resolve_period_and_neighbours_from_the_timeline
    w = Lorecraft.define do
      schema do
        entity_type :era
        extend_kind :era do
          calculated :period, calculate: :timeline_period, type: :text
          calculated :duration, calculate: :timeline_duration, type: :integer
          calculated :preceded_by, calculate: :previous_era, type: :entity
          calculated :followed_by, calculate: :next_era, type: :entity
        end
      end
      timeline do
        era :first, starts: 2000, length: 10
        era :present, length: 20
        now year: 2015
      end
      era :first do name "First" end
      era :present do name "Present" end
    end

    first = Lorecraft::Facts.new(w).present(w.entity(:first))
    present = Lorecraft::Facts.new(w).present(w.entity(:present))

    assert_equal ["2000 CE–2010 CE", 10, :present], first.map(&:value)
    assert_equal ["2010 CE–present", 20, :first], present.map(&:value)
  end

  def test_anchor_year_calculation_uses_an_entity_or_era_fact
    w = Lorecraft.define do
      schema do
        entity_type :conflict, :era
        relation :active_during, temporal: false
        extend_kind :conflict do
          relation_field :period, relation: :active_during, cardinality: :one
          calculated :began, from: :period, calculate: :anchor_year, type: :year
        end
      end
      timeline { era :holding, starts: 2088, length: 12; now year: 2090 }
      era :holding do name "Holding" end
      conflict :war do name "War" end
      relate :war_period, :active_during, :war, :holding
    end

    rows = Lorecraft::Facts.new(w).present(w.entity(:war))
    assert_equal [:holding, 2088], rows.map(&:value)
  end

  def test_elapsed_year_calculation_requires_a_declared_source
    error = assert_raises(Lorecraft::DefinitionError) do
      Lorecraft.define do
        schema do
          entity_type :person
          extend_kind(:person) { calculated :age, calculate: :elapsed_years }
        end
        timeline { era :t, starts: 2000, length: 100; now year: 2050 }
      end
    end

    assert_includes error.message, "needs a source fact"
  end
end

class MarkdownRenderTest < Minitest::Test
  def setup
    @w = sample_world
    @md = Lorecraft::Render::Markdown.new(@w)
  end

  def test_page_has_frontmatter_and_title
    page = @md.page_markdown(@w.entity(:concord))
    assert_match(/\Atitle: The Concord/, page.lines[1])
    assert_includes page, "# The Concord"
    assert_includes page, "tags: [salvage]"
  end

  def test_ref_becomes_relative_link
    page = @md.page_markdown(@w.entity(:concord))
    assert_match(%r{\[The Reach\]\([^)]*reach\.md\)}, page)
  end

  def test_future_marker_renders_as_stub
    w = Lorecraft.define do
      schema { entity_type :concept }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :a do name "A"; prose "the #{future 'Unwritten Thing'} matters" end
    end
    page = Lorecraft::Render::Markdown.new(w).page_markdown(w.entity(:a))
    assert_includes page, "[future:Unwritten Thing]"
  end
end

class SearchTest < Minitest::Test
  def test_search_ranks_titles_and_returns_resolved_summary
    results = Lorecraft::Search.new(sample_world, query: "concord", root: Dir.pwd).results

    assert_equal :concord, results.first.id
    assert_equal :faction, results.first.kind
    assert_includes results.first.summary, "The Reach"
  end

  def test_search_matches_alias_tags_subkind_and_prose
    world = Lorecraft.define do
      schema do
        entity_type :place
        tag :water
        extend_kind(:place) { subkind :reservoir }
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      place :north_pool do
        name "North Pool"
        subkind :reservoir
        aka "Glass Basin"
        tags :water
        prose "Stores the city's winter reserve."
      end
    end

    assert_equal :north_pool, Lorecraft::Search.new(world, query: "Glass Basin").results.first.id
    assert_equal :north_pool, Lorecraft::Search.new(world, query: "water").results.first.id
    assert_equal :north_pool, Lorecraft::Search.new(world, query: "reservoir").results.first.id
    assert_equal :north_pool, Lorecraft::Search.new(world, query: "winter reserve").results.first.id
  end

  def test_player_search_excludes_dm_shell_and_non_reader_entities
    world = Lorecraft.define do
      schema do
        entity_type :concept
        entity_type :secret, wiki: false
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :visible do name "Needle Visible"; prose "A public needle." end
      concept :shell do name "Needle Shell"; status :shell end
      concept :hidden do name "Needle Hidden"; dm!; prose "A hidden needle." end
      secret :mechanic do name "Needle Mechanic"; prose "A structural needle." end
    end

    all = Lorecraft::Search.new(world, query: "needle").results.map(&:id)
    player = Lorecraft::Search.new(world, query: "needle", audience: :player).results.map(&:id)

    assert_equal %i[hidden mechanic shell visible], all.sort
    assert_equal [:visible], player
  end

  def test_search_filters_and_bounds_results
    results = Lorecraft::Search.new(
      sample_world,
      query: "the",
      kind: :location,
      limit: 1,
    ).results

    assert_equal 1, results.size
    assert_equal :location, results.first.kind
  end

  def test_search_data_is_native_and_bounded
    data = Lorecraft::Search.new(sample_world, query: "the", limit: 1).data

    assert_equal "the", data[:query]
    assert_equal 1, data[:count]
    assert_kind_of Hash, data[:results].first
  end
end

class ConnectionsTest < Minitest::Test
  def test_connections_show_incoming_outgoing_and_historical_intervals
    rows = Lorecraft::Connections.new(sample_world, entity: :concord).rows
    reach = rows.find { |row| row.neighbor_id == :reach }
    quarter = rows.find { |row| row.neighbor_id == :quarter }

    assert_equal :outgoing, reach.direction
    assert_equal :controls, reach.relation
    assert_equal [10, 105, false], [reach.from, reach.to, reach.live]
    assert_equal [105, nil, true], [quarter.from, quarter.to, quarter.live]

    incoming = Lorecraft::Connections.new(sample_world, entity: :quarter).rows.first
    assert_equal :incoming, incoming.direction
    assert_equal "The Concord", incoming.neighbor_title
  end

  def test_connections_distinguish_future_from_historical_intervals
    report = Lorecraft::Connections.new(sample_world, entity: :concord, at: 50).report

    assert_includes report, "[10, 105) live"
    assert_includes report, "[105, ∞) future"
  end

  def test_connections_report_neighbor_and_establishing_source
    report = Lorecraft::Connections.new(sample_world, entity: :concord).report

    assert_includes report, "The Quarter"
    assert_includes report, "established by: seizure"
    assert_includes report, "[105, ∞) live"
  end

  def test_connections_include_composition_edges
    world = Lorecraft.define do
      schema { entity_type :concept }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :owner do name "Owner"; prose "Owned words." end
      concept :reader do name "Reader"; prose "Uses #{embed :owner}." end
    end

    row = Lorecraft::Connections.new(world, entity: :reader).rows.first
    assert_equal :embeds, row.relation
    assert_equal :owner, row.neighbor_id
    assert_predicate row, :live
  end

  def test_player_connections_hide_dm_edges_and_neighbors
    world = Lorecraft.define do
      schema do
        entity_type :concept
        relation :knows, temporal: true
        effect :set
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :public_entry do name "Public" end
      concept :hidden_entry do name "Hidden"; dm! end
      genesis :seed, at: { year: 0 }, dm: true do
        effects { set :public_entry, knows: :hidden_entry }
      end
    end

    assert_equal 1, Lorecraft::Connections.new(world, entity: :public_entry).rows.size
    assert_empty Lorecraft::Connections.new(
      world,
      entity: :public_entry,
      audience: :player,
    ).rows
    assert_raises(Lorecraft::Error) do
      Lorecraft::Connections.new(world, entity: :hidden_entry, audience: :player)
    end
  end

  def test_connections_data_includes_entity_and_typed_rows
    data = Lorecraft::Connections.new(sample_world, entity: :concord).data

    assert_equal :concord, data.dig(:entity, :id)
    assert_equal 2, data[:count]
    assert_includes data[:connections].map { |row| row[:relation] }, :controls
  end
end

class PathQueryTest < Minitest::Test
  def test_path_uses_live_edges_and_preserves_canonical_direction
    forward = Lorecraft::PathQuery.new(sample_world, from: :concord, to: :quarter)
    reverse = Lorecraft::PathQuery.new(sample_world, from: :quarter, to: :concord)

    assert_equal 1, forward.steps.size
    assert_equal :outgoing, forward.steps.first.direction
    assert_equal :controls, forward.steps.first.relation
    assert_equal :incoming, reverse.steps.first.direction
    assert_equal :concord, reverse.steps.first.to_id
  end

  def test_path_respects_the_selected_year
    historical = Lorecraft::PathQuery.new(sample_world, from: :concord, to: :reach, at: 50)
    future = Lorecraft::PathQuery.new(sample_world, from: :concord, to: :quarter, at: 50)

    assert historical.data[:found]
    refute future.data[:found]
  end

  def test_path_finds_the_shortest_route_and_honors_the_bound
    world = Lorecraft.define do
      schema do
        entity_type :concept
        relation :touches, temporal: false
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      %i[a b c d e].each { |id| concept(id) { name id.to_s.upcase } }
      relate :ab, :touches, :a, :b
      relate :bc, :touches, :b, :c
      relate :ad, :touches, :a, :d
      relate :de, :touches, :d, :e
      relate :ec, :touches, :e, :c
    end

    path = Lorecraft::PathQuery.new(world, from: :a, to: :c)
    bounded = Lorecraft::PathQuery.new(world, from: :a, to: :c, max_hops: 1)

    assert_equal %i[b c], path.steps.map(&:to_id)
    refute bounded.data[:found]
  end

  def test_path_excludes_bookkeeping_shortcuts
    world = Lorecraft.define do
      schema do
        entity_type :concept, :era
        relation :active_during, temporal: false
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :a do name "A" end
      concept :b do name "B" end
      era :period do name "Period" end
      relate :a_period, :active_during, :a, :period
      relate :b_period, :active_during, :b, :period
    end

    refute Lorecraft::PathQuery.new(world, from: :a, to: :b).data[:found]
  end

  def test_path_data_is_structured
    data = Lorecraft::PathQuery.new(sample_world, from: :concord, to: :quarter).data

    assert data[:found]
    assert_equal 1, data[:hop_count]
    assert_equal :concord, data[:steps].first[:canonical_subject]
    assert_equal :quarter, data[:steps].first[:canonical_target]
  end
end

class SchemaInspectionTest < Minitest::Test
  def test_kind_list_reports_reader_status_and_shape_counts
    kinds = Lorecraft::SchemaInspection.new(fact_world, topic: "kinds").data[:kinds]
    person = kinds.find { |kind| kind[:name] == :person }

    assert person[:reader]
    assert_equal 2, person[:subkind_count]
    assert_equal 4, person[:fact_count]
  end

  def test_kind_detail_exposes_fact_and_subkind_contracts
    detail = Lorecraft::SchemaInspection.new(
      fact_world,
      topic: "kind",
      name: "person",
    ).data[:kind]
    age = detail[:facts].find { |fact| fact[:name] == :age }
    cartographer = detail[:subkinds].find { |subkind| subkind[:name] == :cartographer }

    assert_equal :calculated, age[:source]
    assert_equal :elapsed_years, age[:calculate]
    assert_equal :born, age[:from]
    assert_includes cartographer[:resolved_facts].map { |fact| fact[:name] }, :chart_room
  end

  def test_relation_detail_exposes_validation_constraints
    detail = Lorecraft::SchemaInspection.new(
      sample_world,
      topic: "relation",
      name: "controls",
    ).data[:relation]

    assert_equal :spatial, detail[:category]
    assert detail[:temporal]
    assert_equal [:faction], detail[:domain]
    assert_equal [:location], detail[:range]
    assert_equal :one, detail[:cardinality]
  end

  def test_tags_and_sections_are_live_controlled_vocabularies
    tags = Lorecraft::SchemaInspection.new(sample_world, topic: "tags").data[:tags]
    sections = Lorecraft::SchemaInspection.new(sample_world, topic: "sections").data[:sections]

    assert_includes tags.map { |tag| tag[:name] }, :salvage
    assert_includes sections.map { |section| section[:name] }, :history
  end

  def test_unknown_schema_names_raise_clear_errors
    error = assert_raises(Lorecraft::Error) do
      Lorecraft::SchemaInspection.new(sample_world, topic: "kind", name: "missing").report
    end

    assert_equal "unknown entity kind: missing", error.message
  end
end

class GraphRenderTest < Minitest::Test
  def setup
    @w = sample_world
    @graph = JSON.parse(Lorecraft::Render::Graph.new(@w).render)
  end

  def test_nodes_exclude_genesis_moments
    ids = @graph["nodes"].map { |n| n["id"] }
    refute_includes ids, "seed"      # genesis is not a page
    assert_includes ids, "seizure"   # narrative moment is
    assert_includes ids, "concord"
    concord = @graph["nodes"].find { |node| node["id"] == "concord" }
    assert_equal "faction", concord["subkind"]
  end

  def test_edges_have_intervals
    controls = @graph["edges"].select { |e| e["rel"] == "controls" }
    reach = controls.find { |e| e["tgt"] == "reach" }
    assert_equal 10, reach["from"]      # opened at genesis year
    assert_equal 105, reach["to"]       # closed by the seizure transfer
  end
end

class SiteRenderTest < Minitest::Test
  def render(world, dir)
    Lorecraft::Render::Site.new(world, root: dir).render(
      out: File.join(dir, "public"),
      internal_out: File.join(dir, "internal"),
      world_id: "sample-world",
      title: "Sample World",
      revision: "abc123",
    )
  end

  def test_public_export_has_catalog_entry_graph_and_timeline_documents
    Dir.mktmpdir do |dir|
      render(sample_world, dir)
      root = File.join(dir, "public", "worlds", "sample-world")
      index = JSON.parse(File.read(File.join(root, "index.json")))
      entry = JSON.parse(File.read(File.join(root, "entries", "concord.json")))
      graph = JSON.parse(File.read(File.join(root, "graph.json")))
      timeline = JSON.parse(File.read(File.join(root, "timeline.json")))

      assert_equal "abc123", index["revision"]
      assert_includes index["entries"].map { |item| item["id"] }, "concord"
      assert_includes entry["sections"].first["markdown"], "(/sample-world/entry/reach)"
      assert graph["edges"].any? { |edge| edge["src"] == "concord" && edge["tgt"] == "reach" }
      assert_includes timeline["events"].map { |event| event["id"] }, "seizure"
    end
  end

  def test_editorial_export_keeps_questions_logs_and_provenance_out_of_public_data
    world = Lorecraft.define do
      schema do
        entity_type :concept
        drafted_by_default :ai
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :public_entry do
        name "Public Entry"
        prose "The visible world fact."
        question "Check the date", raised: "2026-08-10", on: "world fact"
        log "2026-08-10 — retained the observed date"
      end
      concept :hidden_entry do
        name "Hidden Entry"
        dm!
        prose "The concealed fact."
      end
    end

    Dir.mktmpdir do |dir|
      render(world, dir)
      public_root = File.join(dir, "public", "worlds", "sample-world")
      public_text = Dir.glob(File.join(public_root, "**", "*.json")).map { |path| File.read(path) }.join
      editorial = JSON.parse(File.read(File.join(dir, "internal", "worlds", "sample-world.json")))

      refute_includes public_text, "Check the date"
      refute_includes public_text, "retained the observed date"
      refute_includes public_text, "concealed fact"
      assert_equal "Check the date", editorial.dig("entries", "public_entry", "questions", 0, "text")
      assert_equal "Hidden Entry", editorial.dig("entries", "hidden_entry", "title")
      assert_equal "ai", editorial.dig("entries", "public_entry", "provenance", 0, "drafted_by")
    end
  end

  def test_authored_cards_keep_their_position_wording_and_target
    world = Lorecraft.define do
      schema { entity_type :concept; section_heading :relationships }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :destination do
        name "The Destination"
        prose "People live here."
      end
      concept :origin do
        name "The Origin"
        prose "Begin here."
        cards "Continue reading" do
          card :destination, "The place reached by the old road."
        end
        prose "Then return here.", section: :relationships, heading: "Afterward"
      end
    end

    Dir.mktmpdir do |dir|
      render(world, dir)
      entry = JSON.parse(File.read(File.join(dir, "public", "worlds", "sample-world", "entries", "origin.json")))

      assert_equal %w[prose cards prose], entry["sections"].map { |section| section["format"] }
      cards = entry["sections"][1]
      assert_equal "Continue reading", cards["heading"]
      assert_equal "The Destination", cards.dig("cards", 0, "title")
      assert_equal "/sample-world/entry/destination", cards.dig("cards", 0, "route")
      assert_equal "The place reached by the old road.", cards.dig("cards", 0, "description")
    end
  end

  def test_entry_facts_render_values_calculations_links_and_editorial_gaps
    Dir.mktmpdir do |dir|
      render(fact_world, dir)
      public_root = File.join(dir, "public", "worlds", "sample-world")
      ada = JSON.parse(File.read(File.join(public_root, "entries", "ada.json")))
      index = JSON.parse(File.read(File.join(public_root, "index.json")))
      editorial = JSON.parse(File.read(File.join(dir, "internal", "worlds", "sample-world.json")))

      assert_equal 5, ada["schema_version"]
      assert_equal "cartographer", ada["subkind"]
      assert(index["subkinds"].any? { |item| item["kind"] == "person" && item["id"] == "cartographer" })
      assert_equal ["born", "age", "occupation", "home", "chart_room", "working_language"], ada["facts"].map { |fact| fact["id"] }
      assert_equal "1980 CE", ada["facts"][0]["value"]
      assert_equal 40, ada["facts"][1]["value"]
      assert_equal "year", ada["facts"][0]["type"]
      assert_equal "integer", ada["facts"][1]["type"]
      assert_equal "entity", ada["facts"][3]["type"]
      assert_equal "Cartographer", ada["facts"][2]["value"]
      assert_equal "/sample-world/entry/harbour", ada.dig("facts", 3, "links", 0, "route")
      assert_equal %w[born occupation home], editorial.dig("entries", "unwritten", "missing_facts").map { |fact| fact["id"] }
    end
  end
end

class LinterTest < Minitest::Test
  def lint(&block)
    Lorecraft.define(&block).lint(root: Dir.mktmpdir)
  end

  def test_dm_phrase_leakage
    findings = lint do
      schema { entity_type :concept }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :a do name "A"; prose "The truth is, this leaks." end
    end
    assert(findings.any? { |f| f.level == :error && f.message.include?("DM leakage") })
  end

  # A world declares the habits it has caught itself in, so that catching one
  # once is enough. Other worlds are unaffected.
  def test_banned_phrases_are_per_world
    findings = lint do
      schema do
        entity_type :concept
        ban_phrase "which is the point", "narrator verdict"
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :a do name "A"; prose "It is horrifying, which is the point." end
      concept :b do name "B"; prose "It is horrifying, and the crews stopped going." end
    end
    banned = findings.select { |f| f.level == :error && f.message.include?("banned phrase") }
    assert_equal 1, banned.size
    assert_includes banned.first.message, "narrator verdict"
    assert_includes banned.first.message, "concept a".split.last
  end

  def test_banned_phrases_apply_to_authored_card_descriptions
    findings = lint do
      schema do
        entity_type :concept
        ban_phrase "which is the point", "narrator verdict"
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :target do name "Target"; prose "There." end
      concept :source do
        name "Source"
        cards "Continue" do
          card :target, "It is disturbing, which is the point."
        end
      end
    end

    assert(findings.any? { |finding| finding.level == :error && finding.message.include?("banned phrase") })
  end

  def test_no_bans_declared_means_no_check
    findings = lint do
      schema { entity_type :concept }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :a do name "A"; prose "It is horrifying, which is the point." end
    end
    refute(findings.any? { |f| f.message.include?("banned phrase") })
  end

  def test_world_can_require_a_minimum_public_fact_count_from_a_prominence_level
    findings = lint do
      schema do
        entity_type :concept
        extend_kind(:concept) do
          field :function, type: :text, expected: false
          field :scope, type: :text, expected: false
        end
        require_fact_cards! from: :renowned, minimum: 2
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :empty do name "Empty"; prominence :mythic end
      concept :thin do name "Thin"; prominence :renowned; function "Does work" end
      concept :filled do
        name "Filled"
        prominence :renowned
        function "Does work"
        scope "Everywhere"
      end
      concept :small do name "Small"; prominence :recognized end
    end

    card_findings = findings.select { |finding| finding.message.include?("infobox requires") }
    assert_equal 2, card_findings.size
    assert(card_findings.any? { |finding| finding.message.include?("concept empty") })
    assert(card_findings.any? { |finding| finding.message.include?("concept thin") })
  end

  def test_fact_audit_uses_the_worlds_required_prominence_threshold
    world = Lorecraft.define do
      schema do
        entity_type :concept
        extend_kind(:concept) { field :function, type: :text, expected: false }
        require_fact_cards! from: :recognized, minimum: 1
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :widely_known do name "Widely Known"; prominence :renowned; function "Works" end
      concept :locally_known do name "Locally Known"; prominence :recognized; function "Works" end
      concept :obscure do name "Obscure"; prominence :marginal; function "Works" end
    end

    cards = Lorecraft::FactAudit.new(world).data[:prominent_cards]
    assert_equal :recognized, cards[:threshold]
    assert_equal %i[widely_known locally_known], cards[:entries].map { |entry| entry[:id] }
    assert_includes Lorecraft::FactAudit.new(world).report, "recognized+: 2/2 cards present"
  end

  def test_double_article
    findings = lint do
      schema { entity_type :concept }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :a do name "A"; prose "visiting the #{ref(:b, 'The Reach')} today" end
      concept :b do name "The Reach" end
    end
    assert(findings.any? { |f| f.message.include?("double article") })
  end

  def test_causal_cycle
    findings = lint do
      schema do
        entity_type :incident
        relation :causes, temporal: false
        effect :set
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      incident :a do name "A" end
      incident :b do name "B" end
      genesis :g, at: { year: 0 } do
        effects { set :a, causes: :b; set :b, causes: :a }
      end
    end
    assert(findings.any? { |f| f.message.include?("causal cycle") })
  end

  def test_orphan_detection
    findings = lint do
      schema { entity_type :concept }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :lonely do name "Lonely" end
    end
    assert(findings.any? { |f| f.message.include?("orphan") && f.message.include?("lonely") })
  end

  # The root of a spatial hierarchy has nothing to sit inside; being the thing
  # others sit inside is the answer to "where is it?".
  def test_root_location_needs_no_parent
    findings = lint do
      schema do
        entity_type :geographic_location
        relation :located_in, temporal: false
        effect :set
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      geographic_location :system do name "System" end
      geographic_location :planet do name "Planet" end
      geographic_location :nowhere do name "Nowhere" end
      genesis :g, at: { year: 0 } do
        effects { set :planet, located_in: :system }
      end
    end
    spatial = findings.select { |f| f.message.include?("spatial hierarchy") }
    assert_equal 1, spatial.size
    assert_includes spatial.first.message, "nowhere"
  end

  # Reach is gated on the entity being named, and a typed edge is the exemption:
  # a forgotten name travels to whatever links to it and nowhere else.
  def reach_findings(&block)
    lint(&block).select { |f| f.message.include?("named") }
  end

  def test_forgotten_target_needs_an_edge
    findings = reach_findings do
      schema do
        entity_type :concept
        relation :depends_on, temporal: false
        effect :set
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :hub do name "Hub"; prominence :mythic; prose "the #{ref :ghost, 'Ghost'}" end
      concept :neighbour do name "Neighbour"; prominence :marginal; prose "the #{ref :ghost, 'Ghost'}" end
      concept :ghost do name "Ghost"; prominence :forgotten end
      genesis :g, at: { year: 0 } do
        effects { set :neighbour, depends_on: :ghost }
      end
    end
    assert(findings.any? { |f| f.message.include?("concept hub") },
           "a mythic entry may not name a forgotten one it has no link to")
    refute(findings.any? { |f| f.message.include?("concept neighbour") },
           "a direct edge is what earns the reference")
  end

  def test_recognized_target_reaches_broad_entries
    findings = reach_findings do
      schema { entity_type :concept }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :broad do name "Broad"; prominence :renowned; prose "the #{ref :trade, 'Trade'}" end
      concept :small do name "Small"; prominence :marginal; prose "the #{ref :trade, 'Trade'}" end
      concept :trade do name "Trade"; prominence :recognized end
    end
    refute(findings.any? { |f| f.message.include?("concept broad") },
           "a renowned entry is a broadly knowledgeable context")
    assert(findings.any? { |f| f.message.include?("concept small") })
  end

  def test_structural_kinds_are_not_reach_gated
    findings = reach_findings do
      schema { entity_type :concept; entity_type :thread, wiki: false }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      thread :arc do name "Arc"; prose "turns on the #{ref :ghost, 'Ghost'}" end
      concept :ghost do name "Ghost"; prominence :forgotten end
    end
    assert_empty findings
  end
end

class WikiRenderTest < Minitest::Test
  def test_wiki_links_and_dm_exclusion
    require "tmpdir"
    Dir.mktmpdir do |dir|
      w = Lorecraft.define do
        schema { entity_type :concept; entity_type :secret, wiki: false }
        timeline { era :t, starts: 0, length: 10; now year: 1 }
        concept :reach do name "The Reach" end
        concept :a do name "A"; prose "near #{ref :reach} and #{future 'Soon'}" end
        secret :hidden do name "Hidden"; dm! end
      end
      files = Lorecraft::Render::Wiki.new(w, root: dir).render(out: File.join(dir, "wiki"))
      page = File.read(File.join(dir, "wiki", "A.md"))
      assert_includes page, "[[The Reach]]"
      # The name reads as prose; the authoring state is in the comment channel.
      assert_includes page, "Soon<!-- stub: no entry yet -->"
      refute_match(/\*\(stub\)\*/, page)
      refute(files.any? { |f| f.include?("Hidden") }, "DM page leaked into wiki")
    end
  end

  def test_wiki_renders_authored_cards_in_order
    Dir.mktmpdir do |dir|
      w = Lorecraft.define do
        schema { entity_type :concept; section_heading :relationships }
        timeline { era :t, starts: 0, length: 10; now year: 1 }
        concept :destination do name "The Destination"; prose "There." end
        concept :origin do
          name "The Origin"
          prose "Start."
          cards "Continue reading" do
            card :destination, "The road ends here."
          end
        end
      end
      Lorecraft::Render::Wiki.new(w, root: dir).render(out: File.join(dir, "wiki"))
      page = File.read(File.join(dir, "wiki", "The-Origin.md"))

      assert_operator page.index("Start."), :<, page.index("Continue reading")
      assert_includes page, "**[[The Destination]]**: The road ends here."
    end
  end

  def test_wiki_metadata_renders_known_kind_facts
    Dir.mktmpdir do |dir|
      Lorecraft::Render::Wiki.new(fact_world, root: dir).render(out: File.join(dir, "wiki"))
      page = File.read(File.join(dir, "wiki", "Ada.md"))

      assert_includes page, "**Born:** 1980 CE"
      assert_includes page, "**Subkind:** cartographer"
      assert_includes page, "**Age:** 40"
      assert_includes page, "**Occupation:** Cartographer"
      assert_includes page, "**Home:** [[Harbour]]"
    end
  end
end

class PageAndGeneratedPagesTest < Minitest::Test
  def build
    Dir.mktmpdir do |dir|
      w = Lorecraft.define do
        schema do
          entity_type :incident, :concept
          relation :caused, temporal: false
          effect :set
          tag :resonance, "the energy system"
        end
        timeline do
          era :early, starts: 2000, length: 200, title: "The Early Age",
              description: "Where it began."
          now year: 2100
        end
        concept :resonance do name "Resonance"; tags :resonance end
        incident :a do name "The Spark" end
        incident :b do name "The Fire" end
        genesis :g, at: { year: 2010 } do effects { set :a, caused: :b } end
        page :home, title: "Home", wiki: "Home" do
          prose "See #{ref :resonance} to start."
        end
      end
      yield Lorecraft::Render::Wiki.new(w, root: dir), dir, w
    end
  end

  def test_authored_page_renders_with_links
    build do |wiki, dir, _w|
      wiki.render(out: File.join(dir, "w"))
      home = File.read(File.join(dir, "w", "Home.md"))
      assert_includes home, "[[Resonance]]"
    end
  end

  def test_generated_tags_timeline_causality
    build do |wiki, dir, _w|
      wiki.render(out: File.join(dir, "w"))
      tags = File.read(File.join(dir, "w", "Tags.md"))
      timeline = File.read(File.join(dir, "w", "Timeline.md"))
      causal = File.read(File.join(dir, "w", "Causality.md"))
      assert_includes tags, "`resonance`"
      assert_includes timeline, "The Early Age"
      assert_includes causal, "[[The Spark]] → [[The Fire]]"
    end
  end

  def test_page_is_not_an_entity
    build do |_wiki, _dir, w|
      assert_nil w.entity(:home)
      assert w.authored_pages.key?(:home)
    end
  end
end

class MomentHistoryTest < Minitest::Test
  def build_world
    Lorecraft.define do
      schema do
        entity_type :faction, :location
        relation :operates_in, temporal: true
        effect :set; effect :create; effect :destroy
      end
      timeline { era :t, starts: 2000, length: 500; now year: 2435 }
      faction :coremark do name "Coremark" end
      location :shear do name "The Shear" end
      moment :coremark_founded, year: 2322, of: :coremark do
        prose "Coremark opened in the deep #{ref :shear}."
        effects { set :coremark, standing: :legitimate; set :coremark, operates_in: :shear }
      end
      moment :coremark_falls, year: 2407, of: :coremark do
        prose "Coremark went criminal."
        effects { set :coremark, standing: :criminal }
      end
    end
  end

  def test_dynamic_standing_folds_over_years
    w = build_world
    assert_nil w.at(2300).attr(:coremark, :standing)
    assert_equal :legitimate, w.at(2350).attr(:coremark, :standing)
    assert_equal :criminal, w.at(2420).attr(:coremark, :standing)
    assert_equal [:shear], w.at(:now).out(:coremark, :operates_in)
  end

  def test_moment_prose_renders_as_paragraph_on_entity_page
    w = build_world
    Dir.mktmpdir do |dir|
      page = Lorecraft::Render::Wiki.new(w, root: dir).send(:content_page, w.entity(:coremark), 2435)
      assert_includes page, "Coremark went criminal."
      assert_includes page, "[[The Shear]]"
    end
  end
end

class ElapsedTest < Minitest::Test
  def approx(years) = Lorecraft::Elapsed.new(0, years).approximate

  def test_exact_states_the_figure
    assert_equal "165 years", Lorecraft::Elapsed.new(2140, 2305).exact
    assert_equal "1 year", Lorecraft::Elapsed.new(2140, 2141).exact
  end

  # The vocabulary lives in one place so the same span never gets two phrasings.
  def test_rounding_vocabulary
    assert_equal "twelve years", approx(12)
    assert_equal "thirty-five years", approx(34)
    assert_equal "half a century", approx(51)
    assert_equal "seventy-five years", approx(76)
    assert_equal "a century", approx(100)
    assert_equal "over a century", approx(130)
    assert_equal "a century and a half", approx(165)
    assert_equal "just over two centuries", approx(210)
    assert_equal "two and a half centuries", approx(250)
    assert_equal "nearly three centuries", approx(295)
  end

  def test_words_reach_the_hundreds
    assert_equal "a hundred and fifty", Lorecraft::Elapsed.words(150)
    assert_equal "two hundred", Lorecraft::Elapsed.words(200)
    assert_equal "ninety-one", Lorecraft::Elapsed.words(91)
  end

  def test_ago_takes_either_style
    span = Lorecraft::Elapsed.new(2140, 2435)
    assert_equal "295 years ago", span.ago
    assert_equal "nearly three centuries ago", span.ago(:approximate)
  end

  def test_direction_does_not_matter
    assert_equal 295, Lorecraft::Elapsed.new(2435, 2140).years
  end
end

class ClockTest < Minitest::Test
  def world
    @world ||= Lorecraft.define do
      schema { entity_type :incident, :faction }
      timeline do
        era :before, starts: 2000, length: 140
        era :after, length: 165
        now year: 2295
      end
      incident :the_fall do name "The Fall" end
      faction :guild do name "Guild" end
      moment :the_fall_happens, year: 2140, of: :the_fall do
        prose "It fell."
      end
      moment :guild_forms, year: 2200, of: :guild do
        prose "They organised."
      end
    end
  end

  # One clock, four kinds of anchor — a moment, an era, an entity, a bare year.
  def test_anchors_resolve
    assert_equal 2295, world.year_of(:now)
    assert_equal 2140, world.year_of(:the_fall_happens)
    assert_equal 2000, world.year_of(:before)
    assert_equal 2140, world.year_of(:after)      # era boundary
    assert_equal 2200, world.year_of(:guild)      # entity → its earliest moment
    assert_equal 1999, world.year_of(1999)
  end

  def test_unknown_anchor_raises
    assert_raises(Lorecraft::DefinitionError) { world.year_of(:nobody) }
  end

  def test_elapsed_defaults_to_now
    assert_equal "155 years", world.elapsed(:the_fall_happens).exact
    assert_equal "60 years", world.elapsed(:the_fall_happens, :guild).exact
  end

  # The whole point: move the present and every span in the corpus moves with it.
  def test_spans_follow_the_timeline
    before = world.elapsed(:the_fall_happens).exact
    world.timeline.now(year: 2400)
    refute_equal before, world.elapsed(:the_fall_happens).exact
    assert_equal "260 years", world.elapsed(:the_fall_happens).exact
  end
end

class EmbedTest < Minitest::Test
  def build(&block)
    Lorecraft.define do
      schema { entity_type :concept; entity_type :secret, wiki: false }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      instance_eval(&block)
    end
  end

  def test_embed_transcludes_the_owners_prose
    w = build do
      concept :owner do
        name "Owner"
        prose "The clause was load-bearing."
      end
      concept :borrower do
        name "Borrower"
        prose "As established: #{embed :owner}"
      end
    end
    out = Lorecraft::Render::Base.new(w)
                                 .resolve_prose(w.entity(:borrower).prose_blocks.first.text,
                                                from_path: "a.md", year: 1)
    assert_equal "As established: The clause was load-bearing.", out
  end

  def test_embed_can_name_a_section
    w = build do
      concept :owner do
        name "Owner"
        prose "Main."
        prose "Only the tensions.", section: :tensions
      end
      concept :borrower do
        name "Borrower"
        prose "#{embed :owner, :tensions}"
      end
    end
    out = Lorecraft::Render::Base.new(w)
                                 .resolve_prose(w.entity(:borrower).prose_blocks.first.text,
                                                from_path: "a.md", year: 1)
    assert_equal "Only the tensions.", out
  end

  # A transclusion is a real connection, so it belongs in the graph.
  def test_embed_derives_an_edge
    w = build do
      concept :owner do name "Owner"; prose "X." end
      concept :borrower do name "Borrower"; prose "#{embed :owner}" end
    end
    assert_includes w.relationships, [:borrower, :embeds, :owner]
  end

  def test_dm_block_embed_is_not_a_player_edge
    w = build do
      concept :owner do name "Owner"; prose "X." end
      concept :borrower do name "Borrower"; prose "#{embed :owner}", dm: true end
    end

    assert_includes w.embed_edges, [:borrower, :embeds, :owner]
    refute_includes w.embed_edges(audience: :player), [:borrower, :embeds, :owner]
  end

  def test_embedding_a_missing_section_is_a_validation_error
    w = build do
      concept :owner do name "Owner"; prose "X." end
      concept :borrower do name "Borrower"; prose "#{embed :owner, :nowhere}" end
    end
    assert(w.validate.any? { |p| p.include?("no :nowhere prose") })
  end

  def test_public_prose_may_not_embed_dm_prose
    w = build do
      secret :hidden do name "Hidden"; dm!; prose "The truth." end
      concept :public_entry do name "Public"; prose "#{embed :hidden}" end
    end
    assert(w.validate.any? { |p| p.include?("embeds DM-only entity") })
  end

  def test_embedding_a_shell_is_a_validation_error
    w = build do
      concept :stub do name "Stub"; status :shell end
      concept :borrower do name "Borrower"; prose "#{embed :stub}" end
    end
    assert(w.validate.any? { |p| p.include?("is a shell") })
  end

  def test_embed_cycles_fail_the_lint
    w = build do
      concept :a do name "A"; prose "a #{embed :b}" end
      concept :b do name "B"; prose "b #{embed :a}" end
    end
    findings = w.lint(root: Dir.mktmpdir)
    assert(findings.any? { |f| f.level == :error && f.message.include?("embed cycle") })
  end
end

class QuestionTest < Minitest::Test
  def world(&block)
    Lorecraft.define do
      schema { entity_type :concept }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      instance_eval(&block)
    end
  end

  def test_questions_are_compiled_and_ordered
    w = world do
      concept :a do
        name "A"
        prose "The prose."
        question "First thing", raised: "2026-08-01"
        question "Second thing"
      end
    end
    qs = w.entity(:a).questions
    assert_equal ["First thing", "Second thing"], qs.map(&:text)
    assert_equal "2026-08-01", qs.first.raised
  end

  # An anchor that no longer matches its prose has come unstuck from what it is
  # about — the failure mode of a comment stored away from its text.
  def test_a_stale_anchor_is_reported
    w = world do
      concept :a do
        name "A"
        prose "The route is well-charted."
        question "matches", on: "well-charted"
        question "does not", on: "a sentence that was rewritten"
      end
    end
    findings = w.lint(root: Dir.mktmpdir)
    anchors = findings.select { |f| f.message.include?("question anchor") }
    assert_equal 1, anchors.size
    assert_includes anchors.first.message, "a sentence that was rewritten"
  end

  # The queue is assembled from declarations and findings, never authored.
  def test_queue_reports_questions_by_entity
    w = world do
      concept :b do name "B"; prose "b"; question "About B" end
      concept :a do name "A"; prose "a"; question "About A" end
    end
    report = Lorecraft::Queue.new(w, findings: []).report
    assert_includes report, "2 open question(s) on 2 entr(ies)"
    assert_operator report.index("  a"), :<, report.index("  b")
  end

  def test_queue_counts_findings_rather_than_restating_them
    w = world { concept :a do name "A"; prose "a" end }
    findings = [Lorecraft::Linter::Finding.new(:warn, "something is off"),
                Lorecraft::Linter::Finding.new(:warn, "another thing")]
    report = Lorecraft::Queue.new(w, findings: findings).report
    assert_includes report, "2 warning(s)"
  end

  def test_queue_can_scope_questions_and_findings_to_one_entry
    w = world do
      concept :a do name "A"; prose "a"; question "About A" end
      concept :b do name "B"; prose "b"; question "About B" end
    end
    findings = [Lorecraft::Linter::Finding.new(:warn, "concept a: check this"),
                Lorecraft::Linter::Finding.new(:warn, "concept b: check that")]
    report = Lorecraft::Queue.new(w, findings: findings, entity: :a).report

    assert_includes report, "Work Queue — A (a)"
    assert_includes report, "About A"
    assert_includes report, "check this"
    refute_includes report, "About B"
    refute_includes report, "check that"
  end

  def test_queue_data_keeps_questions_separate_from_findings
    w = world do
      concept :a do name "A"; prose "a"; question "About A", raised: "2026-08-12" end
    end
    finding = Lorecraft::Linter::Finding.new(:warn, "concept a: check this")
    data = Lorecraft::Queue.new(w, findings: [finding], entity: :a).data

    assert_equal "About A", data[:questions].first[:text]
    assert_equal :warn, data[:findings].first[:level]
  end
end

class WebTest < Minitest::Test
  # A god in the middle and two peers that touch only it: connected by every
  # ordinary measure, and nothing holds once the god is removed.
  def world(bridged: false)
    Lorecraft.define do
      schema do
        entity_type :faction, :concept
        relation :governs, temporal: false
        relation :cooperates_with, temporal: false
        effect :set
      end
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      faction :god do name "God"; prominence :mythic end
      faction :left do name "Left"; prominence :recognized end
      faction :right do name "Right"; prominence :recognized end
      concept :bridge do name "Bridge"; prominence :marginal end
      genesis :g, at: { year: 0 } do
        effects do
          set :god, governs: :left
          set :god, governs: :right
        end
      end
      next unless bridged

      relate :rel_bridge_left, :cooperates_with, :bridge, :left
      relate :rel_bridge_right, :cooperates_with, :bridge, :right
    end
  end

  def test_the_cut_finds_what_only_the_god_joined
    cut = Lorecraft::Web.new(world).cut(%i[mythic])
    assert_equal 3, cut.kept.size
    assert_equal %i[bridge left right].sort, cut.isolated.sort
  end

  def test_a_lateral_connector_closes_the_gap
    cut = Lorecraft::Web.new(world(bridged: true)).cut(%i[mythic])
    assert_empty cut.isolated
    assert_equal 1, cut.components.size
  end

  def test_hubs_are_reported_with_prominence
    web = Lorecraft::Web.new(world)
    assert_equal :god, web.hubs.first.first
    assert_includes web.report, "without mythic"
  end
end

class ProvenanceTest < Minitest::Test
  def world
    Lorecraft.define do
      schema { entity_type :concept }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :a do
        name "A"
        prose "Machine drafted, nobody read it.", drafted_by: :ai
        prose "A human wrote this one.", section: :history, drafted_by: :human
        prose "Read and signed off.", section: :legacy, drafted_by: :ai, reviewed: "2026-08-01"
        prose "#{embed :b}", section: :culture, origin: :structural, drafted_by: :ai
      end
      concept :b do name "B"; prose "Owned elsewhere." end
    end
  end

  def test_counts_by_drafter_and_review_state
    s = Lorecraft::Provenance.new(world).summary
    assert_equal 5, s[:blocks]
    assert_equal 4, s[:declared]                # concept :b declares nothing
    assert_equal 1, s[:reviewed]
    assert_equal({ ai: 3, human: 1, nil => 1 }, s[:by_drafter])
  end

  # The list that matters: a machine wrote it and no human has confirmed it
  # against the writing rules. Scaffolding makes no claim, so it is not on it.
  def test_unread_machine_prose_excludes_human_and_structural
    sections = Lorecraft::Provenance.new(world).unread_machine_prose.map(&:section)
    assert_includes sections, :main
    refute_includes sections, :history          # a human wrote it
    refute_includes sections, :legacy           # reviewed
    refute_includes sections, :culture          # structural, carries no claim
  end

  # A review covers the text as it stood. Change the text and the read expires.
  def test_a_review_goes_stale_when_the_file_changes_after_it
    later = ->(_owner) { "2026-08-05T12:00:00Z" }
    rows = Lorecraft::Provenance.new(world, changed_at: later).rows
    assert(rows.find { |r| r.section == :legacy }.stale?)

    earlier = ->(_owner) { "2026-07-01T12:00:00Z" }
    rows = Lorecraft::Provenance.new(world, changed_at: earlier).rows
    refute(rows.find { |r| r.section == :legacy }.stale?)
  end

  def test_bad_declarations_fail_validation
    w = Lorecraft.define do
      schema { entity_type :concept }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :a do
        name "A"
        prose "x", drafted_by: :robot
        prose "y", section: :history, origin: :borrowed
        prose "z", section: :legacy, reviewed: "last Tuesday"
      end
    end
    problems = w.validate
    assert(problems.any? { |p| p.include?("unknown prose drafter") })
    assert(problems.any? { |p| p.include?("unknown prose origin") })
    assert(problems.any? { |p| p.include?("not a YYYY-MM-DD date") })
  end

  def test_authored_card_descriptions_are_provenance_blocks
    w = Lorecraft.define do
      schema { entity_type :concept; drafted_by_default :ai }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :target do name "Target"; prose "There." end
      concept :source do
        name "Source"
        cards "Continue" do
          card :target, "An authored description."
        end
      end
    end

    rows = Lorecraft::Provenance.new(w).rows.select { |row| row.owner == :source }
    assert_equal 1, rows.size
    assert_equal :relationships, rows.first.section
    assert_equal :ai, rows.first.drafter
  end

  def test_provenance_can_scope_to_one_entry
    audit = Lorecraft::Provenance.new(world, entity: :a)

    assert_equal 4, audit.rows.size
    assert_equal [:a], audit.rows.map(&:owner).uniq
    assert_includes audit.report, "Provenance — A (a)"
    refute_includes audit.report, "b (main)"
  end

  def test_provenance_data_contains_summary_and_blocks
    data = Lorecraft::Provenance.new(world, entity: :a).data

    assert_equal "entity", data[:scope]
    assert_equal 4, data.dig(:summary, :blocks)
    assert_equal :main, data[:blocks].first[:section]
    assert data[:blocks].first[:declared]
  end
end

class EntryLogTest < Minitest::Test
  def world
    Lorecraft.define do
      schema { entity_type :concept }
      timeline { era :t, starts: 0, length: 10; now year: 1 }
      concept :a do
        name "A"
        prose "The world fact."
        log "2026-08-08 — was 2438; predates the timeline extension"
      end
    end
  end

  def test_log_entries_are_compiled_data
    assert_equal ["2026-08-08 — was 2438; predates the timeline extension"],
                 world.entity(:a).log_entries
  end

  # The entry's history is not the world's history: a reader must never meet it.
  def test_log_never_reaches_a_player_render
    w = world
    Dir.mktmpdir do |dir|
      w.render(:markdown, out: dir, audience: :player)
      player = Dir.glob("#{dir}/**/*.md").map { |f| File.read(f) }.join
      refute_includes player, "2438"
      refute_includes player, "Entry Log"
    end
  end

  def test_log_appears_on_the_internal_tree
    w = world
    Dir.mktmpdir do |dir|
      w.render(:markdown, out: dir)
      internal = Dir.glob("#{dir}/**/*.md").map { |f| File.read(f) }.join
      assert_includes internal, "Entry Log"
      assert_includes internal, "predates the timeline extension"
    end
  end

  def test_wiki_never_shows_a_log
    w = world
    Dir.mktmpdir do |dir|
      w.render(:wiki, out: File.join(dir, "wiki"))
      wiki = Dir.glob("#{dir}/wiki/**/*.md").map { |f| File.read(f) }.join
      refute_includes wiki, "2438"
    end
  end
end

class FutureAnchorTest < Minitest::Test
  # A span whose starting point nobody has dated yet: the estimate stands in, the
  # missing date is inventoried, and writing the event makes the span exact
  # without anyone editing the prose.
  def world(dated:)
    Lorecraft.define do
      schema { entity_type :artifact, :incident }
      timeline { era :t, starts: 2000, length: 500; now year: 2435 }
      artifact :kite do
        name "Kite"
        prose "no trouble in #{elapsed future: 'Kite development', about: 200} of use"
      end
      next unless dated

      incident :kite_development do name "Kite Development" end
      moment :kite_development_happens, year: 2300, of: :kite_development do
        prose "The first one flew."
      end
    end
  end

  def rendered(w)
    Lorecraft::Render::Base.new(w)
                           .resolve_prose(w.entity(:kite).prose_blocks.first.text, from_path: "a.md", year: 2435)
  end

  def test_estimate_stands_in_until_the_event_is_dated
    assert_includes rendered(world(dated: false)), "200 years"
  end

  def test_the_span_becomes_exact_once_the_event_has_a_year
    assert_includes rendered(world(dated: true)), "135 years"
  end

  def test_the_missing_date_is_inventoried
    findings = world(dated: false).lint(root: Dir.mktmpdir)
    pending = findings.select { |f| f.level == :future && f.message.include?("Kite development") }
    assert_equal 1, pending.size
    assert_includes pending.first.message, "no date"
  end

  def test_a_dated_event_leaves_nothing_to_report
    findings = world(dated: true).lint(root: Dir.mktmpdir)
    refute(findings.any? { |f| f.message.include?("has no date") })
  end

  def test_a_future_anchor_without_an_estimate_is_refused
    err = assert_raises(Lorecraft::DefinitionError) do
      Lorecraft.define do
        schema { entity_type :artifact }
        timeline { era :t, starts: 0, length: 10; now year: 1 }
        artifact :k do name "K"; prose "in #{elapsed future: 'Someday'} of use" end
      end
    end
    assert_match(/about:/, err.message)
  end
end

class MarkersTest < Minitest::Test
  include Lorecraft::Markers

  def test_ref_with_text_and_anchor_round_trips
    s = "x #{ref(:elves, 'the elves', anchor: 'Truth')} y"
    parsed = nil
    Lorecraft::Markers.scan(s) { |_m, b| parsed = b }
    assert_equal :elves, parsed[:id]
    assert_equal "the elves", parsed[:text]
    assert_equal "Truth", parsed[:anchor]
  end

  def test_strip_yields_plain_text
    s = "see #{ref(:a, 'A')} and #{future('B')}"
    assert_equal "see A and B", Lorecraft::Markers.strip(s)
  end

  def test_scan_builds_typed_markers
    s = "#{ref(:a)} #{rel(:governs)} #{future('C')}"
    kinds = Lorecraft::Markers.scan(s).map { |_m, marker| marker.class }
    assert_equal [Lorecraft::RefMarker, Lorecraft::RelMarker, Lorecraft::FutureMarker], kinds
  end

  # Every marker dispatches to a differently-named callback, so a resolver that
  # forgets a kind fails loudly instead of falling through to a wrong branch.
  class CountingResolver
    attr_reader :seen

    def initialize = @seen = []
    def on_ref(m) = tally(:ref, m)
    def on_rel(m) = tally(:rel, m)
    def on_future(m) = tally(:future, m)

    private

    def tally(name, marker)
      @seen << name
      marker.plain
    end
  end

  def test_markers_double_dispatch_to_a_resolver
    resolver = CountingResolver.new
    out = "see #{ref(:a, 'A')}, #{rel(:governs)}, #{future('C')}".dup
    Lorecraft::Markers.scan(out.dup) { |match, marker| out = out.sub(match, marker.resolve(resolver)) }
    assert_equal %i[ref rel future], resolver.seen
    assert_equal "see A, governs, C", out
  end

  def test_elapsed_marker_carries_its_anchors_and_style
    s = "for #{elapsed(:the_fall, 2300, approx: true, ago: true)}"
    marker = Lorecraft::Markers.scan(s).first.last
    assert_equal :the_fall, marker.from
    assert_equal 2300, marker.to           # a bare year comes back an Integer
    assert_equal :approximate, marker.style
    assert marker.ago?
  end

  def test_elapsed_defaults_to_now_and_exact
    marker = Lorecraft::Markers.scan(elapsed(:the_fall)).first.last
    assert_equal :now, marker.to
    assert_equal :exact, marker.style
    refute marker.ago?
  end

  # strip has no world, so a computed span collapses to a placeholder — which is
  # what keeps the typed-span check from flagging spans the markers produced.
  def test_computed_markers_strip_to_placeholders
    assert_equal "for [elapsed:the_fall→now]", Lorecraft::Markers.strip("for #{elapsed(:the_fall)}")
    assert_equal "in [year:now]", Lorecraft::Markers.strip("in #{year}")
    assert_equal "for [duration:11]", Lorecraft::Markers.strip("for #{duration(11)}")
  end

  # A duration is a length with no anchor, which is why the span check can leave
  # it alone: a tenure is not a restated calculation.
  def test_duration_needs_no_anchor
    marker = Lorecraft::Markers.scan(duration(11)).first.last
    assert_equal 11, marker.years
    assert_equal :duration, marker.kind
  end

  def test_a_resolver_missing_a_kind_raises
    incomplete = Object.new
    err = assert_raises(NoMethodError) do
      Lorecraft::Markers.scan(ref(:a)) { |_m, marker| marker.resolve(incomplete) }
    end
    assert_match(/on_ref/, err.message)
  end
end

class CLIHelpTest < Minitest::Test
  def test_help_does_not_require_a_world_manifest
    executable = File.expand_path("../bin/lorecraft", __dir__)
    stdout, stderr, status = Open3.capture3(
      RbConfig.ruby, executable, "help", "model", chdir: Dir.tmpdir
    )

    assert_predicate status, :success?
    assert_empty stderr
    assert_includes stdout, "without fine-tuning"
  end

  def test_overview_routes_tasks_to_small_queries
    help = Lorecraft::CLIHelp.render

    assert_includes help, "Read only the context the task needs"
    assert_includes help, "page, connections, timeline, log, facts"
    assert_includes help, "help TOPIC"
  end

  def test_model_topic_states_capability_and_boundary
    help = Lorecraft::CLIHelp.render("model")

    assert_includes help, "without fine-tuning"
    assert_includes help, "context poisoning"
    assert_includes help, "does not prove that free prose is true"
  end

  def test_every_advertised_command_has_help
    Lorecraft::CLIHelp::COMMANDS.each_key do |command|
      assert_includes Lorecraft::CLIHelp.render(command), "Usage:"
    end
  end

  def test_every_advertised_command_is_dispatched_by_the_cli
    executable = File.read(File.expand_path("../bin/lorecraft", __dir__))

    Lorecraft::CLIHelp::COMMANDS.each_key do |command|
      assert_match(/when \"#{Regexp.escape(command)}\"/, executable, command)
    end
  end

  def test_engine_guide_names_every_advertised_command
    guide = File.read(File.expand_path("../README.md", __dir__))

    Lorecraft::CLIHelp::COMMANDS.each_key do |command|
      assert_includes guide, "`#{command}", command
    end
  end

  def test_commands_and_topics_have_distinct_names
    assert_empty Lorecraft::CLIHelp::COMMANDS.keys & Lorecraft::CLIHelp::TOPICS
  end

  def test_schema_command_and_authoring_topic_are_both_reachable
    assert_includes Lorecraft::CLIHelp.render("schema"), "schema [kinds"
    assert_includes Lorecraft::CLIHelp.render("schema-authoring"), "Schema shape"
  end

  def test_review_is_a_topic_not_an_advertised_command
    refute_includes Lorecraft::CLIHelp::COMMANDS.keys, "review"
    assert_includes Lorecraft::CLIHelp.render("review"), "Never set reviewed"
  end

  def test_focused_context_topics_are_available
    Lorecraft::CLIHelp::TOPICS.each do |topic|
      refute_empty Lorecraft::CLIHelp.render(topic)
    end
  end

  def test_time_topic_distinguishes_snapshots_from_present_and_full_history
    help = Lorecraft::CLIHelp.render("time")

    assert_includes help, "search, connections,"
    assert_includes help, "page always renders"
    assert_includes help, "timeline reports every effect"
    refute_includes help, "use --at with page"
  end

  def test_cli_emits_parseable_json_for_bounded_queries
    executable = File.expand_path("../bin/lorecraft", __dir__)
    repo = File.expand_path("../..", __dir__)
    stdout, stderr, status = Open3.capture3(
      RbConfig.ruby,
      executable,
      "schema",
      "relation",
      "located_in",
      "--world",
      "dry-war",
      "--format",
      "json",
      chdir: repo,
    )

    assert_predicate status, :success?
    assert_empty stderr
    assert_equal "located_in", JSON.parse(stdout).dig("relation", "name")
  end

  def test_cli_rejects_selectors_the_command_does_not_advertise
    executable = File.expand_path("../bin/lorecraft", __dir__)
    repo = File.expand_path("../..", __dir__)
    cases = [
      %w[page inez_bell --world dry-war --at 2080],
      %w[timeline inez_bell --world dry-war --at 2080],
      %w[graph --world dry-war --format json],
    ]

    cases.each do |arguments|
      _stdout, stderr, status = Open3.capture3(
        RbConfig.ruby, executable, *arguments, chdir: repo
      )

      refute_predicate status, :success?, arguments.join(" ")
      assert_includes stderr, "not supported by", arguments.join(" ")
    end
  end
end

class GuideTest < Minitest::Test
  def test_list_exposes_shared_and_selected_world_guidance
    target = Lorecraft::Worlds.find("glass-frontier")
    result = Lorecraft::Guide.new(target).data("list")

    names = result[:guides].map { |guide| guide[:name] }
    assert_includes names, "writing"
    assert_includes names, "tone"
    assert_includes names, "voice-referents"
    assert_includes result[:aliases], { name: "voice", target: "voice-referents" }
  end

  def test_world_alias_reads_the_authoritative_file
    target = Lorecraft::Worlds.find("glass-frontier")
    result = Lorecraft::Guide.new(target).data("voice")

    assert_equal "voice-referents", result[:resolved_name]
    assert_equal "worlds/glass-frontier/guidance/voice-referents.md", result[:source]
    assert_includes result[:content], "#"
  end

  def test_alias_falls_back_to_shared_guidance
    target = Lorecraft::Worlds.find("dry-war")
    result = Lorecraft::Guide.new(target).data("naming")

    assert_equal "naming-craft", result[:resolved_name]
    assert_equal "craft/naming-craft.md", result[:source]
  end

  def test_every_advertised_guide_source_exists
    target = Lorecraft::Worlds.find("glass-frontier")
    repo = Pathname.new(Lorecraft::Worlds.repo_root)

    Lorecraft::Guide.new(target).entries.each do |entry|
      assert_predicate repo.join(entry.path), :file?, entry.path
    end
  end
end

class FeaturePortContractTest < Minitest::Test
  def test_bounded_queries_return_native_records_with_stable_identity
    search = Lorecraft::Search.new(sample_world, query: "concord", root: Dir.pwd).data
    connections = Lorecraft::Connections.new(
      sample_world, entity: :concord, root: Dir.pwd
    ).data
    path = Lorecraft::PathQuery.new(
      sample_world, from: :concord, to: :quarter
    ).data

    assert_equal :concord, search.fetch(:results).first.fetch(:id)
    assert search.fetch(:results).first.key?(:source_file)
    assert_equal :concord, connections.dig(:entity, :id)
    assert(connections.fetch(:connections).all? { |row| row.key?(:relation) })
    assert_equal :concord, path.dig(:from, :id)
    assert_equal :quarter, path.dig(:to, :id)
    assert(path.fetch(:steps).all? { |step| step.key?(:canonical_subject) })
  end

  def test_help_metadata_keeps_the_fields_needed_for_runtime_discovery
    Lorecraft::CLIHelp::COMMANDS.each do |name, command|
      assert_empty %i[summary usage body] - command.keys, name
      %i[summary usage body].each { |key| refute_empty command.fetch(key), name }
    end
  end

  def test_validation_and_lint_collect_findings_without_printing_them
    world = Lorecraft.define do
      schema { entity_type :concept; tag :known }
      timeline { era :t, starts: 0, length: 2; now year: 1 }
      concept :broken do
        tags :unknown
        prose "See #{ref :missing}."
      end
    end

    problems = world.validate
    findings = world.lint(root: Dir.mktmpdir)

    assert_operator problems.size, :>=, 2
    assert(problems.all? { |problem| problem.is_a?(String) })
    assert(findings.all? { |finding| finding.respond_to?(:level) && finding.respond_to?(:message) })
  end
end

class ReviewEditorTest < Minitest::Test
  def test_world_load_can_validate_staged_source_without_touching_disk
    with_editor do |editor, file, target|
      original = File.binread(file)
      staged = original.sub('name "Alpha"', 'name "Staged Alpha"')
      world = Lorecraft.load(target.glob, prelude: target.prelude, overrides: { file => staged })

      assert_equal "Staged Alpha", world.entity(:alpha).title
      assert_equal original, File.binread(file)
    end
  end

  def test_entity_addressing_keeps_siblings_independent
    with_editor do |editor, file, _target|
      alpha = editor.entry(:alpha)
      refute_includes alpha.fetch(:content), "concept :beta"
      result = editor.add_question(
        :alpha, revision: alpha.fetch(:revision), text: "Check alpha.", on: "Alpha prose."
      )
      source = File.binread(file)

      assert result.fetch(:written)
      assert_equal 1, result.dig(:entry, :question_count)
      assert_match(/concept :alpha do.*question "Check alpha\.".*end/m, source)
      refute_match(/concept :beta do.*question "Check alpha\.".*end/m, source)

      beta = editor.entry(:beta)
      editor.set_complete(:beta, revision: beta.fetch(:revision), value: true)
      source = File.binread(file)
      refute_match(/concept :alpha do.*status :complete.*concept :beta/m, source)
      assert_match(/concept :beta do.*status :complete.*end/m, source)
    end
  end

  def test_question_tokens_survive_line_movement_and_resolve_exactly
    with_editor do |editor, file, _target|
      File.chmod(0o640, file)
      alpha = editor.entry(:alpha)
      added = editor.add_question(
        :alpha, revision: alpha.fetch(:revision),
        text: %(Quotes " slash \\ marker \#{ref :beta} café\nremain safe.)
      )
      question = added.dig(:entry, :questions).fetch(0)
      after_add = editor.entry(:alpha)
      moved = editor.set_reviewed(
        :alpha, revision: after_add.fetch(:revision), value: true
      ).fetch(:entry)

      assert_equal %(Quotes " slash \\ marker \#{ref :beta} café remain safe.), question.fetch(:text)
      assert_equal question.fetch(:token), moved.fetch(:questions).first.fetch(:token)
      resolved = editor.resolve_question(
        :alpha, revision: moved.fetch(:revision), token: question.fetch(:token)
      )

      assert_empty resolved.dig(:entry, :questions)
      assert_equal 0o640, File.stat(file).mode & 0o777
    end
  end

  def test_dry_run_returns_a_diff_and_writes_nothing
    with_editor do |editor, file, _target|
      before = File.binread(file)
      alpha = editor.entry(:alpha)
      result = editor.set_reviewed(
        :alpha, revision: alpha.fetch(:revision), value: true, dry_run: true
      )

      refute result.fetch(:written)
      assert result.fetch(:dry_run)
      assert_includes result.fetch(:diff), "+  reviewed"
      assert_equal before, File.binread(file)
    end
  end

  def test_stale_and_invalid_candidates_write_nothing
    with_editor do |editor, file, _target|
      alpha = editor.entry(:alpha)
      changed = "#{File.binread(file)}# concurrent edit\n"
      File.binwrite(file, changed)

      assert_raises(Lorecraft::StaleSourceError) do
        editor.set_complete(:alpha, revision: alpha.fetch(:revision), value: true)
      end
      assert_equal changed, File.binread(file)

      fresh = editor.entry(:alpha)
      assert_raises(Lorecraft::SourceMutationError) do
        editor.set_reviewed(
          :alpha, revision: fresh.fetch(:revision), value: true, date: "yesterday"
        )
      end
      assert_equal changed, File.binread(file)
    end
  end

  def test_computed_entity_identity_is_refused
    with_editor(source: <<~RUBY) do |editor, _file, _target|
      entity_id = :alpha
      concept entity_id do
        name "Alpha"
        prose "Alpha prose."
      end
    RUBY
      error = assert_raises(Lorecraft::SourceMutationError) { editor.entry(:alpha) }

      assert_equal "ambiguous_entity_source", error.code
    end
  end

  def test_computed_review_declarations_are_refused_without_writing
    with_editor(source: <<~RUBY) do |editor, file, _target|
      concept :alpha do
        name "Alpha"
        path "player/concepts/alpha.md"
        state = :draft
        status state
        prose "Alpha prose."
      end
    RUBY
      before = File.binread(file)
      alpha = editor.entry(:alpha)
      error = assert_raises(Lorecraft::SourceMutationError) do
        editor.set_complete(:alpha, revision: alpha.fetch(:revision), value: true)
      end

      assert_equal "computed_declaration", error.code
      assert_equal before, File.binread(file)
    end
  end

  private

  def with_editor(source: nil)
    Dir.mktmpdir do |directory|
      world_dir = File.join(directory, "world")
      FileUtils.mkdir_p(world_dir)
      File.write(File.join(world_dir, "schema.rb"), <<~RUBY)
        schema do
          entity_type :concept
        end
      RUBY
      File.write(File.join(world_dir, "timeline.rb"), <<~RUBY)
        timeline do
          era :present, starts: 0, length: 10
          now year: 1
        end
      RUBY
      source ||= <<~RUBY
        concept :alpha do
          name "Alpha"
          path "player/concepts/alpha.md"
          prose "Alpha prose."
        end

        concept :beta do
          name "Beta"
          path "player/concepts/beta.md"
          prose "Beta prose."
        end
      RUBY
      file = File.join(world_dir, "entries.rb")
      File.write(file, source)
      target = Lorecraft::Worlds::Entry.new(
        id: "test", title: "Test", status: "active", root: directory, prelude: []
      )

      yield Lorecraft::ReviewEditor.new(target: target), file, target
    end
  end
end
