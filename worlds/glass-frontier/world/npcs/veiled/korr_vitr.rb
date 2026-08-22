npc :korr_vitr do
  name "Korr Vitr"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Korr Vitr fits Ashvane furnace shutters with heat glass cast in Vitrael."
end

relate :rel_korr_vitr_at_vitrael, :operates_in, :korr_vitr, :vitrael
relate :rel_korr_vitr_at_ashvane, :operates_in, :korr_vitr, :ashvane
