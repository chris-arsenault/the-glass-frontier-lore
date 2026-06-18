# frozen_string_literal: true

module Lorecraft
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
    REF = "#{SEP}REF#{SEP}"
    REL = "#{SEP}REL#{SEP}"
    FUT = "#{SEP}FUT#{SEP}"
    FIELD = "#{SEP}|#{SEP}"
    ENDM = "#{SEP}END#{SEP}"

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

    F = Regexp.escape(FIELD)
    E = Regexp.escape(ENDM)
    REF_RE = /#{Regexp.escape(REF)}(.*?)#{F}(.*?)#{F}(.*?)#{F}(.*?)#{E}/m
    REL_RE = /#{Regexp.escape(REL)}(.*?)#{F}(.*?)#{E}/m
    FUT_RE = /#{Regexp.escape(FUT)}(.*?)#{E}/m
    ANY_RE = /#{REF_RE}|#{REL_RE}|#{FUT_RE}/m

    # Parse every binding in a blob of assembled prose, in document order.
    # Yields the full matched substring and a Hash describing the binding.
    def self.scan(text)
      return enum_for(:scan, text) unless block_given?

      text.to_enum(:scan, ANY_RE).each do
        m = Regexp.last_match
        if m[0].start_with?(REF)
          yield m[0], { kind: :ref,
                        id: blank(m[1]) ? nil : m[1].to_sym,
                        text: blank(m[2]) ? nil : m[2],
                        path: blank(m[3]) ? nil : m[3],
                        anchor: blank(m[4]) ? nil : m[4] }
        elsif m[0].start_with?(REL)
          yield m[0], { kind: :rel,
                        verb: m[5].to_sym,
                        target: blank(m[6]) ? nil : m[6].to_sym }
        else
          yield m[0], { kind: :future, name: m[7] }
        end
      end
    end

    def self.blank(s) = s.nil? || s.empty?

    # Strip every binding sentinel back to bare display text.
    def self.strip(text)
      out = text.dup
      scan(text) do |match, b|
        replacement =
          case b[:kind]
          when :ref then b[:text] || b[:id]&.to_s || b[:path] || ""
          when :rel then b[:verb].to_s
          when :future then b[:name]
          end
        out = out.sub(match, replacement)
      end
      out
    end
  end
end
