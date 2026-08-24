# frozen_string_literal: true

# Lorecraft — a Ruby internal DSL that is the single source of truth for a
# narrative world. The world is an in-memory object graph with a real temporal
# model; markdown and the graph projection are render targets, not stores.
#
#   world = Lorecraft.load(Lorecraft::Worlds.find("glass-frontier").glob)
#   world.validate!
#   world.render(:markdown, out: "build/glass-frontier/tree")
#
# The engine is world-agnostic. Which worlds this repository holds, and where
# their files live, is `worlds.yml` — see Lorecraft::Worlds.
#
# See lorecraft/README.md for authoring and docs/lorecraft-spec.md for the
# implemented language reference.
module Lorecraft
  VERSION = "0.1.0"

  # Load a world from content files (prelude, then schema/timeline, then sorted).
  def self.load(glob, prelude: [], overrides: {})
    World.load(glob, prelude: prelude, overrides: overrides)
  end

  # Define a world inline.
  def self.define(&block)
    World.define(&block)
  end
end

require_relative "lorecraft/diagnostic"
require_relative "lorecraft/world"
require_relative "lorecraft/worlds"
require_relative "lorecraft/cli_help"
require_relative "lorecraft/provenance"
require_relative "lorecraft/fact_audit"
require_relative "lorecraft/gm_note_audit"
require_relative "lorecraft/queue"
require_relative "lorecraft/web"
require_relative "lorecraft/search"
require_relative "lorecraft/narrative_query"
require_relative "lorecraft/edges"
require_relative "lorecraft/topology"
require_relative "lorecraft/focus_coverage"
require_relative "lorecraft/placement_audit"
require_relative "lorecraft/connections"
require_relative "lorecraft/schema_inspection"
require_relative "lorecraft/guide"
require_relative "lorecraft/path_query"
require_relative "lorecraft/review_editor"
