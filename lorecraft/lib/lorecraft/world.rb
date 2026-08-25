# frozen_string_literal: true

require "set"
require_relative "errors"
require_relative "schema"
require_relative "timeline"
require_relative "elapsed"
require_relative "prose"
require_relative "narrative_document"
require_relative "facts"
require_relative "identity"
require_relative "entity"
require_relative "moment"
require_relative "relation"
require_relative "spatial"
require_relative "page"
require_relative "definition_context"

module Lorecraft
  # The in-memory object graph and the single source of truth. Holds the schema,
  # the timeline, and the registries of entities, moments, and named relations.
  # Loading is a deterministic two pass over the content files; querying state
  # at a time is delegated to the Resolver (lazily built and memoised per year).
  class World
    attr_reader :schema, :timeline, :entities, :moments, :relation_instances,
                :authored_pages, :chronicles, :era_narratives, :event_records,
                :spatial_frames

    def initialize
      @schema = Schema.new
      @timeline = Timeline.new
      @entities = {}
      @moments = {}
      @relation_instances = {}
      @authored_pages = {}
      @chronicles = {}
      @era_narratives = {}
      @event_records = {}
      @spatial_frames = {}
      @load_index = 0
      @resolvers = {}
      @identity_resolvers = {}
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
    def self.load(glob, prelude: [], overrides: {})
      world = new
      files = Dir.glob(glob).select { |f| File.file?(f) }.sort
      ordered = Array(prelude).select { |f| File.file?(f) } + pin_first(files)
      staged = overrides.to_h.transform_keys { |file| File.expand_path(file.to_s) }
      ctx = DefinitionContext.new(world)
      ordered.each do |file|
        world.instance_variable_set(:@current_file, file)
        source = staged.fetch(File.expand_path(file)) { File.read(file, encoding: "UTF-8") }
        ctx.instance_eval(source, file)
      end
      world.finalize!
      world
    end

    def self.pin_first(files)
      first = files.select { |f| %w[schema.rb timeline.rb].include?(File.basename(f)) }
      first.sort_by { |f| File.basename(f) } + (files - first)
    end

    def define_entity(kind:, id:, source_line: nil, **_opts, &block)
      id = id.to_sym
      raise DefinitionError, "duplicate entity id #{id}" if @entities.key?(id) || @moments.key?(id)

      entity = Entity.new(
        id: id, kind: kind, source_file: @current_file, source_line: source_line
      )
      entity.build(self, &block)
      @entities[id] = entity
    end

    def define_moment(id:, at: nil, span: nil, of: nil, kind: :incident,
                      genesis: false, dm: false, seq: nil, source_line: nil, &block)
      id = id.to_sym
      raise DefinitionError, "duplicate id #{id}" if @entities.key?(id) || @moments.key?(id)

      moment = Moment.new(
        id: id, timeline: @timeline, kind: kind, at: at, span: span, of: of,
        genesis: genesis, dm: dm, seq: seq, source_file: @current_file,
        source_line: source_line,
        load_index: (@load_index += 1)
      )
      MomentBuilder.new(moment, self).instance_eval(&block) if block
      @moments[id] = moment
    end

    def define_page(id:, title: nil, wiki: nil, audience: :all, source_line: nil, &block)
      id = id.to_sym
      raise DefinitionError, "duplicate page id #{id}" if @authored_pages.key?(id)

      @authored_pages[id] = Page.new(
        id: id, title: title, wiki: wiki, audience: audience,
        source_file: @current_file, source_line: source_line
      ).build(&block)
    end

    def define_narrative_document(id:, document_type:, source_line: nil, &block)
      id = id.to_sym
      registry = document_type.to_sym == :chronicle ? @chronicles : @era_narratives
      raise DefinitionError, "duplicate #{document_type} id #{id}" if registry.key?(id)

      registry[id] = NarrativeDocument.new(
        id: id,
        document_type: document_type,
        source_file: @current_file,
        source_line: source_line,
      ).build(self, &block)
    end

    def define_event_record(id:, tick:, era:, event_kind:, subject: nil, action: nil,
                            description: nil, significance: nil, tags: [], participants: [],
                            participant_effects: [], caused_by: nil, source_line: nil)
      key = id.to_s
      raise DefinitionError, "duplicate event record id #{key}" if @event_records.key?(key)

      @event_records[key] = EventRecord.new(
        id: key,
        tick: tick,
        era: era,
        event_kind: event_kind,
        subject: subject,
        action: action,
        description: description,
        significance: significance,
        tags: tags,
        participants: participants,
        participant_effects: participant_effects,
        caused_by: caused_by,
        source_file: @current_file,
        source_line: source_line,
      )
    end

    def define_relation_instance(id:, verb:, source:, target:, since: nil, till: nil,
                                 dm: false, props: {}, source_line: nil, &block)
      id = id.to_sym
      raise DefinitionError, "duplicate id #{id}" if @relation_instances.key?(id)

      inst = RelationInstance.new(
        id: id, verb: verb, source: source, target: target,
        timeline: @timeline, since: since, till: till, dm: dm, props: props,
        source_file: @current_file, source_line: source_line
      )
      inst.build(self, &block)
      @relation_instances[id] = inst
    end

    def define_spatial_frame(name:, origin:, coordinates:, parent: nil, radial_unit: nil,
                             prime_meridian: nil, source_line: nil)
      name = name.to_sym
      raise DefinitionError, "duplicate spatial frame #{name}" if @spatial_frames.key?(name)

      @spatial_frames[name] = SpatialFrame.new(
        name: name,
        origin: origin.to_sym,
        parent: parent&.to_sym,
        coordinates: coordinates.to_sym,
        radial_unit: radial_unit&.to_sym,
        prime_meridian: prime_meridian&.to_sym,
        source_file: @current_file,
        source_line: source_line
      )
    end

    # Called once loading is complete. Reserved for derived indexes; kept so the
    # load path has a single completion hook.
    def finalize!
      @resolvers.clear
      @identity_resolvers.clear
      self
    end

    # --- lookup ------------------------------------------------------------

    def [](id)
      id = id.to_sym
      @entities[id] || @moments[id] || @relation_instances[id]
    end

    def entity(id) = @entities[id.to_sym]
    def moment(id) = @moments[id.to_sym]
    def chronicle(id) = @chronicles[id.to_sym]
    def era_narrative(id) = @era_narratives[id.to_sym]
    def event_record(id) = @event_records[id.to_s]
    def relationship_for_source(id)
      @relation_instances.values.find { |relation| relation.source_id == id.to_s }
    end

    def resolve_identity(owner, at: :now, audience: :all)
      year = @timeline.year_for(at)
      resolver = (@identity_resolvers[[year, audience.to_sym]] ||=
        IdentityResolver.new(self, at: year, audience: audience))
      resolver.resolve(owner)
    end
    def known_id?(id) = @entities.key?(id.to_sym) || @moments.key?(id.to_sym)

    # Every renderable page-bearing node: entities plus narrative moments (which
    # own pages). Genesis moments are pure bootstrap — they carry effects but no
    # page — so they are excluded here while still contributing to all_effects.
    def pages = @entities.values + @moments.values.reject(&:genesis?)

    # Canonical page-bearing nodes include both world entities and reference
    # articles. Shells remain addressable graph endpoints but have no page.
    def canonical_nodes(include_shells: false)
      pages.reject { |node| !include_shells && shell?(node) }
    end

    # The game-world graph excludes reference articles and every relationship
    # incident to one. Veiled entities remain in this raw scope because they are
    # canonical people, factions, artifacts, and other things in the world.
    def game_world_nodes(include_shells: false, include_veiled: true)
      canonical_nodes(include_shells: include_shells).reject do |node|
        (node.respond_to?(:article?) && node.article?) ||
          (!include_veiled && node.respond_to?(:veiled?) && node.veiled?)
      end
    end

    def game_world_entities(include_shells: false, include_veiled: true)
      game_world_nodes(include_shells: include_shells, include_veiled: include_veiled)
        .select { |node| node.is_a?(Entity) }
    end

    # The entries a running game can be offered, and so the ones GM notes are
    # written for. A veiled entry is a tagline and nothing else, a structural
    # entry is bookkeeping, and a DM entry reaches no table through the public
    # slice.
    def gm_note_entities
      game_world_entities(include_veiled: false).reject do |entity|
        entity.dm? || entity.structural? || !schema.wiki_kind?(entity.kind)
      end
    end

    # Induce the graph from the selected game-world nodes. This prevents an
    # article from continuing to affect degree or reachability through its
    # incident edges after the article node itself has been removed.
    def game_world_relationships(include_shells: false, include_veiled: true)
      ids = game_world_nodes(
        include_shells: include_shells, include_veiled: include_veiled
      ).map(&:id).to_set
      relationships.select { |subject, _verb, target| ids.include?(subject) && ids.include?(target) }
    end

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
          effect: Effect.new(
            verb: :set, subject: ri.source, relation: ri.verb, target: ri.target, props: ri.props
          ),
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
    def embed_edges(audience: :all)
      @embed_edges ||= {}
      @embed_edges[audience] ||= prose_owners.flat_map do |owner|
        next [] if audience == :player && owner.respond_to?(:dm?) && owner.dm?

        owner.prose_blocks.flat_map do |block|
          next [] if audience == :player && block.dm?

          Markers.scan(block.text).filter_map do |_m, marker|
            [owner.id, :embeds, marker.id] if marker.kind == :embed
          end
        end
      end.uniq
    end

    def prose_owners = @entities.values + @moments.values + @relation_instances.values
    def narrative_documents = @chronicles.values + @era_narratives.values
    def authored_owners = prose_owners + narrative_documents + @authored_pages.values
    def published_context_owners = @entities.values + narrative_documents

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

    def validation_diagnostics(root: Dir.pwd)
      Validator.new(self, root: root).diagnostics
    end

    def lint(root: Dir.pwd)
      Linter.new(self, root: root).run
    end

    def lint_diagnostics(root: Dir.pwd)
      Linter.new(self, root: root).diagnostics
    end

    def validate!
      Validator.new(self).validate!
    end

    private

    def shell?(node)
      node.respond_to?(:[]) && node[:status].to_s == "shell"
    end
  end
end

require_relative "resolver"
require_relative "validator"
require_relative "linter"
require_relative "render"
