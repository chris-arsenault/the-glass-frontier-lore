# frozen_string_literal: true

module Lorecraft
  # A world's authored vocabulary for making names that belong to that world.
  # It is editorial guidance rather than reader-facing lore, but it lives in
  # the world DSL so every author and review tool reads the same declaration.
  class NamingLexicon
    OPEN_NOTICE = "This is the world's current naming vocabulary, not a closed list of permitted words. Extend it when a recurring subject needs language the existing lexicon cannot supply. Do not stretch an existing word or pattern merely to avoid adding one."

    Word = Struct.new(:name, :meaning, :use, :examples, :boundary, keyword_init: true)
    Pattern = Struct.new(:name, :note, :examples, :boundary, keyword_init: true)

    attr_reader :notes, :extensions, :words, :patterns, :avoids, :source_file,
                :source_line

    def initialize(source_file: nil, source_line: nil)
      @source_file = source_file
      @source_line = source_line
      @notes = []
      @extensions = []
      @words = []
      @patterns = []
      @avoids = []
    end

    def build(&block)
      Builder.new(self).instance_eval(&block)
      raise DefinitionError, "naming_lexicon must contain at least one declaration" if empty?
      if @extensions.empty?
        raise DefinitionError, "naming_lexicon must explain how this world extends its vocabulary"
      end

      self
    end

    def add_note(text)
      @notes << required_text(text, "naming lexicon note")
    end

    def add_extension(text)
      @extensions << required_text(text, "naming lexicon extension rule")
    end

    def add_word(name, meaning:, use:, examples:, boundary:)
      key = required_name(name, "naming lexicon word")
      if @words.any? { |word| word.name == key }
        raise DefinitionError, "duplicate naming lexicon word #{key}"
      end

      @words << Word.new(
        name: key,
        meaning: required_text(meaning, "meaning for #{key}"),
        use: required_text(use, "naming use for #{key}"),
        examples: required_examples(examples, "examples for #{key}"),
        boundary: required_text(boundary, "boundary for #{key}"),
      )
    end

    def add_pattern(name, note, examples:, boundary:)
      key = required_name(name, "naming lexicon pattern")
      if @patterns.any? { |pattern| pattern.name == key }
        raise DefinitionError, "duplicate naming lexicon pattern #{key}"
      end

      @patterns << Pattern.new(
        name: key,
        note: required_text(note, "naming pattern #{key}"),
        examples: required_examples(examples, "examples for #{key}"),
        boundary: required_text(boundary, "boundary for #{key}"),
      )
    end

    def add_avoid(text)
      @avoids << required_text(text, "naming lexicon warning")
    end

    def empty?
      @notes.empty? && @extensions.empty? && @words.empty? && @patterns.empty? && @avoids.empty?
    end

    private

    def required_name(value, label)
      name = value.to_s.strip.tr("-", "_").to_sym
      raise DefinitionError, "#{label} must have a name" if name.to_s.empty?

      name
    end

    def required_text(value, label)
      unless value.is_a?(String) && !value.strip.empty?
        raise DefinitionError, "#{label} must be non-empty text"
      end

      value.strip
    end

    def required_examples(values, label)
      examples = Array(values).map { |value| required_text(value, label) }
      raise DefinitionError, "#{label} must contain at least one example" if examples.empty?

      examples.freeze
    end

    # The body of a top-level `naming_lexicon do ... end` declaration.
    class Builder
      def initialize(lexicon)
        @lexicon = lexicon
      end

      def note(text) = @lexicon.add_note(text)
      def extension(text) = @lexicon.add_extension(text)
      def word(name, meaning: nil, use: nil, examples: nil, boundary: nil)
        @lexicon.add_word(
          name, meaning: meaning, use: use, examples: examples, boundary: boundary
        )
      end
      def pattern(name, note = nil, examples: nil, boundary: nil)
        @lexicon.add_pattern(name, note, examples: examples, boundary: boundary)
      end
      def avoid(text) = @lexicon.add_avoid(text)
    end
  end
end
