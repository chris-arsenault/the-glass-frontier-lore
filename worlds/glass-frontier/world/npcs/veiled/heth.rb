npc :heth do
  name "Heth"
  summary "Heth is the leader of Mera's night harvest crews."
  subkind :leader
  type_of :person
  status :complete
  prominence :marginal
  veiled "Heth directs Mera's night harvest and burns any root mat that answers in a human voice."end

relate :rel_heth_at_mera, :operates_in, :heth, :mera
