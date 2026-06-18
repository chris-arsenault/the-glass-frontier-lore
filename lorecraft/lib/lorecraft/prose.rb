# frozen_string_literal: true

module Lorecraft
  # One paragraph-level block of owned prose. Entities, moments, and named
  # relations all own an ordered list of these. A block may be scoped to a
  # canonical section (e.g. :history) and to an era (only rendered once the
  # render year has reached `at_year`), and may be DM-only.
  #
  # The raw text contains `ref`/`rel` marker sentinels (see Markers); they are
  # resolved by a renderer against a specific era.
  ProseBlock = Struct.new(:text, :section, :heading, :at_year, :dm, :order, keyword_init: true) do
    def dm? = dm == true

    # Visible at render year T for the given audience?
    def visible_at?(year, audience:)
      return false if dm? && audience == :player
      at_year.nil? || year.nil? || at_year <= year
    end
  end
end
