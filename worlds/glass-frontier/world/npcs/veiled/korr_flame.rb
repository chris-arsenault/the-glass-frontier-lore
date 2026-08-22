npc :korr_flame do
  name "Korr Flame"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Korr Flame carries kiln-start coals from Pyre to Cinder Gap in a double-walled ceramic box."
end

relate :rel_korr_flame_at_pyre, :operates_in, :korr_flame, :pyre
relate :rel_korr_flame_at_cinder_gap, :operates_in, :korr_flame, :cinder_gap
