# frozen_string_literal: true

require_relative "errors"
require_relative "schema"
require_relative "timeline"
require_relative "elapsed"
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

    # Load a world from content files. `prelude` files (the shared schema base
    # every world in the repository builds on) are evaluated first, then the
    # world's own schema and timeline, then the remainder in sorted path order
    # so the fold tie-break (declaration order) is identical on every machine.
    def self.load(glob, prelude: [])
      world = new
      files = Dir.glob(glob).select { |f| File.file?(f) }.sort
      ordered = Array(prelude).select { |f| File.file?(f) } + pin_first(files)
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
      @relationships ||= (all_effects
                          .map { |e| e[:effect] }
                          .select { |eff| eff.verb == :set && eff.relation }
                          .map { |eff| [eff.subject, eff.relation, eff.target] } +
                          embed_edges).uniq
    end

    # [owner, :embeds, target] for every embed marker in any prose block. A
    # transclusion is a real connection — the entry cannot be read without the
    # target — so the composition web belongs in the graph, and topology and the
    # prominence-reach check see it without anyone declaring an edge.
    def embed_edges
      @embed_edges ||= prose_owners.flat_map do |owner|
        owner.prose_blocks.flat_map do |block|
          Markers.scan(block.text).filter_map do |_m, marker|
            [owner.id, :embeds, marker.id] if marker.kind == :embed
          end
        end
      end.uniq
    end

    def prose_owners = @entities.values + @moments.values + @relation_instances.values

    # [entity_id, "Name"] for every `#{future "Name"}` in prose. A future names
    # something real in the world that has no entity yet, so an entry reaching
    # mostly futures is not wrongly disconnected — it is waiting on writing, and
    # the two cases need telling apart. Deliberately not in `relationships`: the
    # engine cannot traverse to a node that does not exist. Topology reports
    # these beside degree.
    def pending_edges
      @pending_edges ||= prose_owners.flat_map do |owner|
        id = owning_entity_id(owner)
        next [] unless id

        owner.prose_blocks.flat_map do |block|
          Markers.scan(block.text).filter_map do |_m, marker|
            [id, marker.name] if marker.kind == :future
          end
        end
      end.uniq
    end

    # Prose hangs off entities, off moments (which belong to an entity) and off
    # relation instances (which belong to their source). Resolve to the entity
    # whose connectivity the prose speaks for.
    def owning_entity_id(owner)
      return owner.of if owner.respond_to?(:of)
      return owner.source if owner.respond_to?(:source)

      owner.id
    end

    # State of the world at a year (existence, dynamic attrs, live edges).
    def at(point = :now)
      year = @timeline.year_for(point)
      @resolvers[year] ||= Resolver.new(self).fold_to(year)
    end

    # --- the clock ---------------------------------------------------------
    #
    # The world owns one clock, so prose never restates a date or a span. An
    # anchor is anything that names a point in time, resolved in this order:
    #
    #   :now              the timeline's present
    #   an Integer        already an absolute year
    #   a moment id       that moment's year
    #   an era name       the era's first year
    #   an entity id      the year of its earliest moment — when it entered the
    #                     world, which is what "since the Coalition" means
    #
    # Names collide only when a moment, an era and an entity share one, and
    # those should agree; the order above decides when they do not.
    def year_of(anchor)
      return @timeline.year_for(:now) if anchor == :now
      return anchor if anchor.is_a?(Integer)

      id = anchor.to_sym
      moment = @moments[id]
      return moment.year if moment
      return @timeline.era_start(id) if @timeline.known_era?(id)

      first = moments_of(id).min_by(&:year)
      raise DefinitionError, "cannot anchor time to #{anchor.inspect}" unless first

      first.year
    end

    # The span between two anchors, as an Elapsed that knows how to say itself.
    def elapsed(from, to = :now) = Elapsed.new(year_of(from), year_of(to))

    # Does this name resolve to a point in time? Asked of a future anchor, whose
    # whole point is that it does not yet.
    def dated?(anchor)
      !year_of(anchor).nil?
    rescue DefinitionError
      false
    end

    # Every moment belonging to an entity, genesis included — genesis is often
    # exactly the "when did this begin" the clock is being asked about.
    def moments_of(id) = @moments.values.select { |m| m.home == id.to_sym }

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
