# frozen_string_literal: true

require "digest"
require "date"
require "prism"

module Lorecraft
  # Locates one literal entity declaration and prepares narrow declaration
  # edits without evaluating or reformatting its Ruby source.
  class SourceEdit
    Question = Data.define(:node, :token)

    attr_reader :source, :file, :entity_id, :kind

    def initialize(source:, file:, entity_id:, kind:)
      @source = source
      @file = file
      @entity_id = entity_id.to_sym
      @kind = kind.to_sym
      @tree = parse(source)
      @entity_node = locate_entity
    end

    def questions
      direct_calls(:question).each_with_index.map do |node, index|
        digest = Digest::SHA256.hexdigest([entity_id, index, slice(node)].join("\0"))
        Question.new(node:, token: "question:#{index}:sha256:#{digest}")
      end
    end

    def entity_source = slice(@entity_node)

    def add_question(text:, raised:, on: nil)
      line = "#{indent}question #{literal(text)}, raised: #{literal(raised)}"
      line += ", on: #{literal(on)}" if on && !on.empty?
      insert_at = question_insertion_offset
      insert = "#{line}\n"
      insert = "\n#{insert}" if insert_at.positive? && source.getbyte(insert_at - 1) != 10
      replace(insert_at, insert_at, insert)
    end

    def resolve_question(token:)
      question = questions.find { |item| item.token == token }
      raise SourceMutationError.new("unknown_question", "question token is not present on #{entity_id}") unless question

      remove_statement(question.node)
    end

    def set_reviewed(value:, date: nil)
      calls = direct_calls(:reviewed)
      refuse_duplicates(:reviewed, calls)
      require_literal_argument!(:reviewed, calls.first, Prism::StringNode) if calls.first
      return remove_statement(calls.first) if !value && calls.first
      return source unless value

      replacement = "reviewed #{literal(date || Date.today.iso8601)}"
      calls.first ? replace_node(calls.first, replacement) : insert_declaration(replacement)
    end

    def set_complete(value:)
      calls = direct_calls(:status)
      refuse_duplicates(:status, calls)
      existing = calls.first
      require_literal_argument!(:status, existing, Prism::SymbolNode) if existing
      existing_complete = existing && literal_symbol(existing) == :complete
      return remove_statement(existing) if !value && existing_complete
      return source if !value

      existing ? replace_node(existing, "status :complete") : insert_declaration("status :complete")
    end

    private

    def parse(text)
      result = Prism.parse(text)
      return result.value if result.success?

      messages = result.errors.map(&:message)
      raise SourceMutationError.new(
        "invalid_ruby_source", "#{file} does not parse", details: { errors: messages }
      )
    end

    def locate_entity
      matches = @tree.statements.body.select do |node|
        node.is_a?(Prism::CallNode) && node.receiver.nil? && node.name == kind &&
          literal_symbol(node) == entity_id && node.block.is_a?(Prism::BlockNode)
      end
      unless matches.one?
        raise SourceMutationError.new(
          "ambiguous_entity_source",
          "expected one literal #{kind} :#{entity_id} declaration in #{file}, found #{matches.size}"
        )
      end

      matches.first
    end

    def statements
      body = @entity_node.block.body
      return [] unless body.is_a?(Prism::StatementsNode)

      body.body
    end

    def direct_calls(name)
      statements.select do |node|
        node.is_a?(Prism::CallNode) && node.receiver.nil? && node.name == name
      end
    end

    def literal_symbol(call)
      argument = call.arguments&.arguments&.first
      argument.value.to_sym if argument.is_a?(Prism::SymbolNode)
    end

    def refuse_duplicates(name, calls)
      return if calls.size <= 1

      raise SourceMutationError.new(
        "ambiguous_declaration", "#{entity_id} has more than one #{name} declaration"
      )
    end

    def require_literal_argument!(name, call, type)
      argument = call.arguments&.arguments&.first
      return if argument.is_a?(type)

      raise SourceMutationError.new(
        "computed_declaration", "#{entity_id} has a computed #{name} declaration"
      )
    end

    def question_insertion_offset
      return line_end(questions.last.node) unless questions.empty?

      content = statements.find do |node|
        node.is_a?(Prism::CallNode) && %i[prose cards].include?(node.name)
      end
      return line_start(content) if content

      closing = @entity_node.block.closing_loc
      line_start_offset(closing.start_offset)
    end

    def insert_declaration(text)
      content = statements.find do |node|
        node.is_a?(Prism::CallNode) && %i[question prose cards].include?(node.name)
      end
      offset = content ? line_start(content) : line_start_offset(@entity_node.block.closing_loc.start_offset)
      replace(offset, offset, "#{indent}#{text}\n")
    end

    def indent
      node = statements.first
      return source.byteslice(line_start(node)...node.location.start_offset) if node

      declaration_indent = source.byteslice(line_start(@entity_node)...@entity_node.location.start_offset)
      "#{declaration_indent}  "
    end

    def literal(value)
      value.to_s.gsub(/\s+/, " ").strip.dump
    end

    def remove_statement(node)
      start_offset = line_start(node)
      end_offset = line_end(node)
      whole_line = source.byteslice(start_offset...end_offset)
      node_text = slice(node)
      if whole_line.sub(node_text, "").strip.empty?
        replace(start_offset, end_offset, "")
      else
        replace_node(node, "")
      end
    end

    def replace_node(node, text)
      replace(node.location.start_offset, node.location.end_offset, text)
    end

    def replace(start_offset, end_offset, text)
      source.byteslice(0...start_offset) + text + source.byteslice(end_offset..)
    end

    def slice(node)
      source.byteslice(node.location.start_offset...node.location.end_offset)
    end

    def line_start(node)
      line_start_offset(node.location.start_offset)
    end

    def line_start_offset(offset)
      prior = source.byteslice(0...offset).b.rindex("\n")
      prior ? prior + 1 : 0
    end

    def line_end(node)
      newline = source.b.index("\n", node.location.end_offset)
      newline ? newline + 1 : source.bytesize
    end
  end
end
