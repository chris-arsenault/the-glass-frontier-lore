# frozen_string_literal: true

module Lorecraft
  # Who wrote this world, and who has read it.
  #
  # The question the review tracker was built to answer, asked of prose blocks
  # instead of file paths. A path-keyed record dies in a reorganisation — that is
  # exactly what happened here — and a file is too coarse a unit anyway: an entry
  # is a dozen blocks written on different days by different hands.
  #
  # Declared state comes from the content. Whether a declaration is STALE comes
  # from git: if the prose changed after the review date, the read no longer
  # covers what is there.
  class Provenance
    Row = Struct.new(:owner, :section, :origin, :drafted_by, :drafter, :reviewed, :stale,
                     keyword_init: true) do
      # The block itself said who wrote it, rather than falling back to the
      # world's default.
      def declared? = !drafted_by.nil?
      def stale? = stale == true
    end

    # `root` is a world root; given one, git answers when each entry's prose last
    # changed. `changed_at` overrides that for tests — a lambda taking the owner
    # and returning an ISO timestamp.
    def initialize(world, root: nil, changed_at: nil, entity: nil)
      @world = world
      @default_drafter = world.schema.default_drafter
      @changed_at = changed_at || (root ? git_history(root) : ->(_owner) { nil })
      @entity = entity && (world.entity(entity.to_sym) || raise(Error, "unknown entity: #{entity}"))
    end

    def rows
      owners = @entity ? [@entity] : @world.prose_owners
      @rows ||= owners.flat_map do |owner|
        # An entry-level `reviewed` date covers every block in it; a block that
        # was read separately says so itself.
        entry_reviewed = owner.respond_to?(:[]) ? owner[:reviewed] : nil
        owner.authored_blocks.map do |b|
          read_on = b.reviewed || entry_reviewed
          Row.new(owner: owner.id, section: b.section, origin: b.origin,
                  drafted_by: b.drafted_by, drafter: b.drafted_by || @default_drafter,
                  reviewed: read_on, stale: stale?(owner, read_on))
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
      title = @entity ? " — #{@entity.title} (#{@entity.id})" : ""
      out = ["=== Provenance#{title} ===",
             "  authored blocks:   #{s[:blocks]}",
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

    def data
      totals = summary
      totals = totals.merge(
        by_drafter: totals[:by_drafter].map do |drafter, count|
          { drafter: drafter, count: count }
        end
      )
      {
        scope: @entity ? "entity" : "world",
        entity: (@entity && { id: @entity.id, title: @entity.title }),
        summary: totals,
        blocks: rows.map do |row|
          row.to_h.merge(declared: row.declared?)
        end,
      }.compact
    end

    private

    # When each entry's prose last changed, from git. Moving a file is not a
    # change to it, so a commit where the file was only renamed (R100 — identical
    # content at a new path) is skipped: reorganising a repository must not expire
    # every review at once, which is exactly what it used to do.
    def git_history(root)
      root = Pathname.new(root).expand_path
      cache = {}
      lambda do |owner|
        file = owner.respond_to?(:source_file) && owner.source_file
        next nil unless file

        rel = Pathname.new(file).expand_path.relative_path_from(root).to_s
        cache.fetch(rel) { cache[rel] = last_content_change(root, rel) }
      end
    end

    def last_content_change(root, rel)
      out = `git -C #{root} log --follow -M --format=%aI --name-status -- #{rel} 2>/dev/null`
      date = nil
      out.each_line do |line|
        line = line.chomp
        next if line.empty?

        if line.match?(/\A\d{4}-\d{2}-\d{2}T/)
          date = line
        elsif !line.start_with?("R100")
          return date
        end
      end
      nil
    end

    def pct(part, whole) = whole.zero? ? "" : " (#{(100.0 * part / whole).round}%)"

    # A read covers the text as it stood. If the prose changed on or after that
    # date the read is expired — same-day counts, because a date cannot say which
    # came first and the safe answer is "read it again".
    def stale?(owner, read_on)
      return false if read_on.nil?

      changed = @changed_at.call(owner)
      changed ? changed[0, 10] >= read_on.to_s : false
    end
  end
end
