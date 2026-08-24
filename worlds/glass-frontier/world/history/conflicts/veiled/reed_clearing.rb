conflict :reed_clearing do
  name "The Reed Clearing"
  summary "The Reed Clearing is a Lowbank ferry campaign against the dense growth choking Dovra's old channels."
  subkind :campaign
  status :complete
  prominence :marginal
  veiled "The Reed Clearing pits Lowbank ferry crews against the dense growth choking Dovra's old channels."
end

relate :rel_reed_clearing_at_dovra, :manifests_at, :reed_clearing, :dovra
relate :rel_reed_clearing_at_lowbank, :manifests_at, :reed_clearing, :lowbank
