artifact :meridian_witness_spool do
  name "The Meridian Witness Spool"
  summary "The Meridian Witness Spool is a spoken-record medium sourced along the Sable Crescent, Verathi, Hab Meridian, and the Underlayers. It preserves one account in four voices so later distortion remains visible."
  subkind :record
  type_of :sable_witness_spool
  status :complete
  prominence :marginal
  veiled "The Meridian Witness Spool preserves one spoken account in four voices so later distortion remains visible."
end

relate :rel_sable_witness_spool_at_sable_crescent, :sourced_from, :meridian_witness_spool, :sable_crescent
relate :rel_sable_witness_spool_at_verathi, :sourced_from, :meridian_witness_spool, :verathi
relate :rel_sable_witness_spool_at_hab_meridian, :sourced_from, :meridian_witness_spool, :hab_meridian
relate :rel_sable_witness_spool_at_underlayers, :sourced_from, :meridian_witness_spool, :underlayers
