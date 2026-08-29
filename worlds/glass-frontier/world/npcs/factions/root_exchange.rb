faction :root_exchange do
  name "Root Exchange"
  summary "Root Exchange is a graft-trading network among households in Mera, Noll, Orra, and Olven that transfers living plants without pricing them as coin."
  type_of :graft_exchange_network
  subkind :trade_network
  status :complete
  prominence :marginal
  veiled "Root Exchange households trade living grafts among Mera, Noll, Orra, and Olven without converting them into coin."
end

relate :rel_root_exchange_at_mera, :manifests_at, :root_exchange, :mera
relate :rel_root_exchange_at_noll, :manifests_at, :root_exchange, :noll
relate :rel_root_exchange_at_orra, :manifests_at, :root_exchange, :orra
relate :rel_root_exchange_at_olven, :manifests_at, :root_exchange, :olven
