npc :aven_campus do
  name "Aven Campus"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Aven Campus restores Old Campus bell scores in a workroom beneath Fourth Bell House."
end

relate :rel_aven_campus_at_old_campus, :operates_in, :aven_campus, :old_campus
relate :rel_aven_campus_at_fourth_bell_house, :operates_in, :aven_campus, :fourth_bell_house
