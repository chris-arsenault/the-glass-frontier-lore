rumor :dry_net_breath do
  name "The Dry Net Breath"
  summary "The Dry Net Breath is a salvager's rumor that warm breath leaves an open vent when someone reads from an unrecovered roll."
  subkind :rumor
  status :complete
  prominence :marginal
  veiled "Dry Net salvagers leave one vent unsealed because warm breath emerges when crews read from the unrecovered roll."
end

relate :rel_dry_net_breath_at_the_dry_net, :manifests_at, :dry_net_breath, :the_dry_net
