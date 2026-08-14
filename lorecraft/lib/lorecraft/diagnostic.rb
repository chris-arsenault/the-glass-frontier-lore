# frozen_string_literal: true

module Lorecraft
  # One machine-readable validator or linter result. Human-facing commands keep
  # their established output; adapters can use this record without parsing it.
  class Diagnostic
    FIELDS = %i[
      severity code message object_path source_file source_line
      repair_instruction help_topic details
    ].freeze

    attr_reader(*FIELDS)

    def initialize(severity:, code:, message:, object_path: nil, source_file: nil,
                   source_line: nil, repair_instruction: nil, help_topic: nil, details: {})
      @severity = severity.to_sym
      @code = code.to_s.dup.freeze
      @message = message.to_s.dup.freeze
      @object_path = object_path && object_path.to_s.dup.freeze
      @source_file = source_file && source_file.to_s.dup.freeze
      @source_line = source_line && Integer(source_line)
      @repair_instruction = repair_instruction && repair_instruction.to_s.dup.freeze
      @help_topic = help_topic && help_topic.to_s.dup.freeze
      @details = freeze_value(details)
      freeze
    end

    alias level severity

    def to_h
      {
        severity: severity, code: code, message: message,
        object_path: object_path, source_file: source_file, source_line: source_line,
        repair_instruction: repair_instruction, help_topic: help_topic, details: details
      }
    end

    private

    def freeze_value(value)
      case value
      when Hash
        value.to_h { |key, item| [freeze_value(key), freeze_value(item)] }.freeze
      when Array
        value.map { |item| freeze_value(item) }.freeze
      when String
        value.dup.freeze
      else
        value.freeze
      end
    end
  end
end
