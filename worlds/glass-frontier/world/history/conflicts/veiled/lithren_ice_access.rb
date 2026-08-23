conflict :lithren_ice_access do
  name "Lithren Ice Access"
  subkind :dispute
  status :complete
  prominence :marginal
  veiled "Lithren cutters and Pelhari scholars contest which archive ice may be melted for water during shortages."
end

relate :rel_lithren_ice_access_at_lithren, :manifests_at, :lithren_ice_access, :lithren
relate :rel_lithren_ice_access_at_pelhari, :manifests_at, :lithren_ice_access, :pelhari
