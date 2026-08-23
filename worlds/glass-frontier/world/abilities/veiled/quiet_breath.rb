ability :quiet_breath do
  name "Quiet Breath"
  subkind :ability
  status :complete
  prominence :marginal
  veiled "Quiet breath lets a salvager work beside sound-sensitive glasswurms without waking the colony."
end

relate :rel_quiet_breath_at_the_dry_net, :manifests_at, :quiet_breath, :the_dry_net
relate :rel_quiet_breath_at_pell_cut, :manifests_at, :quiet_breath, :pell_cut
