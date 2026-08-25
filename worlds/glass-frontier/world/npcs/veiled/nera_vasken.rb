npc :nera_vasken do
  name "Nera Vasken"
  summary "Nera Vasken is a plant grafter who joins Lumenshard cuttings to Mera rootstock."
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Nera Vasken grafts Lumenshard plants onto Mera rootstock and records which cuts begin to sing."end

relate :rel_nera_vasken_at_lumenshard, :operates_in, :nera_vasken, :lumenshard
relate :rel_nera_vasken_at_mera, :operates_in, :nera_vasken, :mera
