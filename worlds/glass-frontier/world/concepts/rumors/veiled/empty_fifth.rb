rumor :empty_fifth do
  name "The Empty Fifth"
  subkind :rumor
  status :complete
  prominence :marginal
  veiled "Five Landing porters pass around a bunk key that returns to its hook after its guest joins the morning departure queue."
end

relate :rel_empty_fifth_at_five_landing, :manifests_at, :empty_fifth, :five_landing
