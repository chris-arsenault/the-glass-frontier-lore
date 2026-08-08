# frozen_string_literal: true

require "json"
require "time"

module Lorecraft
  # Review tracking — the successor to review.py's git+JSON commands
  # (pending/mark/stale/status). Records when each content file was last
  # reviewed and compares against its last git-commit time. Independent of the
  # world model; it tracks human/assistant review process, not lore truth.
  #
  # The embedding-backed review.py commands (overlaps/gaps) are not ported —
  # they required the Memgraph vector index.
  class ReviewTracker
    # Files that define the world's shape rather than its content. They change
    # for structural reasons and are not reviewed as prose.
    META_FILES = %w[schema.rb timeline.rb pages.rb].freeze

    # `root` is a world root (worlds/<id>/), not the repo root — review state is
    # per-world.
    def initialize(root: Dir.pwd)
      @root = Pathname.new(root)
      @status_file = @root + "work-tracking/review-status.json"
      @comments_file = @root + "work-tracking/review-comments.json"
    end

    # The DSL files that carry content. Paths are relative to the world root, so
    # they are stable across a repository reorganisation.
    def lore_files
      base = @root + "world"
      return [] unless base.directory?

      Dir.glob("#{base}/**/*.rb")
         .reject { |p| META_FILES.include?(File.basename(p)) }
         .map { |p| Pathname.new(p).relative_path_from(@root).to_s }
         .sort
    end

    # Files changed in git since their recorded review (or never reviewed).
    def pending
      status = load_status
      lore_files.select do |f|
        mtime = git_mtime(f)
        mtime && (status[f].nil? || mtime > status[f])
      end
    end

    def mark(paths)
      status = load_status
      now = Time.now.utc.iso8601
      marked = []
      paths.each do |p|
        rel = relativize(p)
        next unless (@root + rel).exist?

        status[rel] = now
        marked << rel
      end
      save_status(status)
      marked
    end

    def status_summary
      status = load_status
      reviewed = pending_n = 0
      lore_files.each do |f|
        mtime = git_mtime(f)
        next unless mtime

        (status[f] && status[f] >= mtime) ? reviewed += 1 : pending_n += 1
      end
      { reviewed: reviewed, pending: pending_n, total: reviewed + pending_n }
    end

    # Open review comments whose file was reviewed after the comment was filed.
    def stale
      return { stale: [], active: [] } unless @comments_file.exist?

      status = load_status
      comments = JSON.parse(@comments_file.read)
      open = comments.select { |c| c["status"] == "open" }
      open.partition { |c| (rd = status[c["file"]]) && rd > c["timestamp"] }
          .then { |s, a| { stale: s, active: a } }
    end

    private

    # Paths are recorded relative to the world root, but callers type them
    # relative to wherever they are standing — usually the repo root, which is
    # above the world root.
    def relativize(p)
      pn = Pathname.new(p)
      pn = Pathname.new(Dir.pwd) + pn unless pn.absolute?
      pn.expand_path.relative_path_from(@root.expand_path).to_s
    end

    # When the file's prose last changed. Moving a file is not a change to it,
    # so commits where it was only renamed (R100 — identical content at a new
    # path) are skipped; otherwise a repository reorganisation invalidates every
    # recorded review at once.
    def git_mtime(rel)
      out = `git -C #{@root} log --follow -M --format=%aI --name-status -- #{rel} 2>/dev/null`
      date = nil
      out.each_line do |line|
        line = line.chomp
        next if line.empty?

        if line.match?(/\A\d{4}-\d{2}-\d{2}T/)
          date = line
        elsif !line.start_with?("R100")
          return date
        end
      end
      nil
    end

    def load_status = @status_file.exist? ? JSON.parse(@status_file.read) : {}

    def save_status(status)
      @status_file.write(JSON.pretty_generate(status.sort.to_h) + "\n")
    end
  end
end
