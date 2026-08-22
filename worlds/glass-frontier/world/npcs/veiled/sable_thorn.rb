npc :sable_thorn do
  name "Sable Thorn"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Sable Thorn cultivates Thornvault cuttings in Sable Crescent and records which roots tolerate open glare."
end

relate :rel_sable_thorn_at_thornvault, :operates_in, :sable_thorn, :thornvault
relate :rel_sable_thorn_at_sable_crescent, :operates_in, :sable_thorn, :sable_crescent
