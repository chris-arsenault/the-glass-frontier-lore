npc :thornvault_echo_guide do
  name "The Thornvault Echo Guide"
  summary "The Thornvault Echo Guide keeps their footing when Sable recordings make a corridor sound wider than it is."
  type_of :specialist_practitioner
  belongs_to :ability, :echo_orientation
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Thornvault Echo Guide keeps their footing when Sable recordings make a corridor sound wider than it is."
end

relate :rel_echo_orientation_at_sable_crescent, :manifests_at, :thornvault_echo_guide, :sable_crescent
relate :rel_echo_orientation_at_ledgerfall, :manifests_at, :thornvault_echo_guide, :ledgerfall
relate :rel_echo_orientation_at_thornvault, :manifests_at, :thornvault_echo_guide, :thornvault
