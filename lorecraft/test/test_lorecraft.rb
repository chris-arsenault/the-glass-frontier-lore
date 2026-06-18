# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
Encoding.default_external = Encoding::UTF_8
Encoding.default_internal = Encoding::UTF_8
require "minitest/autorun"
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
  end

  def test_edges_have_intervals
    controls = @graph["edges"].select { |e| e["rel"] == "controls" }
    reach = controls.find { |e| e["tgt"] == "reach" }
    assert_equal 10, reach["from"]      # opened at genesis year
    assert_equal 105, reach["to"]       # closed by the seizure transfer
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
      assert_includes page, "*(stub)*"
      refute(files.any? { |f| f.include?("Hidden") }, "DM page leaked into wiki")
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
end
