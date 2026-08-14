# frozen_string_literal: true

module Lorecraft
  # What the world needs next, assembled rather than written.
  #
  # A work queue kept as prose is a copy of two things: findings the engine
  # already computes, and judgments that belong to the entries they are about.
  # Both copies drift — a queue file goes stale the moment someone fixes
  # something without editing it. So the computed half comes from the linter and
  # the graph, the judged half comes from `question` declarations on entities,
  # and this class is the only place they meet.
  #
  # Nothing here is a source. Delete the render and nothing is lost.
  class Queue
    def initialize(world, findings: nil, entity: nil)
      @world = world
      @findings = findings
      @entity = entity && (world.entity(entity.to_sym) || raise(Error, "unknown entity: #{entity}"))
    end

    # Declared questions, entity by entity, in load order.
    def questions
      entities = @entity ? [@entity] : @world.entities.values
      entities
            .reject { |e| e.questions.empty? }
            .sort_by { |e| e.id.to_s }
            .flat_map { |e| e.questions.sort_by(&:order).map { |q| [e, q] } }
    end

    def findings_by_level
      findings.group_by(&:level)
    end

    def findings
      found = @findings || @world.lint_diagnostics
      return found unless @entity

      id = Regexp.escape(@entity.id.to_s)
      found.select do |finding|
        path = finding.respond_to?(:object_path) && finding.object_path
        path == @entity.id.to_s ||
          (!path && finding.message.match?(/(?<![a-z0-9_])#{id}(?![a-z0-9_])/))
      end
    end

    def report
      title = @entity ? " — #{@entity.title} (#{@entity.id})" : ""
      out = ["=== Work Queue#{title} ===", ""]
      out.concat(question_section)
      out.concat(computed_section)
      out.join("\n")
    end

    def data
      {
        scope: @entity ? "entity" : "world",
        entity: (@entity && { id: @entity.id, title: @entity.title }),
        questions: questions.map do |entity, question|
          {
            entity_id: entity.id,
            entity_title: entity.title,
            text: question.text,
            raised: question.raised,
            on: question.on,
          }.compact
        end,
        findings: findings.map do |finding|
          if finding.respond_to?(:severity)
            finding.to_h.merge(level: finding.level)
          else
            { level: finding.level, message: finding.message }
          end
        end,
      }.compact
    end

    private

    def question_section
      qs = questions
      return ["No open questions declared on entries.", ""] if qs.empty?

      out = ["#{qs.size} open question(s) on #{qs.map(&:first).uniq.size} entr(ies):", ""]
      qs.chunk_while { |a, b| a.first.id == b.first.id }.each do |group|
        out << "  #{group.first.first.id}"
        group.each { |_e, q| out.concat(question_lines(q)) }
        out << ""
      end
      out
    end

    def question_lines(question)
      head = "    - #{question.text}"
      head += " [#{question.raised}]" if question.raised
      lines = [head]
      lines << "      on: \"#{truncate(question.on)}\"" if question.on
      lines
    end

    # The engine's own findings, counted rather than restated. Anyone who wants
    # the detail runs `make check`.
    def computed_section
      by = findings_by_level
      out = ["Computed — run `make check` for the detail:"]
      %i[error warn info future].each do |level|
        found = by[level] || []
        next if found.empty?

        out << "  #{found.size} #{label_for(level)}"
        found.first(3).each { |f| out << "    #{f.message}" }
        out << "    …" if found.size > 3
      end
      out << "  none for this entry" if @entity && by.values.all?(&:empty?)
      out
    end

    def label_for(level)
      { error: "error(s)", warn: "warning(s)", info: "to convert",
        future: "future marker(s) with no entry" }.fetch(level, level.to_s)
    end

    def truncate(text, limit = 70)
      text.to_s.length > limit ? "#{text.to_s[0, limit]}…" : text.to_s
    end
  end
end
