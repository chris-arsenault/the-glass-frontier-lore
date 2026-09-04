npc :mera_vonn do
  name "Mera Vonn"
  summary "Mera Vonn is an Oruun freight mediator working at Bay Thirty-One, Exchange C, Five Landing, and Holl."
  subkind :npc
  status :complete
  prominence :marginal
  type_of :oruun
  veiled "Mera Vonn wears weighted kin-rings from Bay Thirty-One, Exchange C, Five Landing, and Holl, each balanced for a different local spin."
end

relate :rel_mera_vonn_at_bay_thirty_one, :inhabits, :mera_vonn, :thirty_one
relate :rel_mera_vonn_at_exchange_c, :inhabits, :mera_vonn, :rattle
relate :rel_mera_vonn_at_five_landing, :inhabits, :mera_vonn, :five_landing
relate :rel_mera_vonn_at_holl, :inhabits, :mera_vonn, :holl
