npc :chel_narik do
  name "Chel'narik"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Chel'narik records Avar pressure changes beside cultured Xyloathax nerve strands."
end

relate :rel_chel_narik_at_xyloathax, :operates_in, :chel_narik, :xyloathax
relate :rel_chel_narik_at_avar, :operates_in, :chel_narik, :avar
