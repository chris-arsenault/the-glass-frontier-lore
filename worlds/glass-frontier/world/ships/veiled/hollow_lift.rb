transport :hollow_lift do
  name "Hollow Lift"
  summary "Hollow lifts are spoke vehicles serving Eleven, Holl, and Five Landing. They travel on counterweights filled with household scrap."
  subkind :transport
  status :complete
  prominence :marginal
  veiled "Hollow lifts travel Eleven's spoke on counterweights filled with household scrap."
end

relate :rel_hollow_lift_at_eleven, :operates_in, :hollow_lift, :eleven
relate :rel_hollow_lift_at_holl, :operates_in, :hollow_lift, :holl
relate :rel_hollow_lift_at_five_landing, :operates_in, :hollow_lift, :five_landing
