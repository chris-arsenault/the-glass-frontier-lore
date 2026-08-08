# frozen_string_literal: true

# Run a lorecraft subcommand against every world that has canon. Scaffold
# worlds are skipped — they hold a schema and a timeline but no entities, so
# every gate would pass vacuously and hide the fact that they are empty.
#
#   ruby lorecraft/tools/each_world.rb check
#   ruby lorecraft/tools/each_world.rb lint

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "lorecraft"

target = ARGV.shift || "check"
worlds = Lorecraft::Worlds.all

active = worlds.reject(&:scaffold?)
skipped = worlds.select(&:scaffold?)

failed = active.reject do |w|
  puts "\n=== #{w.title} (#{w.id}) ==="
  system("make", target, "WORLD=#{w.id}")
end

puts "\nskipped (scaffold): #{skipped.map(&:id).join(', ')}" unless skipped.empty?

if failed.empty?
  puts "✓ #{active.size} world(s) passed #{target}"
else
  warn "✗ #{target} failed for: #{failed.map(&:id).join(', ')}"
  exit 1
end
