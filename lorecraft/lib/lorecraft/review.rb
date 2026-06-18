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
    META_FILES = %w[index.md tags.md timeline.md causality.md
                    design-principles.md world-seeds.md].freeze

    def initialize(root: Dir.pwd)
      @root = Pathname.new(root)
      @status_file = @root + "work-tracking/review-status.json"
      @comments_file = @root + "work-tracking/review-comments.json"
    end

    def lore_files
      %w[player dm].flat_map do |d|
        base = @root + d
        next [] unless base.directory?

        Dir.glob("#{base}/**/*.md")
           .reject { |p| META_FILES.include?(File.basename(p)) }
           .map { |p| Pathname.new(p).relative_path_from(@root).to_s }
      end.sort
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

    def relativize(p)
      pn = Pathname.new(p)
      pn.absolute? ? pn.relative_path_from(@root).to_s : pn.to_s
    end

    def git_mtime(rel)
      out = `git -C #{@root} log -1 --format=%aI -- #{rel} 2>/dev/null`.strip
      out.empty? ? nil : out
    end

    def load_status = @status_file.exist? ? JSON.parse(@status_file.read) : {}

    def save_status(status)
      @status_file.write(JSON.pretty_generate(status.sort.to_h) + "\n")
    end
  end
end
