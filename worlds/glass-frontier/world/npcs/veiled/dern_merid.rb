npc :dern_merid do
  name "Dern Merid"
  subkind :courier
  status :complete
  prominence :marginal
  veiled "Dern Merid brings Glasswake salvage tallies to Hab Meridian and returns with certified weights."
end

relate :rel_dern_merid_at_hab_meridian, :operates_in, :dern_merid, :hab_meridian
relate :rel_dern_merid_at_glasswake, :operates_in, :dern_merid, :glasswake
