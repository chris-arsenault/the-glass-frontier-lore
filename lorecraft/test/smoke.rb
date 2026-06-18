# frozen_string_literal: true

# End-to-end smoke test of the engine on a hand-built world (the spec example).
$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "lorecraft"

world = Lorecraft.define do
  schema do
    entity_type :faction, :location, :concept
    relation :controls, category: :spatial, temporal: true,
                        domain: :faction, range: :location, cardinality: :many
    relation :rival_of, category: :social, temporal: true, symmetric: true,
                        exclusive_with: :ally_of
    relation :ally_of, category: :social, temporal: true, symmetric: true
    effect :set
    effect :clear
    effect :create
    effect :destroy
    tag :salvage
    tag :coalition
    section_heading :history
  end

  timeline do
    era :the_drift,        starts: 0, length: 100
    era :the_long_quiet,   length: 60
    era :the_reconnection, length: 40
    now era: :the_reconnection, year: 14   # tick 174
  end

  concept :glassreach do
    name "Glassreach"
    prominence :recognized
    prose "The contested salvage-rich territory the polities fight over."
  end

  location :ashfall_reach do
    name "Ashfall Reach"
    prominence :marginal
  end

  location :glasswright_quarter do
    name "The Glasswright Quarter"
    prominence :marginal
  end

  faction :sable_concord do
    name "The Sable Concord"
    tags :salvage, :coalition
    prominence :recognized
    prose "The Concord rose from #{ref :ashfall_reach} salvage crews."
    prose(<<~MD, section: :history, heading: "The Long Climb")
      By the time the rings spoke again, the Concord held more #{ref :glassreach} than any rival.
    MD
    derive(:territory_count) { |state| state.out(:sable_concord, :controls).size }
  end

  faction :glasswright_guild do
    name "The Glasswright Guild"
    prominence :recognized
  end

  genesis :drift_settlement, at: { era: :the_drift, year: 12 } do
    effects do
      set :sable_concord, controls: :ashfall_reach
    end
  end

  event :seizure_of_glasswright_quarter, at: { era: :the_long_quiet, year: 9 }, type: :incident do
    actor :sable_concord
    prose "The siege lasted forty days; the Quarter answered to the Concord."
    effects do
      set :sable_concord, controls: :glasswright_quarter
    end
  end

  relate :concord_guild_rivalry, :rival_of, :sable_concord, :glasswright_guild,
         since: { era: :the_drift, year: 88 } do
    prose "A contract dispute that curdled into eighty years of sabotage."
  end
end

def check(label)
  ok = yield
  puts "#{ok ? 'ok  ' : 'FAIL'}  #{label}"
  raise "FAILED: #{label}" unless ok
end

# Tick math
check("tick: drift y12 == 12") { world.timeline.tick_for(era: :the_drift, year: 12) == 12 }
check("tick: long_quiet y9 == 109") { world.timeline.tick_for(era: :the_long_quiet, year: 9) == 109 }
check("tick: now == 174") { world.timeline.tick_for(:now) == 174 }

# Temporal fold / state-at-T
check("controls empty before settlement (tick 0)") { world.at(0).out(:sable_concord, :controls).empty? }
check("controls ashfall after settlement (tick 12)") { world.at(12).out(:sable_concord, :controls) == [:ashfall_reach] }
check("controls both after seizure (now)") do
  world.at(:now).out(:sable_concord, :controls).sort == %i[ashfall_reach glasswright_quarter]
end
check("historical query at drift y50 has only ashfall") do
  world.at(era: :the_drift, year: 50).out(:sable_concord, :controls) == [:ashfall_reach]
end

# Derived value (entity-oriented, recomputed)
sc = world.entity(:sable_concord)
check("derive territory_count == 2 at now") do
  sc.derives[:territory_count].call(world.at(:now)) == 2
end

# Rivalry via named relation instance, live from drift y88
check("rivalry not live at drift y50") { world.at(era: :the_drift, year: 50).out(:sable_concord, :rival_of).empty? }
check("rivalry live at now") { world.at(:now).out(:sable_concord, :rival_of) == [:glasswright_guild] }
check("inverse traversal: guild sees concord as rival") { world.at(:now).in(:glasswright_guild, :rival_of) == [:sable_concord] }

# Validation passes on a well-formed world
check("validate! passes") { world.validate! }

# Markdown render resolves refs to relative links
md = Lorecraft::Render::Markdown.new(world)
page = md.page_markdown(world.entity(:sable_concord))
puts "\n--- sable_concord.md ---\n#{page}\n------------------------"
check("md has H1 title") { page.include?("# The Sable Concord") }
check("md resolved ref to ashfall as relative link") { page.match?(/\[Ashfall Reach\]\([^)]+ashfall_reach\.md\)/) }
check("md emitted history section with canonical annotation") { page.include?("## The Long Climb <!-- History -->") }
check("md frontmatter has tags list") { page.include?("tags: [salvage, coalition]") }

# Graph export
graph = JSON.parse(Lorecraft::Render::Graph.new(world).render)
check("graph has 6 nodes") { graph["nodes"].size == 6 }
controls_edges = graph["edges"].select { |e| e["rel"] == "controls" }
check("graph has 2 controls edges") { controls_edges.size == 2 }
check("graph ashfall edge opens at tick 12") { controls_edges.any? { |e| e["tgt"] == "ashfall_reach" && e["from"] == 12 } }

# Timeline strip
strip = Lorecraft::Render::Timeline.new(world).render(entity: :glasswright_quarter)
puts "\n--- timeline: glasswright_quarter ---\n#{strip}------------------------"
check("timeline mentions the seizure") { strip.include?("the_long_quiet") }

puts "\nALL SMOKE CHECKS PASSED"
