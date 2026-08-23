# frozen_string_literal: true

require_relative "markers"
require_relative "prose"

module Lorecraft
  # An authored standalone page — hand-written prose that belongs in the wiki
  # but is NOT a world entity (the Home overview, narrative front-matter, etc.).
  # Pages never enter the entity graph, carry no relationships, and are not
  # validated as entities; they are pure rendered content. Prose supports the
  # same `ref`/`future` bindings as entities.
  #
  #   page :home, title: "The Glass Frontier", wiki: "Home" do
  #     prose <<~MD ... MD
  #   end
  class Page
    attr_reader :id, :prose_blocks, :source_file, :source_line, :attrs
    attr_accessor :title, :wiki_name, :audience

    def initialize(id:, title: nil, wiki: nil, audience: :all, source_file: nil, source_line: nil)
      @id = id.to_sym
      @title = title || id.to_s.split("_").map(&:capitalize).join(" ")
      @wiki_name = wiki || @title.gsub(" ", "-")
      @audience = audience
      @source_file = source_file
      @source_line = source_line
      @prose_blocks = []
      @attrs = { source_id: id.to_s }
      @order = 0
    end

    def source_id = @attrs[:source_id]
    def summary = @attrs[:summary]
    def status = @attrs[:status]
    def kind = :page
    def subkind = @attrs[:category] || :page
    def tags = []
    def aliases = []
    def prominence = nil
    def dm? = !%i[all player].include?(@audience)
    def authored_blocks = @prose_blocks
    def [](key) = @attrs[key.to_sym]

    def build(&block)
      Builder.new(self).instance_eval(&block) if block
      self
    end

    class Builder
      include Markers

      def initialize(page)
        @page = page
      end

      def title(value) = @page.title = value
      def wiki(value) = @page.wiki_name = value
      def source_id(value) = set(:source_id, value.to_s)
      def summary(value) = set(:summary, value.to_s)
      def status(value) = set(:status, value.to_sym)
      def category(value) = set(:category, value.to_sym)
      def source_status(value) = set(:source_status, value.to_s)
      def linked_entities(*values) = set(:linked_entity_ids, values.flatten.map(&:to_sym))

      def prose(text, heading: nil, origin: nil, drafted_by: nil, reviewed: nil)
        @page.prose_blocks << ProseBlock.new(
          text: text.to_s,
          section: :main,
          heading: heading,
          at_year: nil,
          dm: @page.dm?,
          order: (@order = (@order || 0) + 1),
          origin: origin&.to_sym,
          drafted_by: drafted_by&.to_sym,
          reviewed: reviewed,
        )
      end

      private

      def set(key, value) = @page.attrs[key.to_sym] = value
    end
  end
end
