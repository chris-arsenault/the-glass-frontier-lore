# frozen_string_literal: true

module Lorecraft
  # One paragraph-level block of owned prose. Entities, moments, and named
  # relations all own an ordered list of these. A block may be scoped to a
  # canonical section (e.g. :history) and to an era (only rendered once the
  # render year has reached `at_year`), and may be DM-only.
  #
  # The raw text contains `ref`/`rel` marker sentinels (see Markers); they are
  # resolved by a renderer against a specific era.
  #
  # PROVENANCE. Most of this corpus was drafted by a machine, and the writing
  # rules it must satisfy — in-world voice, no domain leakage, no design register
  # — are things only a human reading the prose can confirm. So a block records
  # who drafted it and whether anyone has read it:
  #
  #   drafted_by  :ai | :human | :ai_human (machine drafted, human revised)
  #   reviewed    a "YYYY-MM-DD" date once a human has read this block against
  #               the writing rules. Never set it on a block's behalf.
  #   origin      :authored (written fresh), :adapted (recast from reference
  #               material), or :structural (transclusion shells and scaffolding
  #               that make no claim of their own)
  #
  # This lives on the block rather than in a file keyed by path, because path
  # keys do not survive a reorganisation and a file is too coarse to review.
  ORIGINS = %i[authored adapted structural].freeze
  DRAFTERS = %i[ai human ai_human].freeze

  ProseBlock = Struct.new(:text, :section, :heading, :at_year, :dm, :order,
                          :origin, :drafted_by, :reviewed, keyword_init: true) do
    def dm? = dm == true

    # Visible at render year T for the given audience?
    def visible_at?(year, audience:)
      return false if dm? && audience == :player
      at_year.nil? || year.nil? || at_year <= year
    end

    def reviewed? = !(reviewed.nil? || reviewed == false)

    # Scaffolding carries no claim, so it needs no human read.
    def claims? = origin != :structural

    # The risk this audit exists to measure: a machine wrote it and nobody has
    # checked it against the writing rules.
    def unread_machine_prose? = drafted_by != :human && claims? && !reviewed?
  end
end
