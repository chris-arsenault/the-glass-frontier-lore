creature :glasswake_gutter_crown do
  name "The Glasswake Gutter Crown"
  summary "The Glasswake Gutter Crown is a single many-mouthed colony spread through the runoff channels between Glasswake and the Dry Net."
  subkind :creature
  type_of :gutter_crown
  status :complete
  prominence :marginal
  veiled "The Glasswake Gutter Crown filters metal from runoff through one ring of mouths spread between Glasswake and the Dry Net."
end

relate :rel_gutter_crown_in_glasswake, :inhabits, :glasswake_gutter_crown, :glasswake
relate :rel_gutter_crown_in_the_dry_net, :inhabits, :glasswake_gutter_crown, :the_dry_net
