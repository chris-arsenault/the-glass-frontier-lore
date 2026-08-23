conflict :orra_seed_claim do
  name "The Orra Seed Claim"
  subkind :dispute
  status :complete
  prominence :marginal
  veiled "Orra growers and Seren archivists contest ownership of seeds revived from a mislabeled cold drawer."
end

relate :rel_orra_seed_claim_at_orra, :manifests_at, :orra_seed_claim, :orra
relate :rel_orra_seed_claim_at_seren, :manifests_at, :orra_seed_claim, :seren
