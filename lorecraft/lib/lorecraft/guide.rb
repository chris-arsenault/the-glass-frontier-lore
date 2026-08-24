# frozen_string_literal: true

require "pathname"

module Lorecraft
  # Resolves short JIT names to existing authoritative Markdown. The command
  # reads one source file; it does not maintain a second copy of craft or world
  # guidance inside the CLI.
  class Guide
    Entry = Struct.new(:name, :path, :layer, :description, keyword_init: true)

    SHARED = {
      "craft" => ["craft/README.md", "Where shared craft and world guidance belong."],
      "authoring" => ["craft/authoring-principles.md", "World-agnostic authoring constraints."],
      "writing" => ["craft/writing-guidance.md", "Mandatory prose rules."],
      "voice-review" => ["craft/voice-review-prompt.md", "Reusable in-universe voice review."],
      "deslop" => ["craft/deslop-guidance.md", "Detecting and repairing machine-written habits."],
      "naming-craft" => ["craft/naming-craft.md", "World-agnostic naming craft."],
      "naming-by-kind" => ["craft/naming-by-kind.md", "Naming checks for each entity kind."],
      "roles" => ["craft/narrative-roles.md", "Viewpoint and titan narrative roles."],
      "gm-notes" => ["craft/gm-notes.md", "Writing the instructions published with an entry."],
      "topology" => ["craft/graph-topology.md", "Graph health and relationship budgets."],
      "connecting" => ["craft/connecting-entities.md", "Repairing weak connections without filler."],
      "crosswalk" => ["craft/crosswalk-review.md", "Periodic consistency review."],
      "composition" => ["docs/canonical-composition.md", "Composition, computed time, and editorial metadata."],
      "language" => ["docs/lorecraft-spec.md", "Implemented Lorecraft language reference."],
      "engine" => ["SYSTEM.md", "Engine architecture and render boundaries."],
    }.freeze

    def initialize(world_entry, repo_root: Worlds.repo_root)
      @world_entry = world_entry
      @repo_root = Pathname.new(repo_root).expand_path
    end

    def entries
      @entries ||= begin
        values = SHARED.map do |name, (path, description)|
          Entry.new(name: name, path: path, layer: :shared, description: description)
        end
        world_file = relative(Pathname.new(@world_entry.root).join("CLAUDE.md"))
        values << Entry.new(
          name: "world",
          path: world_file,
          layer: :world,
          description: "Premise and constraints for #{@world_entry.title}.",
        ) if absolute(world_file).file?
        Dir.glob(File.join(@world_entry.root, "guidance", "*.md")).sort.each do |file|
          name = File.basename(file, ".md")
          next if values.any? { |entry| entry.name == name }

          values << Entry.new(
            name: name,
            path: relative(file),
            layer: :world,
            description: "World guidance: #{name.tr('-', ' ')}.",
          )
        end
        values.sort_by { |entry| [entry.layer == :world ? 1 : 0, entry.name] }
      end
    end

    def aliases
      @aliases ||= {
        "voice" => available("voice-referents") || "writing",
        "naming" => available("naming-conventions") || "naming-craft",
        "method" => available("authoring-method") || "authoring",
        "canon" => available("canon-checklist") || "composition",
      }
    end

    def data(name = "list")
      return list_data if name.to_s == "list"

      requested = name.to_s
      resolved = aliases.fetch(requested, requested)
      entry = entries.find { |candidate| candidate.name == resolved }
      raise Error, "unknown guide: #{requested}; run `lorecraft guide list`" unless entry

      {
        name: requested,
        resolved_name: resolved,
        source: entry.path,
        layer: entry.layer,
        content: absolute(entry.path).read,
      }
    end

    def report(name = "list")
      result = data(name)
      return list_report(result) if result[:name] == "list"

      alias_note = result[:name] == result[:resolved_name] ? "" : " (#{result[:resolved_name]})"
      "Guide — #{result[:name]}#{alias_note}\nsource: #{result[:source]}\n\n#{result[:content]}"
    end

    private

    def list_data
      {
        name: "list",
        aliases: aliases.map { |name, target| { name: name, target: target } },
        guides: entries.map do |entry|
          { name: entry.name, source: entry.path, layer: entry.layer, description: entry.description }
        end,
      }
    end

    def list_report(result)
      lines = ["Guides for #{@world_entry.title} (#{@world_entry.id})", "Aliases:"]
      result[:aliases].each { |item| lines << "  #{item[:name]} -> #{item[:target]}" }
      %i[shared world].each do |layer|
        selected = result[:guides].select { |entry| entry[:layer] == layer }
        next if selected.empty?

        lines << "#{layer.to_s.capitalize}:"
        selected.each do |entry|
          lines << "  #{entry[:name].ljust(20)} #{entry[:source]}"
          lines << "    #{entry[:description]}"
        end
      end
      lines.join("\n")
    end

    def available(name) = entries.any? { |entry| entry.name == name } ? name : nil
    def absolute(path) = @repo_root.join(path)
    def relative(path) = Pathname.new(path).expand_path.relative_path_from(@repo_root).to_s
  end
end
