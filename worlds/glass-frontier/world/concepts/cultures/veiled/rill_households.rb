culture :rill_households do
  name "Rill Households"
  subkind :culture
  status :complete
  prominence :marginal
  veiled "Rill households exchange seed, water, and grazing space through promises sung over the same pipe tone."
end

relate :rel_rill_households_at_perch, :manifests_at, :rill_households, :perch
relate :rel_rill_households_at_talven, :manifests_at, :rill_households, :talven
relate :rel_rill_households_at_orra, :manifests_at, :rill_households, :orra
relate :rel_rill_households_at_seren, :manifests_at, :rill_households, :seren
