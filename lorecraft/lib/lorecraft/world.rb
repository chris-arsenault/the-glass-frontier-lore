# frozen_string_literal: true

require_relative "errors"
require_relative "schema"
require_relative "timeline"
require_relative "prose"
require_relative "entity"
require_relative "moment"
require_relative "relation"
require_relative "page"
require_relative "definition_context"

module Lorecraft
  # The in-memory object graph and the single source of truth. Holds the schema,
  # the timeline, and the registries of entities, moments, and named relations.
  # Loading is a deterministic two pass over the content files; querying state
  # at a time is delegated to the Resolver (lazily built and memoised per year).
  class World
    attr_reader :schema, :timeline, :entities, :moments, :relation_instances, :authored_pages

    def initialize
      @schema = Schema.new
      @timeline = Timeline.new
      @entities = {}
      @moments = {}
      @relation_instances = {}
      @authored_pages = {}
      @load_index = 0
      @resolvers = {}
    end

    # --- construction ------------------------------------------------------

    # Define a world inline (used in tests and small worlds).
    def self.define(&block)
      world = new
      DefinitionContext.new(world).instance_eval(&block)
      world.finalize!
      world
    end

    # Load a world from content files. Schema and timeline files are always
    # evaluated first; the remainder are loaded in sorted path order so the fold
    # tie-break (declaration order) is identical on every machine.
    def self.load(glob)
      world = new
      files = Dir.glob(glob).select { |f| File.file?(f) }.sort
      ordered = pin_first(files)
      ctx = DefinitionContext.new(world)
      ordered.each do |file|
        world.instance_variable_set(:@current_file, file)
        ctx.instance_eval(File.read(file, encoding: "UTF-8"), file)
      end
      world.finalize!
      world
    end

    def self.pin_first(files)
      first = files.select { |f| %w[schema.rb timeline.rb].include?(File.basename(f)) }
      first.sort_by { |f| File.basename(f) } + (files - first)
    end

    def define_entity(kind:, id:, **_opts, &block)
      id = id.to_sym
      raise DefinitionError, "duplicate entity id #{id}" if @entities.key?(id) || @moments.key?(id)

      entity = Entity.new(id: id, kind: kind, source_file: @current_file)
      entity.build(self, &block)
      @entities[id] = entity
    end

    def define_moment(id:, at: nil, span: nil, of: nil, kind: :incident, genesis: false, dm: false, seq: nil, &block)
      id = id.to_sym
      raise DefinitionError, "duplicate id #{id}" if @entities.key?(id) || @moments.key?(id)

      moment = Moment.new(
        id: id, timeline: @timeline, kind: kind, at: at, span: span, of: of,
        genesis: genesis, dm: dm, seq: seq, source_file: @current_file,
        load_index: (@load_index += 1)
      )
      MomentBuilder.new(moment, self).instance_eval(&block) if block
      @moments[id] = moment
    end

    def define_page(id:, title: nil, wiki: nil, audience: :all, &block)
      id = id.to_sym
      raise DefinitionError, "duplicate page id #{id}" if @authored_pages.key?(id)

      @authored_pages[id] = Page.new(id: id, title: title, wiki: wiki, audience: audience).build(&block)
    end

    def define_relation_instance(id:, verb:, source:, target:, since: nil, till: nil, dm: false, &block)
      id = id.to_sym
      raise DefinitionError, "duplicate id #{id}" if @relation_instances.key?(id)

      inst = RelationInstance.new(
        id: id, verb: verb, source: source, target: target,
        timeline: @timeline, since: since, till: till, dm: dm
      )
      inst.build(self, &block)
      @relation_instances[id] = inst
    end

    # Called once loading is complete. Reserved for derived indexes; kept so the
    # load path has a single completion hook.
    def finalize!
      @resolvers.clear
      self
    end

    # --- lookup ------------------------------------------------------------

    def [](id)
      id = id.to_sym
      @entities[id] || @moments[id] || @relation_instances[id]
    end

    def entity(id) = @entities[id.to_sym]
    def moment(id) = @moments[id.to_sym]
    def known_id?(id) = @entities.key?(id.to_sym) || @moments.key?(id.to_sym)

    # Every renderable page-bearing node: entities plus narrative moments (which
    # own pages). Genesis moments are pure bootstrap — they carry effects but no
    # page — so they are excluded here while still contributing to all_effects.
    def pages = @entities.values + @moments.values.reject(&:genesis?)

    # --- effects & temporal state -----------------------------------------

    # All state-changing effects in the world, each paired with the year it
    # fires at and a deterministic sort key. Moment effects fire at the moment's
    # year; named relation instances are lowered to set/clear effects at their
    # interval boundaries.
    def all_effects
      return @all_effects if defined?(@all_effects) && @all_effects

      list = []
      @moments.values.each do |ev|
        ev.effects.each_with_index do |eff, i|
          list << { effect: eff, year: ev.year, key: ev.sort_key + [i], source: ev.id, dm: ev.dm? }
        end
      end
      @relation_instances.values.each do |ri|
        list << {
          effect: Effect.new(verb: :set, subject: ri.source, relation: ri.verb, target: ri.target),
          year: ri.from_year, key: [ri.from_year, 0, 0, ri.id.to_s], source: ri.id, dm: ri.dm?
        }
        if ri.to_year
          list << {
            effect: Effect.new(verb: :clear, subject: ri.source, relation: ri.verb, target: ri.target),
            year: ri.to_year, key: [ri.to_year, 0, 0, ri.id.to_s], source: ri.id, dm: ri.dm?
          }
        end
      end
      @all_effects = list.sort_by { |e| e[:key] }
    end

    # Distinct relationship triples [subject, verb, target] across all time —
    # the atemporal graph view, used for structural lint checks (cycles,
    # antisymmetry, orphans).
    def relationships
      @relationships ||= all_effects
                         .map { |e| e[:effect] }
                         .select { |eff| eff.verb == :set && eff.relation }
                         .map { |eff| [eff.subject, eff.relation, eff.target] }
                         .uniq
    end

    # State of the world at a year (existence, dynamic attrs, live edges).
    def at(point = :now)
      year = @timeline.year_for(point)
      @resolvers[year] ||= Resolver.new(self).fold_to(year)
    end

    def render(target, **opts)
      Render.for(target).new(self).render(**opts)
    end

    def validate
      Validator.new(self).validate
    end

    def lint(root: Dir.pwd)
      Linter.new(self, root: root).run
    end

    def validate!
      Validator.new(self).validate!
    end
  end
end

require_relative "resolver"
require_relative "validator"
require_relative "linter"
require_relative "render"
