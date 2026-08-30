artifact :orra_seed_bell do
  name "The Orra Seed Bell"
  summary "The Orra Seed Bell is an orchard instrument used at Orra and Seren. Striking its cracked rim under running water splits dormant orchard kernels."
  subkind :instrument
  status :complete
  prominence :marginal
  veiled "The Orra Seed Bell makes dormant orchard kernels split when its cracked rim is struck under running water."
end

relate :rel_orra_seed_bell_at_orra, :operates_in, :orra_seed_bell, :orra
relate :rel_orra_seed_bell_at_seren, :operates_in, :orra_seed_bell, :seren
