npc :lira_accord do
  name "Lira Accord"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Lira Accord carries sealed petitions between Accord Shore, Ashenmaw, Ashvane, and Avar."
end

relate :rel_lira_accord_at_accord_shore, :operates_in, :lira_accord, :accord_shore
relate :rel_lira_accord_at_ashenmaw, :operates_in, :lira_accord, :ashenmaw
relate :rel_lira_accord_at_ashvane, :operates_in, :lira_accord, :ashvane
relate :rel_lira_accord_at_avar, :operates_in, :lira_accord, :avar
