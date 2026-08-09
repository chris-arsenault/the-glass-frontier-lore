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
  end

  def test_a_resolver_missing_a_kind_raises
    incomplete = Object.new
    err = assert_raises(NoMethodError) do
      Lorecraft::Markers.scan(ref(:a)) { |_m, marker| marker.resolve(incomplete) }
    end
    assert_match(/on_ref/, err.message)
  end
end
