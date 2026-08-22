npc :marn_glass do
  name "Marn Glass"
  subkind :worker
  status :complete
  prominence :marginal
  veiled "Marn Glass repairs docking alarms at Five Landing, the Folded Annex, Fourth Bell House, and Glasswake."
end

relate :rel_marn_glass_at_five_landing, :operates_in, :marn_glass, :five_landing
relate :rel_marn_glass_at_folded_annex, :operates_in, :marn_glass, :folded_annex
relate :rel_marn_glass_at_fourth_bell_house, :operates_in, :marn_glass, :fourth_bell_house
relate :rel_marn_glass_at_glasswake, :operates_in, :marn_glass, :glasswake
