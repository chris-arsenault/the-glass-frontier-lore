# frozen_string_literal: true

require "pathname"

module Lorecraft
  # Ranked, bounded discovery over canonical entities. Search is an entry point
  # into the typed model, not a second index: every result points back to the
  # stable entity id and its source file.
  class Search
    Result = Struct.new(
      :id, :title, :kind, :subkind, :tags, :aliases, :prominence, :status,
      :dm, :source_file, :summary, :score,
      keyword_init: true
    )

    DEFAULT_LIMIT = 12
    MAX_LIMIT = 100

    def initialize(world, query:, root: Dir.pwd, audience: :all, at: :now,
                   kind: nil, tag: nil, limit: DEFAULT_LIMIT)
      @world = world
      @query = query.to_s.strip
      @root = Pathname.new(root).expand_path
      @audience = audience.to_sym
      @year = world.timeline.year_for(at)
      @kind = kind&.to_sym
      @tag = tag&.to_sym
      @limit = [[Integer(limit), 1].max, MAX_LIMIT].min
      @renderer = SummaryRenderer.new(world)
    end

    def results
      return [] if @query.empty?

      candidates.filter_map do |entity|
        summary = @renderer.render(entity, year: @year, audience: @audience)
        score = score(entity, summary)
        result_for(entity, summary, score) if score
      end.sort_by { |row| [-row.score, row.title.downcase, row.id.to_s] }.first(@limit)
    end

    def report
      rows = results
      return "No entities matched #{@query.inspect}." if rows.empty?

      lines = ["#{rows.size} result(s) for #{@query.inspect}:"]
      rows.each do |row|
        type = row.subkind == row.kind ? row.kind.to_s : "#{row.kind}/#{row.subkind}"
        flags = []
        flags << "shell" if row.status == :shell
        flags << "DM" if row.dm
        lines << "  #{row.id}  #{type}  #{row.title}#{flags.empty? ? '' : " [#{flags.join(', ')}]"}"
        lines << "    source: #{row.source_file || '(generated or inline definition)'}"
        lines << "    #{row.summary}" unless row.summary.empty?
      end
      lines.join("\n")
    end

    private

    def candidates
      @world.entities.values.select do |entity|
        next false if @kind && entity.kind != @kind
        next false if @tag && !entity.tags.include?(@tag)
        next true unless @audience == :player

        !entity.dm? && entity[:status].to_s != "shell" && @world.schema.wiki_kind?(entity.kind)
      end
    end

    def score(entity, summary)
      fields = {
        id: entity.id.to_s.tr("_", " ").downcase,
        title: entity.title.downcase,
        aliases: aliases(entity).join(" ").downcase,
        tags: entity.tags.join(" ").tr("_", " ").downcase,
        subkind: entity.subkind.to_s.tr("_", " ").downcase,
        summary: summary.downcase,
      }
      phrase = @query.downcase
      tokens = phrase.split(/\s+/)
      corpus = fields.values.join(" ")
      return nil unless tokens.all? { |token| corpus.include?(token) }

      total = 0
      total += 120 if fields[:title] == phrase
      total += 110 if fields[:id] == phrase
      total += 100 if aliases(entity).any? { |name| name.downcase == phrase }
      total += 70 if fields[:title].start_with?(phrase)
      total += 55 if fields[:title].include?(phrase)
      total += 50 if fields[:id].include?(phrase)
      total += 45 if fields[:aliases].include?(phrase)
      total += 30 if fields[:tags].include?(phrase)
      total += 25 if fields[:subkind].include?(phrase)
      total += 15 if fields[:summary].include?(phrase)
      total + tokens.sum { |token| fields.values.count { |value| value.include?(token) } }
    end

    def result_for(entity, summary, score)
      Result.new(
        id: entity.id,
        title: entity.title,
        kind: entity.kind,
        subkind: entity.subkind,
        tags: entity.tags,
        aliases: aliases(entity),
        prominence: entity.prominence&.to_sym,
        status: entity[:status]&.to_sym,
        dm: entity.dm?,
        source_file: relative_source(entity),
        summary: summary,
        score: score,
      )
    end

    def aliases(entity) = Array(entity[:alias]).map(&:to_s)

    def relative_source(entity)
      return nil unless entity.source_file

      Pathname.new(entity.source_file).expand_path.relative_path_from(@root).to_s
    rescue ArgumentError
      entity.source_file.to_s
    end

    # Resolves the same inline bindings as a page, but emits plain text and only
    # the entity's owned prose. Editorial lineage never enters a search index.
    class SummaryRenderer < Render::Base
      MAX_LENGTH = 220

      def render(entity, year:, audience:)
        @rel_subject_for = entity.id
        blocks = entity.authored_blocks.select { |block| block.visible_at?(year, audience: audience) }
        markdown = blocks.sort_by(&:order).flat_map do |block|
          if block.cards?
            block.cards.map do |card|
              title = @world.entity(card.target)&.title || card.target.to_s.tr("_", " ")
              "#{title}: #{resolve(card.description, entity, year, audience)}"
            end
          else
            resolve(block.text, entity, year, audience)
          end
        end.join("\n\n")
        summarize(markdown)
      end

      def on_future(marker) = marker.name
      def link(text, _target_path, _from_path, _anchor) = text

      private

      def resolve(text, entity, year, audience)
        resolve_prose(
          text,
          from_path: page_path(entity),
          year: year,
          audience: audience,
        ).strip
      end

      def summarize(markdown)
        plain = markdown.to_s
                        .gsub(/!\[([^\]]*)\]\([^)]*\)/, "\\1")
                        .gsub(/\[([^\]]+)\]\([^)]*\)/, "\\1")
                        .gsub(/[`*_>#|]/, " ")
                        .gsub(/\s+/, " ")
                        .strip
        return plain if plain.length <= MAX_LENGTH

        boundary = plain.rindex(/\s/, MAX_LENGTH - 3) || MAX_LENGTH - 3
        "#{plain[0...boundary]}…"
      end
    end
  end
end
