phenomenon :empty_berth_fever do
  name "Empty-Berth Fever"
  subkind :social_condition
  status :complete
  prominence :marginal
  veiled "Empty-Berth Fever drives stranded passengers to claim unused rooms and defend them as inherited homes."
end

relate :rel_empty_berth_fever_at_fourth_bell_house, :manifests_at, :empty_berth_fever, :fourth_bell_house
relate :rel_empty_berth_fever_at_five_landing, :manifests_at, :empty_berth_fever, :five_landing
relate :rel_empty_berth_fever_at_holl, :manifests_at, :empty_berth_fever, :holl
relate :rel_empty_berth_fever_at_eleven, :manifests_at, :empty_berth_fever, :eleven
