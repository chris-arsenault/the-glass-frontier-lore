era :closed_landing_years do
  name "Closed-Landing Years"
  summary "The Closed-Landing Years were the local period when Fourth Bell housed every traveler turned back by Five Landing."
  subkind :era
  status :complete
  prominence :marginal
  veiled "Closed-Landing Years is the local name for the long interval when Fourth Bell housed every traveler Five Landing turned back."
end

relate :rel_closed_landing_years_at_five_landing, :manifests_at, :closed_landing_years, :five_landing
relate :rel_closed_landing_years_at_fourth_bell_house, :manifests_at, :closed_landing_years, :fourth_bell_house
