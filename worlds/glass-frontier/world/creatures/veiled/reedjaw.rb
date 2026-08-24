creature :reedjaw do
  name "Reedjaw"
  summary "Reedjaws are Dovra animals found around Lowbank and the Reed Door. They strip waterweed from barges and bite through poles used to drive them off."
  subkind :animal
  status :complete
  prominence :marginal
  veiled "Reedjaws strip Dovra barges of waterweed and bite through any pole used to drive them off."
end

relate :rel_reedjaw_in_dovra, :inhabits, :reedjaw, :dovra
relate :rel_reedjaw_in_lowbank, :inhabits, :reedjaw, :lowbank
relate :rel_reedjaw_in_the_reed_door, :inhabits, :reedjaw, :the_reed_door
