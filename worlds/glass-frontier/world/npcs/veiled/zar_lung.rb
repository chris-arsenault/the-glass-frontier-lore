npc :zar_lung do
  name "Zar'lung"
  subkind :specialist
  status :complete
  prominence :marginal
  veiled "Zar'lung records pump harmonics in Lowbank, Lumenshard, Lung Three, and Mareth."
end

relate :rel_zar_lung_at_lowbank, :operates_in, :zar_lung, :lowbank
relate :rel_zar_lung_at_lumenshard, :operates_in, :zar_lung, :lumenshard
relate :rel_zar_lung_at_lung_three, :operates_in, :zar_lung, :lung_three
relate :rel_zar_lung_at_mareth, :operates_in, :zar_lung, :mareth
