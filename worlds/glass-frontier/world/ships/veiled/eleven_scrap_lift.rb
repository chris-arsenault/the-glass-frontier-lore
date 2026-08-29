transport :eleven_scrap_lift do
  name "The Eleven Scrap Lift"
  summary "The Eleven Scrap Lift is a spoke vehicle serving Eleven, Holl, and Five Landing. It travels on counterweights filled with household scrap."
  subkind :transport
  type_of :hollow_lift
  status :complete
  prominence :marginal
  veiled "The Eleven Scrap Lift travels the spoke on counterweights filled with household scrap."
end

relate :rel_hollow_lift_at_eleven, :operates_in, :eleven_scrap_lift, :eleven
relate :rel_hollow_lift_at_holl, :operates_in, :eleven_scrap_lift, :holl
relate :rel_hollow_lift_at_five_landing, :operates_in, :eleven_scrap_lift, :five_landing
