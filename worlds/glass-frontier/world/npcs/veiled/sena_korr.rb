npc :sena_korr do
  name "Sena Korr"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Sena Korr carries furnace parts from Crowncut Refinery and Crucible to Five Landing and Fourth Bell House."
end

relate :rel_sena_korr_at_crowncut_refinery, :operates_in, :sena_korr, :crowncut_refinery
relate :rel_sena_korr_at_crucible, :operates_in, :sena_korr, :crucible
relate :rel_sena_korr_at_five_landing, :operates_in, :sena_korr, :five_landing
relate :rel_sena_korr_at_fourth_bell_house, :operates_in, :sena_korr, :fourth_bell_house
