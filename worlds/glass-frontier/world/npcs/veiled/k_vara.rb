npc :k_vara do
  name "K'vara"
  summary "K'vara is a courier who carries replacement forks among Issel, Tanel, and Talven."
  subkind :courier
  type_of :person
  belongs_to :role, :couriers
  status :complete
  prominence :marginal
  veiled "K'vara ferries replacement forks among Issel, Tanel, and Talven in a case that hums when one is missing."end

relate :rel_k_vara_at_issel, :operates_in, :k_vara, :issel
relate :rel_k_vara_at_tanel, :operates_in, :k_vara, :tanel
relate :rel_k_vara_at_talven, :operates_in, :k_vara, :talven
