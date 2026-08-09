# frozen_string_literal: true

module Lorecraft
  # Who wrote this world, and who has read it.
  #
  # The question the review tracker was built to answer, asked of prose blocks
  # instead of file paths. A path-keyed record dies in a reorganisation — that is
  # exactly what happened here — and a file is too coarse a unit anyway: an entry
  # is a dozen blocks written on different days by different hands.
  #
  # Declared state comes from the block. Whether a declaration is STALE comes
  # from git: if the file's prose changed after the review date, the read no
  # longer covers what is there. `content_changed_at` is supplied by the caller
  # (ReviewTracker knows how to ask git, and skips pure renames).
  class Provenance
    Row = Struct.new(:owner, :section, :origin, :drafted_by, :drafter, :reviewed, :stale,
                     keyword_init: true) do
      # The block itself said who wrote it, rather than falling back to the
      # world's default.
      def declared? = !drafted_by.nil?
      def stale? = stale == true
    end

    def initialize(world, changed_at: nil)
      @world = world
      @default_drafter = world.schema.default_drafter
      # ->(owner) { "2026-06-18T..." } — when that owner's file last changed.
      @changed_at = changed_at || ->(_owner) { nil }
    end

    def rows
      @rows ||= @world.prose_owners.flat_map do |owner|
        owner.prose_blocks.map do |b|
          Row.new(owner: owner.id, section: b.section, origin: b.origin,
                  drafted_by: b.drafted_by, drafter: b.drafted_by || @default_drafter,
                  reviewed: b.reviewed, stale: stale?(owner, b))
        end
      end
    end

    def summary
      claiming = rows.reject { |r| r.origin == :structural }
      {
        blocks: rows.size,
        declared: rows.count(&:declared?),
        by_drafter: rows.group_by(&:drafter).transform_values(&:size),
        reviewed: claiming.count { |r| r.reviewed && !r.stale? },
        stale: claiming.count(&:stale?),
        unread_machine_prose: unread_machine_prose.size,
      }
    end

    # The risk list: prose a machine drafted that no human has confirmed against
    # the writing rules, plus prose whose confirmation has expired.
    def unread_machine_prose
      rows.reject { |r| r.origin == :structural }
          .reject { |r| r.drafter == :human }
          .select { |r| r.reviewed.nil? || r.stale? }
    end

    def undeclared = rows.reject(&:declared?)

    def report
      s = summary
      out = ["=== Provenance ===",
             "  prose blocks:      #{s[:blocks]}",
             "  declared on block: #{s[:declared]}/#{s[:blocks]}#{pct(s[:declared], s[:blocks])}" \
             "#{@default_drafter ? " (rest attributed to :#{@default_drafter} by the world)" : ''}",
             "  reviewed by human: #{s[:reviewed]}#{pct(s[:reviewed], s[:blocks])}",
             "  stale reviews:     #{s[:stale]}",]
      s[:by_drafter].sort_by { |k, _v| k.to_s }.each do |drafter, n|
        out << "  #{(drafter || 'undeclared').to_s.ljust(17)} #{n}"
      end
      out << "" << "  unread machine prose: #{s[:unread_machine_prose]} block(s)"
      unread_machine_prose.first(20).each do |r|
        out << "    #{r.owner} (#{r.section})#{r.stale? ? ' — review is stale' : ''}"
      end
      remaining = s[:unread_machine_prose] - 20
      out << "    … and #{remaining} more" if remaining.positive?
      out.join("\n")
    end

    private

    def pct(part, whole) = whole.zero? ? "" : " (#{(100.0 * part / whole).round}%)"

    def stale?(owner, block)
      return false unless block.reviewed?

      changed = @changed_at.call(owner)
      changed ? changed[0, 10] > block.reviewed.to_s : false
    end
  end
end
