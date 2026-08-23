resource :sable_witness_spool do
  name "Sable Witness Spool"
  subkind :data
  status :complete
  prominence :marginal
  veiled "Sable witness spools preserve one spoken account in four voices so later distortion remains visible."
end

relate :rel_sable_witness_spool_at_sable_crescent, :sourced_from, :sable_witness_spool, :sable_crescent
relate :rel_sable_witness_spool_at_verathi, :sourced_from, :sable_witness_spool, :verathi
relate :rel_sable_witness_spool_at_hab_meridian, :sourced_from, :sable_witness_spool, :hab_meridian
relate :rel_sable_witness_spool_at_underlayers, :sourced_from, :sable_witness_spool, :underlayers
