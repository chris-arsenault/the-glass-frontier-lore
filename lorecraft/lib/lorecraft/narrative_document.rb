# frozen_string_literal: true

require_relative "markers"

module Lorecraft
  PublicAnnotation = Struct.new(
    :id, :anchor, :source_anchor, :text, :kind, :display, :anchor_index,
    keyword_init: true
  )

  MediaReference = Struct.new(
    :asset_id, :role, :url, :anchor, :anchor_index, :caption, :size,
    :justification, :source_entity, :reference_id,
    keyword_init: true
  )

  # Public notes and illustrations belong to the text they annotate. They are
  # reader content, unlike an entry's hidden editorial log.
  module PublishedContext
    attr_reader :annotations, :media_references

    def initialize_published_context
      @annotations = []
      @media_references = []
    end

    def add_annotation(annotation) = @annotations << annotation
    def add_media_reference(reference) = @media_references << reference
  end

  module PublishedContextBuilder
    def annotation(id, anchor:, text:, type: :historian, display: :popout,
                   anchor_index: nil, source_anchor: nil)
      @published_owner.add_annotation(PublicAnnotation.new(
        id: id.to_s,
        anchor: anchor.to_s,
        source_anchor: source_anchor&.to_s,
        text: text.to_s,
        kind: type.to_sym,
        display: display.to_sym,
        anchor_index: anchor_index,
      ))
    end

    def image(asset_id, role:, url: nil, anchor: nil, anchor_index: nil, caption: nil,
              size: nil, justification: nil, source_entity: nil, reference_id: nil)
      @published_owner.add_media_reference(MediaReference.new(
        asset_id: asset_id.to_s,
        role: role.to_sym,
        url: url,
        anchor: anchor,
        anchor_index: anchor_index,
        caption: caption,
        size: size&.to_sym,
        justification: justification&.to_sym,
        source_entity: source_entity&.to_sym,
        reference_id: reference_id&.to_s,
      ))
    end
  end

  # A compact canonical event retained from an imported historical record. It
  # remains queryable and citable without becoming a reader page. Events with
  # their own article or state transition may also be represented as moments.
  class EventRecord
    attr_reader :id, :tick, :era, :event_kind, :subject, :action, :description,
                :significance, :tags, :participants, :participant_effects,
                :caused_by, :source_file, :source_line

    def initialize(id:, tick:, era:, event_kind:, subject: nil, action: nil,
                   description: nil, significance: nil, tags: [], participants: [],
                   participant_effects: [], caused_by: nil, source_file: nil, source_line: nil)
      @id = id.to_s
      @tick = Integer(tick)
      @era = era&.to_sym
      @event_kind = event_kind.to_sym
      @subject = subject&.to_sym
      @action = action
      @description = description
      @significance = significance
      @tags = Array(tags).map(&:to_sym)
      @participants = Array(participants).map(&:to_sym)
      @participant_effects = Array(participant_effects)
      @caused_by = caused_by
      @source_file = source_file
      @source_line = source_line
    end
  end

  # Long-form reader content tied to the world but excluded from the entity
  # graph. Chronicles cite canonical entities and source records; era narratives
  # cite chronicles.
  class NarrativeDocument
    include PublishedContext

    attr_reader :id, :document_type, :attrs, :content_blocks, :source_file,
                :source_line, :log_entries, :questions

    def initialize(id:, document_type:, source_file: nil, source_line: nil)
      @id = id.to_sym
      @document_type = document_type.to_sym
      @source_file = source_file
      @source_line = source_line
      @attrs = { source_id: id.to_s }
      @content_blocks = []
      @log_entries = []
      @questions = []
      @content_order = 0
      initialize_published_context
    end

    def title = @attrs[:title] || @id.to_s.split("_").map(&:capitalize).join(" ")
    def summary = @attrs[:summary] || @attrs[:thesis]
    def source_id = @attrs[:source_id]
    def status = @attrs[:status]
    def kind = @document_type
    def subkind = @document_type
    def tags = []
    def prominence = nil
    def authored_blocks = @content_blocks
    def prose_blocks = @content_blocks
    def dm? = false
    def [](key) = @attrs[key.to_sym]

    def build(world, &block)
      Builder.new(self, world).instance_eval(&block) if block
      self
    end

    class Builder
      include Markers
      include PublishedContextBuilder

      def initialize(document, world)
        @document = document
        @world = world
        @published_owner = document
      end

      def title(value) = set(:title, value.to_s)
      def summary(value) = set(:summary, value.to_s)
      def source_id(value) = set(:source_id, value.to_s)
      def status(value) = set(:status, value.to_sym)
      def reviewed(value) = set(:reviewed, value)
      def format(value) = set(:format, value.to_sym)
      def focus(value) = set(:focus, value.to_sym)
      def narrative_style(value) = set(:narrative_style, value.to_sym)
      def focal_era(value) = set(:focal_era, value.to_sym)
      def era(value) = set(:era, value.to_sym)
      def ticks(from:, to:) = set(:tick_range, [Integer(from), to.nil? ? nil : Integer(to)])
      def temporal_description(value) = set(:temporal_description, value.to_s)
      def source_temporal_description(value) = set(:source_temporal_description, value.to_s)
      def touched_eras(*values) = set(:touched_eras, values.flatten.map(&:to_sym))
      def entrypoint(value) = set(:entrypoint, value.to_sym)
      def entities(*values) = set(:entity_ids, values.flatten.map(&:to_sym))
      def events(*values) = set(:event_ids, values.flatten.map(&:to_s))
      def relationships(*values) = set(:relationship_ids, values.flatten.map(&:to_s))
      def roles(values) = set(:role_assignments, values.to_h.transform_keys(&:to_sym))
      def source_chronicles(*values) = set(:source_chronicle_ids, values.flatten.map(&:to_sym))
      def thesis(value) = set(:thesis, value.to_s)
      def tone(value) = set(:tone, value.to_s)

      def prose(text, heading: nil, origin: nil, drafted_by: nil, reviewed: nil)
        @document.content_blocks << ProseBlock.new(
          text: text.to_s,
          section: :main,
          heading: heading,
          at_year: nil,
          dm: false,
          order: next_order,
          origin: origin&.to_sym,
          drafted_by: drafted_by&.to_sym,
          reviewed: reviewed,
        )
      end

      def log(entry) = @document.log_entries << entry.to_s

      def question(text, raised: nil, on: nil)
        @document.questions << Question.new(
          text: text.to_s,
          raised: raised,
          on: on,
          order: @document.questions.length + 1,
        )
      end

      private

      def set(key, value) = @document.attrs[key.to_sym] = value

      def next_order
        @document.instance_variable_set(
          :@content_order,
          @document.instance_variable_get(:@content_order) + 1,
        )
      end
    end
  end
end
