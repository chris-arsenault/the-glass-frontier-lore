incident :five_landing_empty_berth_fever do
  name "Five Landing Empty-Berth Fever"
  summary "Five Landing Empty-Berth Fever is a social condition among stranded passengers who occupy unused rooms and defend them as inherited homes."
  type_of :empty_berth_fever
  subkind :incident
  status :complete
  prominence :marginal
  veiled "Five Landing Empty-Berth Fever is a social condition among stranded passengers who occupy unused rooms and defend them as inherited homes."
end
relate :rel_empty_berth_fever_at_fourth_bell_house, :manifests_at, :five_landing_empty_berth_fever, :fourth_bell_house
relate :rel_empty_berth_fever_at_five_landing, :manifests_at, :five_landing_empty_berth_fever, :five_landing
relate :rel_empty_berth_fever_at_holl, :manifests_at, :five_landing_empty_berth_fever, :holl
relate :rel_empty_berth_fever_at_eleven, :manifests_at, :five_landing_empty_berth_fever, :eleven
