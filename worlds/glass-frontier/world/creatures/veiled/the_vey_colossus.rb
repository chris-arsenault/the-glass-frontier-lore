creature :the_vey_colossus do
  name "The Vey Colossus"
  summary "The Vey Colossus is a bell-lung colossus sleeping around an air shaft between Vey and Lung Three. It exhales whenever the habitat frame bends."
  subkind :creature
  type_of :bell_lung_colossus
  status :complete
  prominence :marginal
  veiled "The Vey Colossus sleeps around a Vey air shaft and exhales whenever the habitat's frame bends."
end

relate :rel_bell_lung_colossus_in_vey, :inhabits, :the_vey_colossus, :vey
relate :rel_bell_lung_colossus_in_lung_three, :inhabits, :the_vey_colossus, :lung_three
