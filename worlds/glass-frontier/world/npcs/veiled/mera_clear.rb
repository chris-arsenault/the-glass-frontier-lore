npc :mera_clear do
  name "Mera Clear"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Mera Clear checks Orra seed shipments against the inspection copies filed at Clearance Eight."
end

relate :rel_mera_clear_at_orra, :operates_in, :mera_clear, :orra
relate :rel_mera_clear_at_clearance_eight, :operates_in, :mera_clear, :clearance_eight
