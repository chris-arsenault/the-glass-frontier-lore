ability :hollow_balance do
  name "Hollow Balance"
  summary "Hollow Balance is an innate sense of changing spin that keeps climbers upright between adjoining ring-habitat decks."
  subkind :innate_ability
  status :complete
  prominence :marginal
  veiled "Hollow-balanced climbers remain upright when a ring habitat changes spin between adjoining decks."
end

relate :rel_hollow_balance_at_holl, :manifests_at, :hollow_balance, :holl
relate :rel_hollow_balance_at_five_landing, :manifests_at, :hollow_balance, :five_landing
relate :rel_hollow_balance_at_eleven, :manifests_at, :hollow_balance, :eleven
