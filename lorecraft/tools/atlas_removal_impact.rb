#!/usr/bin/env ruby
# frozen_string_literal: true

# Project Atlas topology after removing a set of entities, or verify the
# current world against a saved projection after the migration.
#
#   ruby lorecraft/tools/atlas_removal_impact.rb --world glass-frontier \
#     --output build/glass-frontier/species-removal.json humans dwarves
#   ruby lorecraft/tools/atlas_removal_impact.rb --world glass-frontier \
#     --verify build/glass-frontier/species-removal.json

require "fileutils"
require "json"
require "optparse"
$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "lorecraft"

options = { format: :text }
parser = OptionParser.new do |opts|
  opts.banner = "usage: #{$PROGRAM_NAME} --world ID [options] ATLAS_ID..."
  opts.on("--world ID", "World manifest id") { |value| options[:world] = value }
  opts.on("--format FORMAT", %w[text json], "text or json") { |value| options[:format] = value.to_sym }
  opts.on("--output PATH", "Write the JSON projection as a generated artifact") do |value|
    options[:output] = value
  end
  opts.on("--verify PATH", "Compare the current world with a saved projection") do |value|
    options[:verify] = value
  end
  opts.on("-h", "--help", "Show this help") do
    puts opts
    exit
  end
end
parser.parse!

abort parser.to_s unless options[:world]
target = Lorecraft::Worlds.find(options[:world])
world = Lorecraft.load(target.glob, prelude: target.prelude)

if options[:verify]
  expected = JSON.parse(File.read(options[:verify], encoding: "UTF-8")).fetch("projected")
  actual = Lorecraft::AtlasRemovalImpact.new(world, ids: []).current_snapshot
  actual_json = JSON.parse(JSON.generate(actual))
  if actual_json == expected
    puts "✓ current Atlas topology matches the saved removal projection"
    exit
  end

  puts "✗ current Atlas topology differs from the saved removal projection"
  (expected.keys | actual_json.keys).each do |key|
    next if expected[key] == actual_json[key]

    puts "  #{key}: expected #{expected[key].inspect}, got #{actual_json[key].inspect}"
  end
  exit 1
end

abort parser.to_s if ARGV.empty?
impact = Lorecraft::AtlasRemovalImpact.new(world, ids: ARGV.map { |id| id.tr("-", "_") })
json = JSON.pretty_generate(impact.data)
if options[:output]
  FileUtils.mkdir_p(File.dirname(options[:output]))
  File.write(options[:output], json + "\n", encoding: "UTF-8")
end
puts(options[:format] == :json ? json : impact.report)
