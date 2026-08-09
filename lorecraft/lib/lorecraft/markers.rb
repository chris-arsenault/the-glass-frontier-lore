# frozen_string_literal: true

module Lorecraft
  # One parsed inline binding. A marker knows its own kind and dispatches to a
  # resolver rather than every consumer re-deciding with a `case` — a ref marker
  # asks the resolver for a link, an elapsed marker for a rendered span. The
  # resolver supplies the context (wiki page, markdown tree, plain text), which
  # is why rendering is double dispatch rather than a single `#render` on the
  # marker: the same ref renders as `[[Title]]` in the wiki, a relative link in
  # the markdown tree, and bare text in a lint pass.
  #
  # Validation is a resolver too. "Check that this marker resolves" and "render
  # this marker" are the same traversal with different `on_*` bodies, so the
  # validator carries no `case` on kind either.
  #
  # Markers still answer `[]` so read-only consumers that only want `b[:kind]`
  # or `b[:id]` need no change.
  class Marker
    attr_reader :match, :attrs

    def initialize(match, **attrs)
      @match = match
      @attrs = attrs
    end

    def kind = self.class::KIND
    def id = @attrs[:id]
    def [](key) = key == :kind ? kind : @attrs[key]
    def to_h = @attrs.merge(kind: kind)

    # Ask `resolver` to render this marker. Subclasses name the callback.
    def resolve(resolver) = raise(NotImplementedError, "#{self.class} cannot resolve")

    # The bare display text this marker collapses to with no resolver at all —
    # what Markers.strip uses to reduce prose to plain words for lint and
    # search. Resolver-free, so it never needs a world.
    def plain = raise(NotImplementedError, "#{self.class} has no plain form")
  end

  class RefMarker < Marker
    KIND = :ref
    def resolve(resolver) = resolver.on_ref(self)
    def plain = @attrs[:text] || id&.to_s || @attrs[:path] || ""
  end

  class RelMarker < Marker
    KIND = :rel
    def verb = @attrs[:verb]
    def resolve(resolver) = resolver.on_rel(self)
    def plain = verb.to_s
  end

  class FutureMarker < Marker
    KIND = :future
    def name = @attrs[:name]
    def resolve(resolver) = resolver.on_future(self)
    def plain = name
  end

  # A passage owned by another entity, rendered in place. The composition
  # primitive: one entity owns a fact and every other entry that needs it
  # transcludes rather than restating.
  class EmbedMarker < Marker
    KIND = :embed
    def section = @attrs[:section] || :main
    def resolve(resolver) = resolver.on_embed(self)
    def plain = "[embed:#{id}]"
  end

  # A span the timeline computes. `plain` cannot state it — no world, no
  # arithmetic — so it collapses to a readable placeholder for lint and search.
  class ElapsedMarker < Marker
    KIND = :elapsed
    def from = @attrs[:from]
    def to = @attrs[:to] || :now
    def style = @attrs[:approx] ? :approximate : :exact
    def ago? = @attrs[:ago] == true
    def resolve(resolver) = resolver.on_elapsed(self)
    def plain = "[elapsed:#{from}→#{to}]"
  end

  class YearMarker < Marker
    KIND = :year
    def at = @attrs[:at]
    def resolve(resolver) = resolver.on_year(self)
    def plain = "[year:#{at}]"
  end

  # Prose carries inline bindings — `ref` (a cross-reference to another entity),
  # `rel` (the live target(s) of one of the owner's relations at the render
  # era), and `future` (a placeholder for a not-yet-written entity). Because
  # prose is authored as ordinary interpolated strings
  # (`"... #{ref :elves} ..."`), these helpers must return a *string* that is
  # embedded verbatim and rewritten later by a renderer.
  #
  # Bindings are encoded as sentinels delimited by a Private-Use-Area code point
  # that never occurs in lore prose, and are always resolved away before
  # anything is written to disk. Renderers scan the assembled text and resolve
  # each binding against the world at a specific era; the validator scans them
  # to confirm every symbol target resolves.
  module Markers
    SEP = ""
    REF = "#{SEP}REF#{SEP}".freeze
    REL = "#{SEP}REL#{SEP}".freeze
    FUT = "#{SEP}FUT#{SEP}".freeze
    EMB = "#{SEP}EMB#{SEP}".freeze
    ELA = "#{SEP}ELA#{SEP}".freeze
    YER = "#{SEP}YER#{SEP}".freeze
    FIELD = "#{SEP}|#{SEP}".freeze
    ENDM = "#{SEP}END#{SEP}".freeze

    # A cross-reference. `target` is normally an entity id (Symbol); pass `path:`
    # instead for a link to a non-entity page (an index, a meta doc). `text`
    # overrides the rendered label; `anchor` deep-links a section.
    def ref(target = nil, text = nil, path: nil, anchor: nil)
      id = target.nil? ? "" : target.to_s
      [REF, id, FIELD, text, FIELD, path, FIELD, anchor, ENDM].join
    end

    # The live value(s) of one of the owning entity's relations at the render
    # era. `verb` is the relation name; `target` optionally pins a single edge.
    def rel(verb, target = nil)
      [REL, verb, FIELD, target, ENDM].join
    end

    # A placeholder for a named thing with no entity yet (a shell). NOT a
    # resolution error — renders as `[future:Name]`, which downstream wiki
    # generation turns into a stub. Preserves the repo's `[future:...]`
    # convention.
    def future(name)
      [FUT, name, ENDM].join
    end

    # TRANSCLUSION: render another entity's prose in place, or one named section
    # of it. This is how a fact gets stated once — the entity that owns it writes
    # it, and every entry that needs it embeds. Every embed also becomes a
    # derived `embeds` edge, so the composition web is in the graph without
    # anyone declaring it.
    #
    #   #{embed :bloom_coalition}              — the target's :main prose
    #   #{embed :bloom_coalition, :tensions}   — one section of it
    def embed(target, section = nil)
      [EMB, target.to_s, FIELD, section, ENDM].join
    end

    # A COMPUTED SPAN between two points on the timeline. Never write the number
    # — the timeline knows both dates, and a typed figure is a copy that goes
    # stale the moment an era moves. Anchors are anything `World#year_of`
    # accepts: `:now`, a year, a moment id, an era name, or an entity id.
    #
    #   "the ring broke #{elapsed :the_glassfall, ago: true}"    → 295 years ago
    #   "debris has had #{elapsed :the_glassfall, approx: true}"  → nearly three centuries
    #   "isolated for #{elapsed :the_glassfall, :the_rekindling}" → 165 years
    #
    # `approx: true` asks for the rounded phrase in words; the default is the
    # figure in digits. `ago: true` appends "ago".
    def elapsed(from, to = nil, approx: false, ago: false)
      [ELA, from, FIELD, to, FIELD, approx, FIELD, ago, ENDM].join
    end

    # The absolute year of a point on the timeline, in digits. Same anchors.
    #   "Hab Meridian in #{year :now} CE"   → Hab Meridian in 2435 CE
    def year(at = :now)
      [YER, at, ENDM].join
    end

    F = Regexp.escape(FIELD)
    E = Regexp.escape(ENDM)
    REF_RE = /#{Regexp.escape(REF)}(.*?)#{F}(.*?)#{F}(.*?)#{F}(.*?)#{E}/m
    REL_RE = /#{Regexp.escape(REL)}(.*?)#{F}(.*?)#{E}/m
    FUT_RE = /#{Regexp.escape(FUT)}(.*?)#{E}/m
    EMB_RE = /#{Regexp.escape(EMB)}(.*?)#{F}(.*?)#{E}/m
    ELA_RE = /#{Regexp.escape(ELA)}(.*?)#{F}(.*?)#{F}(.*?)#{F}(.*?)#{E}/m
    YER_RE = /#{Regexp.escape(YER)}(.*?)#{E}/m
    ANY_RE = /#{REF_RE}|#{REL_RE}|#{FUT_RE}|#{EMB_RE}|#{ELA_RE}|#{YER_RE}/m

    # Parse every binding in a blob of assembled prose, in document order.
    # Yields the full matched substring and the Marker describing the binding.
    def self.scan(text)
      return enum_for(:scan, text) unless block_given?

      text.to_enum(:scan, ANY_RE).each do
        m = Regexp.last_match
        yield m[0], build(m)
      end
    end

    # Sentinel prefix → the Marker subclass it opens, with the capture groups
    # ANY_RE assigns to that alternative. A future has no prefix entry; it is
    # the fallback, since FUT is the only alternative left once the others miss.
    BUILDERS = [
      [REF, lambda { |m|
        RefMarker.new(m[0], id: sym(m[1]), text: str(m[2]), path: str(m[3]), anchor: str(m[4]))
      },],
      [REL, ->(m) { RelMarker.new(m[0], verb: m[5].to_sym, target: sym(m[6])) }],
      [EMB, ->(m) { EmbedMarker.new(m[0], id: m[8].to_sym, section: sym(m[9])) }],
      [ELA, lambda { |m|
        ElapsedMarker.new(m[0], from: anchor(m[10]), to: anchor(m[11]),
                                approx: m[12] == "true", ago: m[13] == "true")
      },],
      [YER, ->(m) { YearMarker.new(m[0], at: anchor(m[14]) || :now) }],
    ].freeze

    # Turn one regexp match into the Marker subclass that models it.
    def self.build(match)
      _, builder = BUILDERS.find { |prefix, _| match[0].start_with?(prefix) }
      builder ? builder.call(match) : FutureMarker.new(match[0], name: match[7])
    end

    def self.blank(str) = str.nil? || str.empty?
    def self.str(value) = blank(value) ? nil : value
    def self.sym(value) = blank(value) ? nil : value.to_sym

    # A time anchor survives the round trip through a sentinel as text, so a
    # bare integer year has to come back an Integer and everything else a
    # Symbol — `World#year_of` distinguishes the two.
    def self.anchor(value)
      return nil if blank(value)

      value.match?(/\A-?\d+\z/) ? value.to_i : value.to_sym
    end

    # Strip every binding sentinel back to bare display text.
    def self.strip(text)
      out = text.dup
      scan(text) { |match, marker| out = out.sub(match, marker.plain) }
      out
    end
  end
end
