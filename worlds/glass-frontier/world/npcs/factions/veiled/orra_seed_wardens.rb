faction :orra_seed_wardens do
  name "Orra Seed Wardens"
  summary "The Orra Seed Wardens are a seed-protection faction that escorts revived strains between Orra and Seren."
  subkind :faction
  type_of :living_cargo_stewardship
  belongs_to :culture, :custodial_standing
  status :complete
  prominence :marginal
  veiled "Orra Seed Wardens escort revived strains to Seren and destroy any duplicate that flowers out of season."
end

relate :rel_orra_seed_wardens_at_orra, :operates_in, :orra_seed_wardens, :orra
relate :rel_orra_seed_wardens_at_seren, :operates_in, :orra_seed_wardens, :seren
