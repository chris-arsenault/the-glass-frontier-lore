creature :bell_lung_colossus do
  name "Bell-Lung Colossus"
  summary "The bell-lung colossus is a creature sleeping around an air shaft between Vey and Lung Three. It exhales whenever the habitat frame bends."
  subkind :creature
  status :complete
  prominence :marginal
  veiled "The bell-lung colossus sleeps around a Vey air shaft and exhales whenever the habitat's frame bends."
end

relate :rel_bell_lung_colossus_in_vey, :inhabits, :bell_lung_colossus, :vey
relate :rel_bell_lung_colossus_in_lung_three, :inhabits, :bell_lung_colossus, :lung_three
