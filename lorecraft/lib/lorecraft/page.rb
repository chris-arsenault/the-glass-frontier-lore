# frozen_string_literal: true

require_relative "markers"

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
    attr_reader :id, :prose_blocks
    attr_accessor :title, :wiki_name, :audience

    def initialize(id:, title: nil, wiki: nil, audience: :all)
      @id = id.to_sym
      @title = title || id.to_s.split("_").map(&:capitalize).join(" ")
      @wiki_name = wiki || @title.gsub(" ", "-")
      @audience = audience
      @prose_blocks = []
      @order = 0
    end

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

      def prose(text, heading: nil)
        @page.prose_blocks << { text: text, heading: heading, order: (@order = (@order || 0) + 1) }
      end
    end
  end
end
