creature :gutter_crown do
  name "Gutter Crown"
  summary "A gutter crown is a many-mouthed drain creature found between Glasswake and the Dry Net. It spreads through runoff channels and filters metal from the water."
  subkind :creature
  status :complete
  prominence :marginal
  veiled "A gutter crown spreads through Glasswake drains as a ring of mouths that filters metal from runoff."
end

relate :rel_gutter_crown_in_glasswake, :inhabits, :gutter_crown, :glasswake
relate :rel_gutter_crown_in_the_dry_net, :inhabits, :gutter_crown, :the_dry_net
