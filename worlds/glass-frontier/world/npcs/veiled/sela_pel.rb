npc :sela_pel do
  name "Sela Pel"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Sela Pel compares Pelhari pressure scars with the buckled frame sections recovered from Vastine."
end

relate :rel_sela_pel_at_pelhari, :operates_in, :sela_pel, :pelhari
relate :rel_sela_pel_at_vastine, :operates_in, :sela_pel, :vastine
