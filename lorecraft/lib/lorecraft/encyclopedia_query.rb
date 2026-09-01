# frozen_string_literal: true

require "pathname"
require "set"

module Lorecraft
  # Bounded reads over the reusable-reference catalog. Atlas discovery stays in
  # Search, Connections, and Page; this query never returns Atlas entries as
  # results or adds Encyclopedia entries to the world graph.
  class EncyclopediaQuery
    DEFAULT_LIMIT = 12
    MAX_LIMIT = 100
    PREVALENCE_SCORE = { common: 30, uncommon: 20, rare: 10 }.freeze

    def initialize(world, action:, id: nil, query: nil, kind: nil, topic: nil,
                   audience: :all, limit: DEFAULT_LIMIT, context: [],
                   root: Dir.pwd)
      @world = world
      @action = action.to_sym
      @id = id&.to_s&.tr("-", "_")&.to_sym
      @query = query.to_s.strip
      @kind = kind&.to_sym
      @topic = topic&.to_sym
      @audience = audience.to_sym
      @limit = [[Integer(limit), 1].max, MAX_LIMIT].min
      @context = Array(context)
      @root = Pathname.new(root).expand_path
      validate_request!
    end

    def data
      case @action
      when :list, :search
        {
          query: @action,
          text: (@query unless @query.empty?),
          filters: { kind: @kind, topic: @topic, limit: @limit }.compact,
          count: ranked_entries.size,
          entries: ranked_entries.map { |entry, score| entry_summary(entry).merge(score: score) },
        }.compact
      when :page
        entry_document(required_entry)
      when :match
        match_document
      end
    end

    def report
      result = data
      case @action
      when :list, :search then report_entries(result)
      when :page then report_page(result)
      when :match then report_match(result)
      end
    end

    private

    def validate_request!
      unless %i[list search page match].include?(@action)
        raise Error, "unknown reference query #{@action}"
      end
      raise Error, "reference search needs text" if @action == :search && @query.empty?
      raise Error, "reference page needs an id" if @action == :page && !@id
      if @kind && !@world.schema.encyclopedia_kind?(@kind)
        raise Error, "unknown encyclopedia kind: #{@kind}"
      end
      if @topic && !@world.schema.tags.key?(@topic)
        raise Error, "unknown topic: #{@topic}"
      end
      @context.each do |term|
        unless Schema::CONTEXT_SCOPES.include?(term.scope)
          raise Error, "unknown context scope: #{term.scope}"
        end
        if term.type == :tag
          definition = @world.schema.context_tags[term.value]
          raise Error, "unknown context tag: #{term.value}" unless definition
          unless definition.scopes.include?(term.scope)
            raise Error, "context tag #{term.value} is not allowed for #{term.scope}"
          end
        elsif term.type == :encyclopedia
          object = @world.encyclopedia_entry(term.value)
          raise Error, "unknown context Encyclopedia entry: #{term.value}" unless object
          if @audience == :player && object.dm?
            raise Error, "unknown context Encyclopedia entry: #{term.value}"
          end
        else
          raise Error, "unknown context term type: #{term.type}"
        end
      end
    end

    def visible_entries
      @world.encyclopedia_entries.values.select do |entry|
        next false if @audience == :player && entry.dm?
        next false if @audience == :player && entry.status == :shell
        next false if @kind && entry.kind != @kind
        next false if @topic && !entry.topics.include?(@topic)

        true
      end
    end

    def ranked_entries
      @ranked_entries ||= visible_entries.filter_map do |entry|
        score = search_score(entry)
        [entry, score] if score
      end.sort_by { |entry, score| [-score, entry.title.downcase, entry.id.to_s] }.first(@limit)
    end

    def search_score(entry)
      return PREVALENCE_SCORE.fetch(entry.prevalence, 0) if @action == :list

      fields = {
        id: entry.id.to_s.tr("_", " ").downcase,
        title: entry.title.downcase,
        aliases: entry.aliases.join(" ").downcase,
        topics: entry.topics.join(" ").tr("_", " ").downcase,
        kind: [entry.kind, entry.subkind].compact.join(" ").tr("_", " ").downcase,
        summary: entry.summary.to_s.downcase,
      }
      phrase = @query.downcase
      tokens = phrase.split(/\s+/)
      return unless tokens.all? { |token| fields.values.any? { |value| value.include?(token) } }

      score = PREVALENCE_SCORE.fetch(entry.prevalence, 0)
      score += 120 if fields[:title] == phrase
      score += 110 if fields[:id] == phrase
      score += 100 if entry.aliases.any? { |name| name.downcase == phrase }
      score += 70 if fields[:title].start_with?(phrase)
      score += 55 if fields[:title].include?(phrase)
      score += 30 if fields[:topics].include?(phrase)
      score += 20 if fields[:summary].include?(phrase)
      score
    end

    def required_entry
      entry = @world.encyclopedia_entry(@id)
      raise Error, "unknown Encyclopedia entry: #{@id}" unless entry
      if @audience == :player && entry.dm?
        raise Error, "unknown Encyclopedia entry: #{@id}"
      end
      if @audience == :player && entry.status == :shell
        raise Error, "unknown Encyclopedia entry: #{@id}"
      end

      entry
    end

    def entry_summary(entry)
      {
        external_key: entry.source_id,
        slug: entry.id.to_s.tr("_", "-"),
        title: entry.title,
        aliases: entry.aliases,
        kind: entry.kind,
        subkind: entry.subkind,
        status: entry.status,
        summary: entry.summary,
        topics: entry.topics,
        prevalence: entry.prevalence,
        character_role: entry.character_role,
        origin_blurb: entry.origin_blurb,
        facts: entry.fact_values,
        descriptive_identity: @world.resolve_identity(
          entry, audience: @audience
        ).descriptive_identity,
        tier: entry.ability_tier,
        dm: (entry.dm? if @audience == :all),
        source_file: relative_source(entry),
      }.compact
    end

    def entry_document(entry)
      entry_summary(entry).merge(
        availability: availability_document(entry),
        usage: usage_document(entry),
        sections: section_documents(entry),
        instances: @world.encyclopedia_instances(entry.id).filter_map do |entity|
          next if @audience == :player && entity.dm?

          {
            external_key: entity.source_id,
            title: entity.title,
            kind: entity.kind,
            subkind: entity.subkind,
          }
        end.sort_by { |entity| [entity[:title].downcase, entity[:external_key]] },
        members: @world.encyclopedia_members(entry.id).filter_map do |entity|
          next if @audience == :player && entity.dm?

          {
            external_key: entity.source_id,
            title: entity.title,
            kind: entity.kind,
            subkind: entity.subkind,
          }
        end.sort_by { |entity| [entity[:title].downcase, entity[:external_key]] }
      )
    end

    def availability_document(entry)
      return { mode: :global } if entry.availability_mode == :global
      return nil unless entry.availability_mode == :contextual

      {
        mode: :contextual,
        selectors: entry.selectors.map do |selector|
          {
            all: selector.all.map { |term| term_document(term) },
            any: selector.any.map { |term| term_document(term) },
            none: selector.none.map { |term| term_document(term) },
          }
        end,
      }
    end

    def usage_document(entry)
      visible_usage(entry).group_by(&:kind).transform_values do |items|
        items.sort_by(&:order).map(&:text)
      end.then do |groups|
        {
          cues: groups.fetch(:cue, []),
          affordances: groups.fetch(:affordance, []),
          pressures: groups.fetch(:pressure, []),
          variations: groups.fetch(:variation, []),
        }
      end
    end

    def section_documents(entry)
      visible_blocks(entry).sort_by(&:order).map do |block|
        {
          heading: block.heading || humanize(block.section),
          text: renderer.render(block.text, entry, @audience),
          audience: block.dm? ? :gm : :player,
        }
      end
    end

    def term_document(term)
      value = { scope: term.scope }
      if term.type == :tag
        value[:tag] = term.value.to_s
      else
        object = @world.encyclopedia_entry(term.value)
        value[:encyclopedia_external_key] = object&.source_id || term.value.to_s
      end
      value
    end

    def match_document
      matches = visible_entries.filter_map do |entry|
        selector, terms = matching_selector(entry)
        next if entry.availability_mode != :global && !selector

        score = PREVALENCE_SCORE.fetch(entry.prevalence, 0) + terms.size * 10
        {
          entry: entry_summary(entry),
          matched_selector: selector,
          matched_terms: terms.map { |term| term_document(term) },
          score: score,
        }
      end
      matches.sort_by! { |match| [-match[:score], match[:entry][:title].downcase] }
      {
        context: @context.map { |term| term_document(term) },
        count: [matches.size, @limit].min,
        matches: matches.first(@limit),
      }.compact
    end

    def matching_selector(entry)
      return [nil, []] if entry.availability_mode == :global

      profile = @context.map { |term| [term.scope, term.type, term.value] }.to_set
      entry.selectors.each_with_index do |selector, index|
        all = selector.all.map { |term| [term.scope, term.type, term.value] }
        any = selector.any.map { |term| [term.scope, term.type, term.value] }
        none = selector.none.map { |term| [term.scope, term.type, term.value] }
        next unless all.all? { |term| profile.include?(term) }
        next unless any.empty? || any.any? { |term| profile.include?(term) }
        next if none.any? { |term| profile.include?(term) }

        matched = (selector.all + selector.any).select do |term|
          profile.include?([term.scope, term.type, term.value])
        end
        return [index, matched]
      end
      [nil, []]
    end

    def visible_usage(entry)
      @audience == :player ? entry.usage.reject(&:dm?) : entry.usage
    end

    def visible_blocks(entry)
      @audience == :player ? entry.prose_blocks.reject(&:dm?) : entry.prose_blocks
    end

    def renderer
      @renderer ||= ReferenceTextRenderer.new(@world)
    end

    def relative_source(entry)
      return unless entry.source_file

      Pathname.new(entry.source_file).expand_path.relative_path_from(@root).to_s
    rescue ArgumentError
      entry.source_file.to_s
    end

    def humanize(value) = value.to_s.split("_").map(&:capitalize).join(" ")

    def report_entries(result)
      return "No Encyclopedia entries matched." if result[:entries].empty?

      lines = ["#{result[:count]} Encyclopedia entr#{result[:count] == 1 ? 'y' : 'ies'}:"]
      result[:entries].each do |entry|
        lines << "  #{entry[:external_key]}  #{entry[:kind]}/#{entry[:subkind]}  #{entry[:title]}"
        lines << "    #{entry[:summary]}" unless entry[:summary].to_s.empty?
      end
      lines.join("\n")
    end

    def report_page(result)
      lines = ["# #{result[:title]}", "", result[:summary].to_s, ""]
      result[:sections].each do |section|
        lines << "## #{section[:heading]}"
        lines << ""
        lines << section[:text]
        lines << ""
      end
      lines.join("\n").rstrip
    end

    def report_match(result)
      return "No Encyclopedia entries matched this context." if result[:matches].empty?

      lines = ["#{result[:count]} applicable Encyclopedia entr#{result[:count] == 1 ? 'y' : 'ies'}:"]
      result[:matches].each do |match|
        entry = match[:entry]
        lines << "  #{entry[:external_key]}  #{entry[:kind]}  #{entry[:title]}  score=#{match[:score]}"
      end
      lines.join("\n")
    end

    class ReferenceTextRenderer < Render::Base
      def render(text, entry, audience)
        resolve_prose(
          text,
          from_path: "encyclopedia/#{entry.id}.md",
          year: @world.timeline.now_year,
          audience: audience,
          namespace: :encyclopedia
        ).strip
      end
    end
  end
end
