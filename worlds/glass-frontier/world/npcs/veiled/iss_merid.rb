npc :iss_merid do
  name "Iss Merid"
  subkind :official
  status :complete
  prominence :marginal
  veiled "Iss Merid reconciles Issel docking claims with the certified copies held at Hab Meridian."
end

relate :rel_iss_merid_at_issel, :operates_in, :iss_merid, :issel
relate :rel_iss_merid_at_hab_meridian, :operates_in, :iss_merid, :hab_meridian
