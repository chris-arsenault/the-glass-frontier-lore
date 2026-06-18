# frozen_string_literal: true

module Lorecraft
  # One paragraph-level block of owned prose. Entities, events, and named
  # relations all own an ordered list of these. A block may be scoped to a
  # canonical section (e.g. :history) and to an era (only rendered once the
  # render tick has reached `at_tick`), and may be DM-only.
  #
  # The raw text contains `ref`/`rel` marker sentinels (see Markers); they are
  # resolved by a renderer against a specific era.
  ProseBlock = Struct.new(:text, :section, :heading, :at_tick, :dm, :order, keyword_init: true) do
    def dm? = dm == true

    # Visible at render tick T for the given audience?
    def visible_at?(tick, audience:)
      return false if dm? && audience == :player
      at_tick.nil? || tick.nil? || at_tick <= tick
    end
  end
end
