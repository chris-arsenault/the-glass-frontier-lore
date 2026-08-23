resource :outer_ballast_share do
  name "Outer Ballast Share"
  subkind :resource
  status :complete
  prominence :marginal
  veiled "Outer Ballast Share is a common stock of dense stone that any stranded vessel may borrow and later replace."
end

relate :rel_outer_ballast_share_at_korvath, :sourced_from, :outer_ballast_share, :korvath
relate :rel_outer_ballast_share_at_crucible, :sourced_from, :outer_ballast_share, :crucible
relate :rel_outer_ballast_share_at_vitrael, :sourced_from, :outer_ballast_share, :vitrael
relate :rel_outer_ballast_share_at_vastine, :sourced_from, :outer_ballast_share, :vastine
