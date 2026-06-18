# frozen_string_literal: true

require_relative "markers"

module Lorecraft
  # The object every world file is evaluated against. It exposes the top-level
  # DSL — `schema`, `timeline`, the entity-kind constructors (`faction`,
  # `location`, ...), `event`, `genesis`, and `relate` — and forwards each to
  # the World registry.
  class DefinitionContext
    def initialize(world)
      @world = world
    end

    def schema(&block)
      @world.schema.instance_eval(&block)
      # Some entity kinds collide with inherited methods (e.g. `loop` →
      # Kernel#loop), which would shadow the dynamic constructor. Undefine those
      # on this context so they route through method_missing to define_entity.
      @world.schema.kinds.each_key do |kind|
        next unless self.class.method_defined?(kind) || self.class.private_method_defined?(kind)
        next if %i[schema timeline genesis event relate].include?(kind)

        self.class.send(:undef_method, kind)
      end
    end

    def timeline(&block)
      @world.timeline.instance_eval(&block)
    end

    # `genesis :id, at: { era:, year: }` — bootstrap standing facts.
    def genesis(id, at:, dm: false, &block)
      @world.define_event(id: id, at: at, genesis: true, dm: dm, &block)
    end

    # `event :id, at:/span:, type: :war` — a narrative event with effects.
    def event(id, at: nil, span: nil, type: :incident, dm: false, seq: nil, &block)
      @world.define_event(id: id, at: at, span: span, kind: type, dm: dm, seq: seq, &block)
    end

    # `page :id, title:, wiki:` — an authored standalone wiki page (not an entity).
    def page(id, title: nil, wiki: nil, audience: :all, &block)
      @world.define_page(id: id, title: title, wiki: wiki, audience: audience, &block)
    end

    # `relate :id, :rival_of, :a, :b, since: {...}` — promote an edge to a
    # named, addressable, prose-owning relation instance.
    def relate(id, verb, source, target, since: nil, till: nil, dm: false, &block)
      @world.define_relation_instance(
        id: id, verb: verb, source: source, target: target,
        since: since, till: till, dm: dm, &block
      )
    end

    # Entity-kind constructors are resolved dynamically against the schema, so
    # any kind declared in `schema do … end` becomes a usable top-level method.
    def method_missing(name, id = nil, **opts, &block)
      if @world.schema.kind?(name)
        @world.define_entity(kind: name, id: id, **opts, &block)
      else
        super
      end
    end

    def respond_to_missing?(name, include_private = false)
      @world.schema.kind?(name) || super
    end
  end

  # The body of an `event`/`genesis` block.
  class EventBuilder
    include Markers

    def initialize(event, world)
      @event = event
      @world = world
    end

    def title(value) = @event.static_attr(:title, value)
    alias name title
    def tags(*values) = @event.static_attr(:tags, values.flatten.map(&:to_sym))
    def prominence(value) = @event.static_attr(:prominence, value.to_sym)
    def actor(id) = @event.static_attr(:actor, id.to_sym)
    def participants(*ids) = @event.static_attr(:participants, ids.flatten.map(&:to_sym))
    def outcome(subject, result) = @event.static_attr(:outcome, [subject.to_sym, result.to_sym])

    def prose(text, section: :main, heading: nil, at: nil, dm: false)
      @event.add_prose(text, section: section, heading: heading, at: at, dm: dm)
    end

    def effects(&block) = EffectsBuilder.new(@event, @world).instance_eval(&block)

    def method_missing(name, *args)
      return super if args.empty?
      @event.static_attr(name, args.size == 1 ? args.first : args)
    end

    def respond_to_missing?(*) = true
  end

  # The body of an `effects do … end` block. Each verb appends Effect records to
  # the owning event; the Resolver applies them in tick order.
  class EffectsBuilder
    def initialize(event, world)
      @event = event
      @world = world
    end

    def create(id) = add(:create, subject: id.to_sym)
    def destroy(id) = add(:destroy, subject: id.to_sym)

    # `set :subject, rel_or_attr: value` — a relation name opens a relation edge;
    # anything else sets a dynamic attribute. Array values fan out to one edge
    # each.
    def set(subject, **pairs)
      pairs.each do |key, value|
        if @world.schema.relation?(key)
          Array(value).each do |t|
            add(:set, subject: subject.to_sym, relation: key.to_sym, target: t.to_sym)
          end
        else
          add(:set, subject: subject.to_sym, attr: key.to_sym, value: value)
        end
      end
    end

    def clear(subject, relation, target = nil)
      add(:clear, subject: subject.to_sym, relation: relation.to_sym, target: target&.to_sym)
    end

    def transfer(relation, from:, to:, subject:)
      add(:clear, subject: subject.to_sym, relation: relation.to_sym, target: from.to_sym)
      add(:set, subject: subject.to_sym, relation: relation.to_sym, target: to.to_sym)
    end

    private

    def add(verb, **kw)
      @event.add_effect(Effect.new(verb: verb, **kw))
    end
  end
end
