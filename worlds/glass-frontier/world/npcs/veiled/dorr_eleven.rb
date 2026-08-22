npc :dorr_eleven do
  name "Dorr Eleven"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Dorr Eleven compares brace echoes in Eleven with the load knocks carried through Rib."
end

relate :rel_dorr_eleven_at_rib, :operates_in, :dorr_eleven, :rib
relate :rel_dorr_eleven_at_eleven, :operates_in, :dorr_eleven, :eleven
