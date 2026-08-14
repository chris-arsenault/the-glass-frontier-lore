# frozen_string_literal: true

require "date"
require "digest"
require "pathname"
require "tempfile"
require_relative "source_edit"

module Lorecraft
  # Entity-addressed, revision-checked editorial mutations for the review app.
  # It permits review metadata only; prose and arbitrary Ruby are never inputs.
  class ReviewEditor
    def initialize(world: nil, target: nil, root: Worlds.repo_root)
      @target = target || Worlds.find(world, root)
      @world_root = Pathname.new(@target.root).expand_path
    end

    def entries
      world = load_world
      world.entities.values.filter_map do |entity|
        next unless editable?(entity)

        entry_snapshot(world, entity, include_content: false)
      end.sort_by { |entry| [entry.fetch(:source_file), entry.fetch(:title), entry.fetch(:id).to_s] }
    end

    def entry(id)
      world = load_world
      entity = editable_entity(world, id)
      entry_snapshot(world, entity)
    end

    def add_question(id, revision:, text:, on: nil, raised: Date.today.iso8601, dry_run: false)
      mutate(id, revision:, dry_run:) do |edit|
        edit.add_question(text: required_text(text), raised:, on: normalized_anchor(on))
      end
    end

    def resolve_question(id, revision:, token:, dry_run: false)
      mutate(id, revision:, dry_run:) { |edit| edit.resolve_question(token:) }
    end

    def set_reviewed(id, revision:, value:, date: Date.today.iso8601, dry_run: false)
      mutate(id, revision:, dry_run:) { |edit| edit.set_reviewed(value: value == true, date:) }
    end

    def set_complete(id, revision:, value:, dry_run: false)
      mutate(id, revision:, dry_run:) { |edit| edit.set_complete(value: value == true) }
    end

    private

    def mutate(id, revision:, dry_run:)
      world = load_world
      entity = editable_entity(world, id)
      file = canonical_source(entity)
      original = File.binread(file)
      check_revision!(revision, original)
      edit = SourceEdit.new(source: original, file:, entity_id: entity.id, kind: entity.kind)
      candidate = yield(edit)
      return unchanged_result(world, entity, original) if candidate == original

      staged_world = validate_candidate(file, candidate, entity:)
      staged_entity = editable_entity(staged_world, entity.id)
      result = {
        written: !dry_run,
        dry_run: dry_run == true,
        diff: unified_diff(original, candidate, relative_source(file)),
        entry: entry_snapshot(staged_world, staged_entity, source: candidate)
      }
      return result if dry_run

      check_revision!(revision, File.binread(file))
      atomic_replace(file, candidate)
      result
    end

    def load_world(overrides: {})
      Lorecraft.load(@target.glob, prelude: @target.prelude, overrides: overrides)
    end

    def validate_candidate(file, candidate, entity:)
      SourceEdit.new(source: candidate, file:, entity_id: entity.id, kind: entity.kind)
      world = load_world(overrides: { file => candidate })
      problems = world.validate
      errors = world.lint(root: @world_root).select { |finding| finding.level == :error }
      return world if problems.empty? && errors.empty?

      raise SourceMutationError.new(
        "invalid_candidate_world", "review edit would make the world invalid",
        details: { validation: problems, lint: errors.map(&:message) }
      )
    rescue SyntaxError, StandardError => error
      raise error if error.is_a?(SourceMutationError)

      raise SourceMutationError.new("invalid_candidate_world", error.message)
    end

    def editable_entity(world, id)
      entity = world.entity(id.to_s.tr("-", "_").to_sym)
      raise SourceMutationError.new("unknown_entity", "unknown editable entity: #{id}") unless editable?(entity)

      entity
    end

    def editable?(entity)
      entity && entity.source_file && entity[:status].to_s != "shell"
    end

    def canonical_source(entity)
      file = Pathname.new(entity.source_file).expand_path
      root_prefix = "#{@world_root}#{File::SEPARATOR}"
      unless file.to_s.start_with?(root_prefix) && file.file?
        raise SourceMutationError.new("invalid_source_path", "entity source is outside the selected world")
      end

      file.to_s
    end

    def entry_snapshot(world, entity, source: nil, include_content: true)
      file = canonical_source(entity)
      source ||= File.binread(file)
      edit = SourceEdit.new(source:, file:, entity_id: entity.id, kind: entity.kind)
      if edit.questions.size != entity.questions.size
        raise SourceMutationError.new(
          "ambiguous_question_source", "#{entity.id} has questions that are not direct literal declarations"
        )
      end

      questions = entity.questions.zip(edit.questions).map do |question, source_question|
        {
          token: source_question.token, text: question.text,
          raised: question.raised, on: question.on
        }.compact
      end
      data = {
        id: entity.id,
        title: entity.title,
        kind: entity.kind,
        source_file: relative_source(file),
        revision: revision(source),
        reviewed: !(entity[:reviewed].nil? || entity[:reviewed] == false),
        complete: entity[:status].to_s == "complete",
        question_count: questions.size,
        questions: questions
      }
      if include_content
        data[:content] = edit.entity_source
        data[:markdown] = Render::Markdown.new(world).page_markdown(
          entity, year: world.timeline.now_year, audience: :all
        )
      end
      data
    end

    def unchanged_result(world, entity, source)
      { written: false, dry_run: false, diff: "", entry: entry_snapshot(world, entity, source:) }
    end

    def check_revision!(expected, source)
      actual = revision(source)
      return if expected.to_s == actual

      raise StaleSourceError.new(details: { expected: expected, actual: actual })
    end

    def revision(source) = "sha256:#{Digest::SHA256.hexdigest(source)}"

    def required_text(value)
      text = value.to_s.gsub(/\s+/, " ").strip
      raise SourceMutationError.new("invalid_question", "question text is required") if text.empty?

      text
    end

    def normalized_anchor(value)
      text = value.to_s.gsub(/\s+/, " ").strip
      text.empty? ? nil : text
    end

    def relative_source(file)
      Pathname.new(file).relative_path_from(@world_root).to_s
    end

    def atomic_replace(file, content)
      mode = File.stat(file).mode & 0o777
      Tempfile.create([".#{File.basename(file)}.review-", ".rb"], File.dirname(file)) do |temp|
        temp.binmode
        temp.write(content)
        temp.flush
        temp.fsync
        File.chmod(mode, temp.path)
        File.rename(temp.path, file)
      end
    end

    def unified_diff(before, after, label)
      old_lines = before.lines
      new_lines = after.lines
      prefix = 0
      limit = [old_lines.size, new_lines.size].min
      prefix += 1 while prefix < limit && old_lines[prefix] == new_lines[prefix]
      suffix = 0
      while suffix < old_lines.size - prefix && suffix < new_lines.size - prefix &&
            old_lines[-suffix - 1] == new_lines[-suffix - 1]
        suffix += 1
      end
      removed = old_lines[prefix, old_lines.size - prefix - suffix] || []
      added = new_lines[prefix, new_lines.size - prefix - suffix] || []
      ["--- a/#{label}\n", "+++ b/#{label}\n",
       "@@ -#{prefix + 1},#{removed.size} +#{prefix + 1},#{added.size} @@\n",
       *removed.map { |line| "-#{line}" }, *added.map { |line| "+#{line}" }].join
    end
  end
end
