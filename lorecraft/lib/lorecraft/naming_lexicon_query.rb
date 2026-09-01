# frozen_string_literal: true

require "pathname"

module Lorecraft
  # A bounded view over the selected world's authored naming vocabulary.
  class NamingLexiconQuery
    def initialize(world, root: Dir.pwd)
      @lexicon = world.naming_lexicon
      @root = Pathname.new(root).expand_path
    end

    def data
      unless @lexicon
        return {
          declared: false,
          open: true,
          notice: NamingLexicon::OPEN_NOTICE,
          notes: [],
          extensions: [],
          words: [],
          patterns: [],
          avoids: [],
        }
      end

      {
        declared: true,
        open: true,
        notice: NamingLexicon::OPEN_NOTICE,
        source_file: relative_source,
        source_line: @lexicon.source_line,
        notes: @lexicon.notes,
        extensions: @lexicon.extensions,
        words: @lexicon.words.map do |word|
          {
            name: word.name,
            meaning: word.meaning,
            use: word.use,
            examples: word.examples,
            boundary: word.boundary,
          }
        end,
        patterns: @lexicon.patterns.map do |pattern|
          {
            name: pattern.name,
            note: pattern.note,
            examples: pattern.examples,
            boundary: pattern.boundary,
          }
        end,
        avoids: @lexicon.avoids,
      }.compact
    end

    def report
      result = data
      unless result[:declared]
        return [
          "Naming lexicon — open vocabulary",
          result[:notice],
          "No naming lexicon is declared for this world.",
        ].join("\n")
      end

      lines = ["Naming lexicon — open vocabulary", result[:notice], "source: #{source_label(result)}"]
      append_list(lines, "Notes", result[:notes])
      append_list(lines, "How to extend", result[:extensions])
      unless result[:words].empty?
        lines << ""
        lines << "Words"
        result[:words].each do |word|
          lines << "  #{word[:name]} — #{word[:meaning]}"
          lines << "    Use: #{word[:use]}"
          lines << "    Examples: #{word[:examples].join('; ')}"
          lines << "    Boundary: #{word[:boundary]}"
        end
      end
      unless result[:patterns].empty?
        lines << ""
        lines << "Patterns"
        result[:patterns].each do |pattern|
          lines << "  #{pattern[:name]} — #{pattern[:note]}"
          lines << "    Examples: #{pattern[:examples].join('; ')}"
          lines << "    Boundary: #{pattern[:boundary]}"
        end
      end
      append_list(lines, "Avoid", result[:avoids])
      lines.join("\n")
    end

    private

    def append_list(lines, heading, values)
      return if values.empty?

      lines << ""
      lines << heading
      values.each { |value| lines << "  - #{value}" }
    end

    def source_label(result)
      [result[:source_file] || "inline definition", result[:source_line]].compact.join(":")
    end

    def relative_source
      return unless @lexicon.source_file

      Pathname.new(@lexicon.source_file).expand_path.relative_path_from(@root).to_s
    rescue ArgumentError
      @lexicon.source_file.to_s
    end
  end
end
