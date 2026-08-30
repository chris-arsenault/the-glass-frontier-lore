npc :holl_hollow_climber do
  name "The Holl Hollow Climber"
  summary "The Holl Hollow Climber remains upright when a ring habitat changes spin between adjoining decks."
  type_of :hollow_balance
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "The Holl Hollow Climber remains upright when a ring habitat changes spin between adjoining decks."
end

relate :rel_hollow_balance_at_holl, :manifests_at, :holl_hollow_climber, :holl
relate :rel_hollow_balance_at_five_landing, :manifests_at, :holl_hollow_climber, :five_landing
relate :rel_hollow_balance_at_eleven, :manifests_at, :holl_hollow_climber, :eleven
