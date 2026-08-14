# frozen_string_literal: true

module Lorecraft
  # Base class for every Lorecraft error.
  class Error < StandardError; end

  # Raised when the DSL is used incorrectly at definition time (bad arguments,
  # unknown kind, malformed era, etc.). These are author mistakes caught before
  # the world is even assembled.
  class DefinitionError < Error; end

  # Raised by the validator when an assembled world violates a schema or
  # temporal rule. Carries the full list of problems so a single run reports
  # everything rather than dying on the first issue.
  class ValidationError < Error
    attr_reader :problems

    def initialize(problems)
      @problems = problems
      super(build_message(problems))
    end

    private

    def build_message(problems)
      lines = problems.map { |p| "  - #{p}" }
      "world failed validation (#{problems.size} problem(s)):\n#{lines.join("\n")}"
    end
  end

  # Raised during the temporal fold when an effect references an entity outside
  # its existence interval (used before create / after destroy).
  class CausalityError < Error; end

  # A requested source edit could not be addressed or would not produce a
  # valid world. The code is stable so adapters do not classify English text.
  class SourceMutationError < Error
    attr_reader :code, :details

    def initialize(code, message, details: {})
      @code = code.to_s
      @details = details.freeze
      super(message)
    end

    def to_h
      { status: "error", code: code, message: message, details: details }
    end
  end

  class StaleSourceError < SourceMutationError
    def initialize(message = "source changed after it was read", details: {})
      super("stale_source", message, details: details)
    end
  end
end
