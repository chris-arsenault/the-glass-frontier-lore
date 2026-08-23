# frozen_string_literal: true

module Lorecraft
  # A bounded authoring view of one chronicle or era narrative. It exposes the
  # complete text and its source links without loading the surrounding corpus.
  class NarrativeQuery < Render::Base
    def initialize(world, id:, type: :chronicle)
      super(world)
      @document = if type.to_sym == :chronicle
                    world.chronicle(id)
                  else
                    world.era_narrative(id)
                  end
      raise Error, "unknown #{type.to_s.tr('_', ' ')}: #{id}" unless @document
    end

    def data
      {
        id: @document.id,
        source_id: @document.source_id,
        type: @document.document_type,
        title: @document.title,
        summary: @document.summary,
        status: @document.status,
        metadata: serializable(@document.attrs.reject { |key, _value| %i[title summary status source_id].include?(key) }),
        content: content,
        entity_ids: Array(@document[:entity_ids]),
        event_ids: Array(@document[:event_ids]),
        relationship_ids: Array(@document[:relationship_ids]),
        source_chronicle_ids: Array(@document[:source_chronicle_ids]),
        annotations: @document.annotations.map { |annotation| serializable(annotation.to_h) },
        media: @document.media_references.map { |reference| serializable(reference.to_h) },
      }.compact
    end

    def report
      lines = ["# #{@document.title}"]
      lines << ""
      lines << @document.summary if @document.summary
      lines << ""
      lines << content
      unless @document.annotations.empty?
        lines << "" << "## Historian's notes" << ""
        @document.annotations.each do |annotation|
          lines << "- #{annotation.anchor}: #{annotation.text}"
        end
      end
      lines.join("\n")
    end

    def on_future(marker) = marker.name
    def link(text, _target_path, _from_path, _anchor) = text

    private

    def content
      @document.prose_blocks.sort_by(&:order).map do |block|
        resolve_prose(
          block.text,
          from_path: "narratives/#{@document.id}.md",
          year: @world.timeline.now_year,
          audience: :player,
        ).strip
      end.join("\n\n")
    end

    def serializable(value)
      case value
      when Hash
        value.to_h { |key, item| [key, serializable(item)] }
      when Array
        value.map { |item| serializable(item) }
      when Symbol
        value.to_s
      else
        value
      end
    end
  end
end
