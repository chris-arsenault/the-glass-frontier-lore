# frozen_string_literal: true

require "yaml"
require "pathname"
require_relative "errors"

module Lorecraft
  # The repository's world manifest (`worlds.yml` at the repo root). This
  # repository holds several worlds side by side under `worlds/<id>/`; every
  # content query runs against exactly one of them. The manifest is the only
  # place that knows which worlds exist and which one is the default.
  module Worlds
    MANIFEST = "worlds.yml"

    # The kind, effect and relation taxonomy every world shares. A world's own
    # schema.rb adds to it: tags, section headings, and any relation the setting
    # needs that the base does not carry.
    BASE_SCHEMA = File.join("craft", "schema", "base.rb")

    # One tenant: its identity, its directory, and whether it has canon yet.
    Entry = Struct.new(:id, :title, :status, :root, :prelude, keyword_init: true) do
      # The DSL files that make up this world's canon.
      def glob
        File.join(root, "world", "**", "*.rb")
      end

      # A scaffold world has a schema and a timeline but no entities yet.
      def scaffold?
        status.to_s == "scaffold"
      end

    end

    class << self
      # Walk up from `from` until the manifest is found, so commands work from
      # any subdirectory.
      def repo_root(from = Dir.pwd)
        dir = Pathname.new(from).expand_path
        until (dir + MANIFEST).file?
          raise Error, "no #{MANIFEST} found at or above #{from}" if dir.root?

          dir = dir.parent
        end
        dir
      end

      def manifest(root = repo_root)
        @manifest ||= {}
        @manifest[root.to_s] ||= YAML.safe_load_file(Pathname.new(root) + MANIFEST)
      end

      def all(root = repo_root)
        manifest(root).fetch("worlds").map do |w|
          Entry.new(id: w["id"], title: w["title"], status: w["status"],
                    root: (Pathname.new(root) + "worlds" + w["id"]).to_s,
                    prelude: [(Pathname.new(root) + BASE_SCHEMA).to_s])
        end
      end

      def default_id(root = repo_root)
        manifest(root).fetch("default")
      end

      # Resolve a world by id, falling back to the manifest default.
      def find(id = nil, root = repo_root)
        id = default_id(root) if id.nil? || id.to_s.empty?
        all(root).find { |w| w.id == id.to_s } ||
          raise(Error, "unknown world #{id.inspect} — known: #{all(root).map(&:id).join(', ')}")
      end
    end
  end
end
