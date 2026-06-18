# frozen_string_literal: true

# Lorecraft — a Ruby internal DSL that is the single source of truth for a
# narrative world. The world is an in-memory object graph with a real temporal
# model; markdown and the graph projection are render targets, not stores.
#
#   world = Lorecraft.load("world/**/*.rb")
#   world.validate!
#   world.render(:markdown, out: "build/tree")
#
# See SYSTEM in the repo for the authoring guide.
module Lorecraft
  VERSION = "0.1.0"

  # Load a world from content files (schema/timeline first, then sorted).
  def self.load(glob)
    World.load(glob)
  end

  # Define a world inline.
  def self.define(&block)
    World.define(&block)
  end
end

require_relative "lorecraft/world"
require_relative "lorecraft/review"
