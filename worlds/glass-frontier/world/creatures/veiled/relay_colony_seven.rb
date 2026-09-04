creature :relay_colony_seven do
  name "Relay Colony Seven"
  summary "Relay Colony Seven is a named signal-fed growth recorded at Span Nine, Issel, Far Bell, and Karet Three."
  subkind :creature
  status :complete
  prominence :marginal
  type_of :signal_fed
  veiled "Relay Colony Seven grows the same shell pattern at Span Nine, Issel, Far Bell, and Karet Three in time with one repeated transmission."
end

relate :rel_relay_colony_seven_at_span_nine, :inhabits, :relay_colony_seven, :span_nine
relate :rel_relay_colony_seven_at_issel, :inhabits, :relay_colony_seven, :issel
relate :rel_relay_colony_seven_at_far_bell, :inhabits, :relay_colony_seven, :far_bell
relate :rel_relay_colony_seven_at_karet_three, :inhabits, :relay_colony_seven, :karet_three
