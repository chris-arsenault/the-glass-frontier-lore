#!/usr/bin/env ruby
# frozen_string_literal: true

require "json"
require "optparse"

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "lorecraft"

begin
  world = nil
  OptionParser.new do |parser|
    parser.on("--world ID") { |value| world = value }
  end.parse!(ARGV)
  action = ARGV.shift || abort("usage: review_api.rb ACTION --world ID")
  input_text = $stdin.read
  input = input_text.empty? ? {} : JSON.parse(input_text, symbolize_names: true)
  editor = Lorecraft::ReviewEditor.new(world: world)

  result = case action
           when "entries"
             { schema_version: 1, world: world, entries: editor.entries }
           when "entry"
             { schema_version: 1, world: world, entry: editor.entry(input.fetch(:id)) }
           when "add-question"
             editor.add_question(
               input.fetch(:id), revision: input.fetch(:revision),
               text: input.fetch(:text), on: input[:on], dry_run: input[:dry_run] == true
             )
           when "resolve-question"
             editor.resolve_question(
               input.fetch(:id), revision: input.fetch(:revision),
               token: input.fetch(:token), dry_run: input[:dry_run] == true
             )
           when "set-reviewed"
             editor.set_reviewed(
               input.fetch(:id), revision: input.fetch(:revision),
               value: input.fetch(:value), dry_run: input[:dry_run] == true
             )
           when "set-complete"
             editor.set_complete(
               input.fetch(:id), revision: input.fetch(:revision),
               value: input.fetch(:value), dry_run: input[:dry_run] == true
             )
           else
             raise Lorecraft::SourceMutationError.new("unknown_action", "unknown review action: #{action}")
           end

  puts JSON.generate(result)
rescue Lorecraft::SourceMutationError => error
  warn JSON.generate(error.to_h)
  exit 1
rescue KeyError, JSON::ParserError, OptionParser::ParseError => error
  warn JSON.generate(status: "error", code: "invalid_request", message: error.message, details: {})
  exit 1
rescue SyntaxError, StandardError => error
  warn JSON.generate(status: "error", code: "review_api_failure", message: error.message, details: {})
  exit 1
end
