npc :marn_bell do
  name "Marn Bell"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Marn Bell repairs transfer alarms at Far Bell, Five Landing, the Folded Annex, and Fourth Bell House."
end

relate :rel_marn_bell_at_far_bell, :operates_in, :marn_bell, :far_bell
relate :rel_marn_bell_at_five_landing, :operates_in, :marn_bell, :five_landing
relate :rel_marn_bell_at_folded_annex, :operates_in, :marn_bell, :folded_annex
relate :rel_marn_bell_at_fourth_bell_house, :operates_in, :marn_bell, :fourth_bell_house
