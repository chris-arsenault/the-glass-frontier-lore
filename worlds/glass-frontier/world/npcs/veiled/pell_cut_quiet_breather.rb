npc :pell_cut_quiet_breather do
  name "The Pell Cut Quiet Breather"
  summary "The Pell Cut Quiet Breather works beside sound-sensitive glasswurms without waking the colony."
  type_of :quiet_breath
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Pell Cut Quiet Breather works beside sound-sensitive glasswurms without waking the colony."
end
relate :rel_quiet_breath_at_the_dry_net, :manifests_at, :pell_cut_quiet_breather, :the_dry_net
relate :rel_quiet_breath_at_pell_cut, :manifests_at, :pell_cut_quiet_breather, :pell_cut
