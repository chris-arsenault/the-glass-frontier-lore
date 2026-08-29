conflict :orra_seed_claim do
  name "The Orra Seed Claim"
  summary "The Orra Seed Claim is a dispute between Orra growers and Seren archivists over seeds revived from a mislabeled cold drawer."
  subkind :dispute
  type_of :resource_dispute
  status :complete
  prominence :marginal
  veiled "Orra growers and Seren archivists contest ownership of seeds revived from a mislabeled cold drawer."
end

relate :rel_orra_seed_claim_at_orra, :manifests_at, :orra_seed_claim, :orra
relate :rel_orra_seed_claim_at_seren, :manifests_at, :orra_seed_claim, :seren
