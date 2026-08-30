faction :root_commons do
  name "The Root Commons"
  summary "The Root Commons is a mutual-aid network that moves food and air workers among Noll, Rib, Vey, and Lung Three."
  subkind :mutual_aid
  type_of :working_mutuals
  status :complete
  prominence :marginal
  veiled "The Root Commons moves food and air workers among four habs whenever one garden loses heat."
end

relate :rel_root_commons_at_noll, :operates_in, :root_commons, :noll
relate :rel_root_commons_at_rib, :operates_in, :root_commons, :rib
relate :rel_root_commons_at_vey, :operates_in, :root_commons, :vey
relate :rel_root_commons_at_lung_three, :operates_in, :root_commons, :lung_three
