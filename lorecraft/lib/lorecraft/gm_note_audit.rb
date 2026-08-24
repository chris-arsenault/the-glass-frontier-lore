# frozen_string_literal: true

require "set"

module Lorecraft
  # Coverage and repetition across a world's GM notes.
  #
  # Coverage is the work list: which entries a running game can be offered still
  # have no instruction for running them. Repetition is the quality gate. Notes
  # written in bulk converge on one sentence skeleton, and the drift shows up
  # between batches rather than inside one, so every measurement here runs
  # against the whole corpus at once:
  #
  #   duplicates   note pairs whose three-word shingles overlap past a threshold
  #   openings     an opening phrase more than a few notes share
  #   echoes       a note that restates its own entry's summary
  #
  # Each finding is a rewrite, so the command exits nonzero while any remain.
  class GmNoteAudit
    DUPLICATE_SIMILARITY = 0.5
    ECHO_SIMILARITY = 0.6
    OPENING_WORDS = 3
    OPENING_REPEAT_MAXIMUM = 3

    Note = Struct.new(:entity, :kind, :text, :order, :words, :shingles, keyword_init: true) do
      def id = "#{entity.id}##{order}"
      def opening = words.first(OPENING_WORDS).join(" ")
    end

    def initialize(world, entity: nil)
      @world = world
      @entity = entity && (world.entity(entity.to_sym) || raise(Error, "unknown entity: #{entity}"))
    end

    def report
      return entry_report if @entity

      out = ["=== GM Notes ===", ""]
      out << "coverage: #{covered.size}/#{candidates.size} entries carry a note " \
             "(#{notes.size} notes; #{kind_counts.map { |k, n| "#{k} #{n}" }.join(', ')})"
      out << ""
      out << "by prominence"
      coverage_by_prominence.each do |level, (with_notes, total)|
        out << "  #{level.to_s.ljust(12)} #{with_notes}/#{total}"
      end
      out << ""
      out << "by kind"
      coverage_by_kind.each do |kind, (with_notes, total)|
        out << "  #{kind.to_s.ljust(22)} #{with_notes}/#{total}"
      end

      out << ""
      out << "uncovered: #{uncovered.size}"
      uncovered.each_slice(6) { |slice| out << "  #{slice.map(&:id).join(', ')}" }

      out << ""
      out << "duplicate pairs (shingle overlap ≥ #{DUPLICATE_SIMILARITY}): #{duplicates.size}"
      duplicates.each do |pair|
        out << "  #{pair[:similarity].round(2)}  #{pair[:left]} / #{pair[:right]}"
        out << "      #{pair[:left_text]}"
        out << "      #{pair[:right_text]}"
      end

      out << ""
      out << "openings used by more than #{OPENING_REPEAT_MAXIMUM} notes: #{overused_openings.size}"
      overused_openings.each do |row|
        out << "  #{row[:count]}× “#{row[:opening]}” — #{row[:notes].join(', ')}"
      end

      out << ""
      out << "notes restating their own entry summary (≥ #{ECHO_SIMILARITY}): #{echoes.size}"
      echoes.each { |row| out << "  #{row[:similarity].round(2)}  #{row[:note]}: #{row[:text]}" }

      out << ""
      out << (clean? ? "no repetition findings" : "#{findings_count} finding(s) to rewrite")
      out.join("\n")
    end

    def data
      return entry_data if @entity

      {
        scope: "world",
        candidate_count: candidates.size,
        covered_count: covered.size,
        note_count: notes.size,
        kind_counts: kind_counts,
        coverage_by_prominence: coverage_by_prominence.transform_values do |(with_notes, total)|
          { covered: with_notes, total: total }
        end,
        coverage_by_kind: coverage_by_kind.transform_values do |(with_notes, total)|
          { covered: with_notes, total: total }
        end,
        uncovered: uncovered.map { |entity| entity.id.to_s },
        duplicates: duplicates,
        overused_openings: overused_openings,
        echoes: echoes,
        findings_count: findings_count,
        status: clean? ? "ok" : "findings",
      }
    end

    def findings_count = duplicates.size + overused_openings.size + echoes.size

    def clean? = findings_count.zero?

    private

    def entry_report
      out = ["=== GM Notes — #{@entity.title} (#{@entity.id}) ==="]
      if @entity.gm_notes.empty?
        out << "  none declared"
        return out.join("\n")
      end

      @entity.gm_notes.sort_by(&:order).each do |note|
        out << "  #{note.kind}: #{plain(note.text)}"
      end
      out.join("\n")
    end

    def entry_data
      {
        scope: "entity",
        entity: { id: @entity.id.to_s, title: @entity.title },
        notes: @entity.gm_notes.sort_by(&:order).map do |note|
          { kind: note.kind.to_s, text: plain(note.text) }
        end,
      }
    end

    def candidates
      @candidates ||= @world.gm_note_entities.sort_by { |entity| entity.id.to_s }
    end

    def covered = @covered ||= candidates.reject { |entity| entity.gm_notes.empty? }

    def uncovered = @uncovered ||= candidates.select { |entity| entity.gm_notes.empty? }

    def notes
      @notes ||= candidates.flat_map do |entity|
        entity.gm_notes.sort_by(&:order).map do |note|
          words = tokens(plain(note.text))
          Note.new(
            entity: entity, kind: note.kind, text: plain(note.text),
            order: note.order, words: words, shingles: shingles(words)
          )
        end
      end
    end

    def kind_counts
      Schema::GM_NOTE_KINDS.to_h { |kind| [kind, notes.count { |note| note.kind == kind }] }
    end

    def coverage_by_prominence
      levels = @world.schema.prominence_levels.reverse
      grouped = candidates.group_by { |entity| entity.prominence&.to_sym }
      (levels & grouped.keys).to_h do |level|
        group = grouped.fetch(level)
        [level, [group.count { |entity| !entity.gm_notes.empty? }, group.size]]
      end.merge(
        grouped.key?(nil) ? { undeclared: [grouped[nil].count { |e| !e.gm_notes.empty? }, grouped[nil].size] } : {}
      )
    end

    def coverage_by_kind
      candidates.group_by(&:kind).sort_by { |kind, _| kind.to_s }.to_h do |kind, group|
        [kind, [group.count { |entity| !entity.gm_notes.empty? }, group.size]]
      end
    end

    def duplicates
      @duplicates ||= begin
        pairs = []
        notes.each_with_index do |left, index|
          notes[(index + 1)..].each do |right|
            similarity = jaccard(left.shingles, right.shingles)
            next if similarity < DUPLICATE_SIMILARITY

            pairs << {
              left: left.id, right: right.id, similarity: similarity,
              left_text: left.text, right_text: right.text,
            }
          end
        end
        pairs.sort_by { |pair| -pair[:similarity] }
      end
    end

    def overused_openings
      @overused_openings ||= notes.group_by(&:opening)
                                  .reject { |opening, group| opening.empty? || group.size <= OPENING_REPEAT_MAXIMUM }
                                  .map { |opening, group| { opening: opening, count: group.size, notes: group.map(&:id) } }
                                  .sort_by { |row| -row[:count] }
    end

    def echoes
      @echoes ||= notes.filter_map do |note|
        summary = entity_summary(note.entity)
        next if summary.empty?

        similarity = containment(note.shingles, summary)
        next if similarity < ECHO_SIMILARITY

        { note: note.id, similarity: similarity, text: note.text }
      end.sort_by { |row| -row[:similarity] }
    end

    # What the entry already tells a reader: its declared summary plus its
    # opening prose. A note that repeats this adds nothing to the page.
    def entity_summary(entity)
      @entity_summaries ||= {}
      @entity_summaries[entity.id] ||= begin
        opening = entity.prose_blocks.select { |block| block.section == :main }
                        .sort_by(&:order).first&.text
        text = [entity.summary, opening].compact.join(" ")
        shingles(tokens(Markers.strip(text)))
      end
    end

    # Reading text: every marker collapses to the words a GM would see, so a
    # linked entity counts as its title and a computed span as its figure. The
    # same text feeds the similarity measurements, which should compare what
    # the notes say rather than how they were written.
    def plain(text)
      out = text.dup
      Markers.scan(text) { |match, marker| out = out.sub(match, resolved(marker)) }
      out
    end

    def resolved(marker)
      case marker.kind
      when :ref then marker[:text] || @world[marker.id]&.title || marker.plain
      when :year then @world.year_of(marker.at).to_s
      when :duration then "#{Elapsed.words(marker.years)} #{marker.years == 1 ? 'year' : 'years'}"
      when :elapsed then elapsed_words(marker)
      else marker.plain
      end
    rescue Error
      marker.plain
    end

    def elapsed_words(marker)
      return marker.plain if marker.future

      span = @world.elapsed(marker.from, marker.to)
      marker.ago? ? span.ago(marker.style) : span.public_send(marker.style)
    end

    def tokens(text)
      text.downcase.gsub(/[^a-z0-9\s']/, " ").split
    end

    def shingles(words)
      return words.to_set if words.size < 3

      words.each_cons(3).map { |trio| trio.join(" ") }.to_set
    end

    def jaccard(left, right)
      return 0.0 if left.empty? || right.empty?

      (left & right).size.fdiv((left | right).size)
    end

    # How much of the note is already in the target text. Asymmetric on purpose:
    # a short note buried inside a long summary is still a restatement.
    def containment(note, target)
      return 0.0 if note.empty? || target.empty?

      (note & target).size.fdiv(note.size)
    end
  end
end
